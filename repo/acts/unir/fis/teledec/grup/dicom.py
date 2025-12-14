import pydicom, matplotlib, numpy, os
import matplotlib.pyplot, matplotlib.widgets
from tkinter import filedialog
from matplotlib.patches import Rectangle
global rutaArchivo
rutaArchivo = ""
class Dicom:
    """
    Clase con varios métodos:
        aplicarVentana:
            Función que aplica la ventana a la imagen, según la entrada del usuario.
            Argumentos:
                archivoDicom: el archivoDicom procesado y devuelto en tipo FileDataset
                windowCenter: también llamado Level en algunos programas.
                windowWidth: también llamado Window en algunos programas.
            Funcionamiento:
                Las variables minWindow y maxWindow definen la ventana para que mediante el método clip del módulo NumPy se limiten los valores de la matriz de píxeles. Si la anchura de ventana es 0, la matriz se anula para evitar errores de división.
            Retorno:
                Retorna un array con la imagen que se debe representar.
        cargarDicom:
            Función para cargar el archivo DICOM.
            Sin argumentos.
            Funcionamiento:
                La función abre, mediante un objeto filedialog de TKinter, un selector de archivo para seleccionar el archivo DICOM. Su directorio de inicio es la carpeta personal del usuario, habitualmente siguiendo la ruta /home/$USER. Comprueba la correcta apertura del archivo.
            Retorno:
                La función retorna una cadena de caracteres con la ruta al archivo y la imprime por la consola.
        aplicarUmbral:
            Función para aplicar el umbral a un archivo DICOM.
            Argumentos:
                archivoDicom: el archivo DICOM leído por Python, con el tipo FileDataset
                nuevoUmbral: el valor del umbral que introduce el usuario.
            Funcionamiento:
                Se aplica la condición para saber si el pixel tiene una intensidad mayor al umbral, en cuyo caso se devuelve 1. En caso contrario se devuelve 0. Se multiplica el valor por 255 para dar la intensidad máxima.
    """
    def aplicarVentana(archivoDicom, windowCenter, windowWidth):
        minWindow = windowCenter - windowWidth / 2
        maxWindow = windowCenter + windowWidth / 2
        imagenRepresentar = numpy.clip(archivoDicom, minWindow, maxWindow)
    # Para evitar divisiones por 0 se introduce la condicional.
        if windowWidth == 0:
            imagenRepresentar = numpy.zeros_like(imagenRepresentar)
        else:
            imagenRepresentar = (imagenRepresentar - minWindow) / (maxWindow - minWindow)
        return imagenRepresentar

    def cargarDicom(): # carga Dicom
        rutaArchivo = filedialog.askopenfilename(initialdir=os.path.expanduser('~'))
        if rutaArchivo:
            print("Archivo seleccionado: ", rutaArchivo)
            return rutaArchivo
        else:
            return
    def aplicarUmbral(archivoDicom, nuevoUmbral):
        pixelArray = archivoDicom.pixel_array
        pixelArrayModificado = (pixelArray > nuevoUmbral) * 255 # Si la condición se cumple, devuelve 1 -> Intensidad 255 (máxima).
        # Si no, 0 -> Sin intensidad.
        return pixelArrayModificado
    ##
# Muestra figura y aplica ventana
    #Leemos el DICOM

def main():
    try:
        archivoDicom = pydicom.dcmread(Dicom.cargarDicom()) # Leemos el DICOM y gestionamos el error.
        print("Archivo DICOM cargado.")
    except Exception as e:
        print(f"Error de lectura del archivo DICOM: ", e)


    pixelArray = archivoDicom.pixel_array
    # Escala. Miramos si viene en el archivo.
    if 'RescaleIntercept' in archivoDicom and 'RescaleSlope' in archivoDicom:
        rescaleIntercept = archivoDicom.RescaleIntercept
        rescaleSlope = archivoDicom.RescaleSlope
        pixelArray = pixelArray * rescaleSlope + rescaleIntercept
        print(f"Se aplicó la escala con pendiente {rescaleSlope} y ordenada origen {rescaleIntercept}.")  # Encontrada la escala en el archivo. Así podemos cambiar la unidad a HU, propia de TCs.
        print("Píxeles en unidades Hounsfield (HU)")
    else:
        print("No se ha encontrado la escala. Utilizando píxeles brutos.")
    # Miramos Window y Level desde el DICOM. Traerá unos valores por defecto que permitirán ver bien la imagen.
    if 'WindowCenter' in archivoDicom and 'WindowWidth' in archivoDicom:
        level0 = archivoDicom.WindowCenter[0] if  isinstance(archivoDicom.WindowCenter, pydicom.multival.MultiValue) else archivoDicom.WindowCenter
        window0 = archivoDicom.WindowCenter[0] if  isinstance(archivoDicom.WindowCenter, pydicom.multival.MultiValue) else archivoDicom.WindowCenter
        print(f"Usando valores de level ({level0}) y window ({window0}) del archivo.")
    else:
        level0 = 40.0 # Ponemos unos por defecto...
        window0 = 400.0
        print("No se encuentran datos de level y window. Se usan valores por defecto. Level 40 y window 400.")
    level = level0
    window = window0
    nombreFigura = "Visor DICOM"
    figura, ejes = matplotlib.pyplot.subplots(1,2, figsize=(14,7), num=nombreFigura)
    ejeImagen = ejes[0]
    ejeHistograma = ejes[1]
    # Evitar superposición de controles con padding
    figura.subplots_adjust(bottom=0.25)
    # 
    imagen = ejeImagen.imshow(Dicom.aplicarVentana(pixelArray, level, window), cmap='gray')
    ejeImagen.axis('off') # Para que se vea más limpia el output
    ejeImagen.set_title(f"Imagen DICOM\n Level : {level:.0f}, Window: {window:.0f}")
    n_bins = 256  # para el histograma
    hist_values, bin_edges = numpy.histogram(pixelArray.flatten(), bins=n_bins)
    bin_centers = (bin_edges[:-1] + bin_edges[1:]) / 2
    ejeHistograma.plot(bin_centers, hist_values, color='blue', linewidth=1.5)
    ejeHistograma.set_title("Histograma de píxeles")
    ejeHistograma.set_xlabel("Valor del Píxel o HU")
    ejeHistograma.set_ylabel("Frecuencia")
    ejeHistograma.grid(True, linestyle='--', alpha=0.7)
    ejeHistograma.set_facecolor('#f5f5f5')
    rectanguloVentana = Rectangle((level - window / 2, 0),
                                window, ejeHistograma.get_ylim()[1],
                                facecolor='red', alpha=0.3, edgecolor='red', linewidth=1, linestyle='--')
    ejeHistograma.add_patch(rectanguloVentana)
    # Sliders
    colorEje = '#f0f0f0'
    ejeLevel = matplotlib.pyplot.axes([0.15, 0.17, 0.65, 0.03], facecolor=colorEje) # Posiciones relativas
    ejeWindow = matplotlib.pyplot.axes([0.15, 0.12, 0.65, 0.03], facecolor=colorEje)
    ejeUmbral = matplotlib.pyplot.axes([0.15, 0.07, 0.65, 0.03], facecolor=colorEje)
    minPixel = pixelArray.min()
    maxPixel = pixelArray.max()
    sliderLevel = matplotlib.widgets.Slider(ejeLevel, 'Level',
                                minPixel - (maxPixel - minPixel) * 0.5,
                                maxPixel + (maxPixel - minPixel) * 0.5,
                                valinit=level0, valfmt="%0.0f")
    sliderWindow = matplotlib.widgets.Slider(ejeWindow, 'Window',
                                1,  # La dejamos en 1 para evitar un posible 0, daría error
                                (maxPixel - minPixel) * 2,
                                valinit=window0, valfmt="%0.0f")
    sliderUmbral = matplotlib.widgets.Slider(ejeUmbral, 'Umbral', 1,255, valinit=100, valfmt="%0d")

    def actualizarLevelWindow(val):
    # Conseguir los valores de los sliders.
        nuevoLevel = sliderLevel.val
        nuevaVentana = sliderWindow.val

    # Modificamos la imagen llamando al método.
        imagen.set_data(Dicom.aplicarVentana(pixelArray, nuevoLevel, nuevaVentana))
    # Modificamos también el título
        ejeImagen.set_title(f"DICOM Image\nWC: {nuevoLevel:.0f}, WW: {nuevaVentana:.0f}")

        # Modificamos el rectángulo del histograma para que coja los valores

        rectanguloVentana.set_x(nuevoLevel - nuevaVentana / 2)
        rectanguloVentana.set_width(nuevaVentana)

    # Hacemos un redraw para que aparezcan los cambios
        figura.canvas.draw_idle()
    
    def actualizarUmbral(val):
        nuevoUmbral = sliderUmbral.val # Cogemos el valor
        imagen.set_data(Dicom.aplicarUmbral(archivoDicom, nuevoUmbral)) # Llamada a la función
        figura.canvas.draw_idle() # Redraw para verlo

    ####
    sliderLevel.on_changed(actualizarLevelWindow) # Hook ante cambio de sliders. Llamamos a las funciones descritas anteriormente.
    sliderWindow.on_changed(actualizarLevelWindow)
    sliderUmbral.on_changed(actualizarUmbral)

    # --- 7. Display the Plot ---
    matplotlib.pyplot.show() # Para que aparezca la ventana.

if __name__ == "__main__":
    main() # Para generar el punto de entrada a la app, al haber varias funciones.