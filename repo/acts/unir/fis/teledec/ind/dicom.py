import pydicom, matplotlib, numpy, os
import matplotlib.pyplot, matplotlib.widgets
import tkinter, tkinter.ttk
from tkinter import filedialog, font
from matplotlib.patches import Rectangle
from PIL import Image, ImageTk, ImageFilter
import cv2
import skimage
import scipy.ndimage
global rutaArchivo
rutaArchivo = ""
class Dicom:
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
    def mostrarInfo(archivoDicom):
        root = tkinter.Tk()
        paddingDefecto = 10
        form = tkinter.ttk.Frame(root, padding=(paddingDefecto,paddingDefecto,paddingDefecto,paddingDefecto))
        root.title("Información DICOM")
        form.pack()
        botonSalir = tkinter.ttk.Button(form, text="Salir", command=root.destroy)
        labelInfo = tkinter.Text(form)
        labelInfo.insert('1.0', archivoDicom)
        labelInfo.pack(side='top', fill='both', expand=True)
        labelInfo.config(state=tkinter.DISABLED)
        botonSalir.pack(fill='x',side='bottom', padx=paddingDefecto, pady=paddingDefecto)
        root.mainloop()
    def aplicarGaussiano(archivoDicom, nuevoSigma):
        pixelArray = archivoDicom.pixel_array
        kernel = (nuevoSigma, nuevoSigma)
        arrayModificado = skimage.filters.gaussian(pixelArray, kernel, preserve_range=True)
        matplotlib.pyplot.figure(figsize=(10,10))
        matplotlib.pyplot.imshow(arrayModificado, cmap="gray")
        matplotlib.pyplot.show()

    def aplicarMediana(archivoDicom, nuevoSigma):
        pixelArray = archivoDicom.pixel_array
        kernel = (nuevoSigma, nuevoSigma)
        arrayModificado = skimage.filters.median(pixelArray)
        matplotlib.pyplot.figure(figsize=(10,10))
        matplotlib.pyplot.imshow(arrayModificado, cmap="gray")
        matplotlib.pyplot.show()
    def aplicarTraslacion(archivoDicom, pixelesX, pixelesY):
        pixelArray = archivoDicom.pixel_array
        pixelArrayModificado = scipy.ndimage.shift(pixelArray, pixelesX)
        matplotlib.pyplot.figure(figsize=(10,10))
        matplotlib.pyplot.imshow(pixelArrayModificado, cmap="gray")
        matplotlib.pyplot.show()
    def aplicarEscalado(archivoDicom, escala):
        pixelArray = archivoDicom.pixel_array
        pixelArrayModificado = scipy.ndimage.zoom(pixelArray, escala)
        matplotlib.pyplot.figure(figsize=(10,10))
        matplotlib.pyplot.imshow(pixelArrayModificado, cmap="gray")
        matplotlib.pyplot.show()
        
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
    figura.subplots_adjust(bottom=0.45)
    # 
    imagen = ejeImagen.imshow(Dicom.aplicarVentana(pixelArray, level, window), cmap='gray')
    ejeImagen.axis('off') # Para que se vea más limpia el output
    ejeImagen.set_title(f"Imagen DICOM\n Level : {level:.0f}, Window: {window:.0f}")
    # Sacamos la información por la consola. Es demasiada para la ventana.
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
    ejeLevel = matplotlib.pyplot.axes([0.15, 0.37, 0.65, 0.03], facecolor=colorEje) # Posiciones relativas
    ejeWindow = matplotlib.pyplot.axes([0.15, 0.32, 0.65, 0.03], facecolor=colorEje)
    ejeUmbral = matplotlib.pyplot.axes([0.15, 0.27, 0.65, 0.03], facecolor=colorEje)
    ejeSigma = matplotlib.pyplot.axes([0.15, 0.22, 0.65, 0.03], facecolor=colorEje)
    ejeInfo = matplotlib.pyplot.axes([0.15, 0.17, 0.163, 0.03], facecolor=colorEje)
    ejeGaussiano = matplotlib.pyplot.axes([0.314, 0.17, 0.163, 0.03], facecolor=colorEje)
    ejeMediana = matplotlib.pyplot.axes([0.477, 0.17, 0.163, 0.03], facecolor=colorEje)
    ejeSNR = matplotlib.pyplot.axes([0.64, 0.17, 0.163, 0.03], facecolor=colorEje)
    ejeCuadroX = matplotlib.pyplot.axes([0.15, 0.12, 0.217, 0.03], facecolor=colorEje)
    ejeEscala = matplotlib.pyplot.axes([0.368, 0.12, 0.217, 0.03], facecolor=colorEje)
    ejeBotonEscala = matplotlib.pyplot.axes([0.585, 0.12, 0.217, 0.03], facecolor=colorEje)
    ejeBotonTraslacion = matplotlib.pyplot.axes([0.15, 0.07, 0.65, 0.03], facecolor=colorEje)
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
    sliderSigma = matplotlib.widgets.Slider(ejeSigma, 'Sigma', 1, 49, valinit=1, valfmt="%0d", valstep=2)
    botonInfo = matplotlib.widgets.Button(ejeInfo, "Información...")
    botonGaussiano = matplotlib.widgets.Button(ejeGaussiano, "Aplicar Gaussiano")
    botonMediana = matplotlib.widgets.Button(ejeMediana, "Aplicar Mediana")
    botonSNR = matplotlib.widgets.Button(ejeSNR, "Calcular SNR")
    cuadroX = matplotlib.widgets.Slider(ejeCuadroX, "X", 1, 200, valinit=1, valfmt="%0d", valstep=10)
    escala = matplotlib.widgets.Slider(ejeEscala, "Escala", 0, 1, valinit=1, valfmt="%0.0f", valstep= 0.1)
    botonEscala = matplotlib.widgets.Button(ejeBotonEscala, "Modificar resolución")
    botonTraslacion = matplotlib.widgets.Button(ejeBotonTraslacion, "Aplicar Traslación")

    def actualizarLevelWindow(val):
    # Conseguir los valores de los sliders.
        nuevoLevel = sliderLevel.val
        nuevaVentana = sliderWindow.val

    # Modificamos la imagen llamando al método.
        imagen.set_data(Dicom.aplicarVentana(pixelArray, nuevoLevel, nuevaVentana))
    # Modificamos también el título
        ejeImagen.set_title(f"Imagen DICOM\nLevel: {nuevoLevel:.0f}, Window: {nuevaVentana:.0f}")

        # Modificamos el rectángulo del histograma para que coja los valores
        rectanguloVentana.set_x(nuevoLevel - nuevaVentana / 2)
        rectanguloVentana.set_width(nuevaVentana)

    # Hacemos un redraw para que aparezcan los cambios
        figura.canvas.draw_idle()
    
    def actualizarUmbral(val):
        nuevoUmbral = sliderUmbral.val # Cogemos el valor
        imagen.set_data(Dicom.aplicarUmbral(archivoDicom, nuevoUmbral)) # Llamada a la función
        figura.canvas.draw_idle() # Redraw para verlo
    def actualizarGaussiano(val):
        nuevoSigma = sliderSigma.val
        imagen.set_data(Dicom.aplicarGaussiano(archivoDicom, nuevoSigma))
        figura.canvas.draw_idle()
    def actualizarMediana(val):
        nuevoSigma = sliderSigma.val
        imagen.set_data(Dicom.aplicarMediana(archivoDicom, nuevoSigma))
        figura.canvas.draw_idle()
    def calcularSNR(archivoDicom):
        mediaArray = numpy.mean(pixelArray)
        desviacionArray = numpy.std(pixelArray)
        snr = numpy.where(desviacionArray == 0, 0, mediaArray / desviacionArray)
        root = tkinter.Tk()
        paddingDefecto = 10
        form = tkinter.ttk.Frame(root, padding=(paddingDefecto,paddingDefecto,paddingDefecto,paddingDefecto))
        root.title("Valor SNR")
        form.pack()
        botonSalir = tkinter.ttk.Button(form, text="Salir", command=root.destroy)
        labelInfo = tkinter.Text(form)
        labelInfo.insert('1.0', snr)
        labelInfo.pack(side='top', fill='both', expand=True)
        labelInfo.config(state=tkinter.DISABLED)
        botonSalir.pack(fill='x',side='bottom', padx=paddingDefecto, pady=paddingDefecto)
        root.mainloop()
    def actualizarEscala(val):
        nuevaEscala = escala.val
        imagen.set_data(Dicom.aplicarEscalado(archivoDicom, nuevaEscala))
        figura.canvas.draw_idle()
    def actualizarTraslacion(val):
        pixelesX = cuadroX.val
        imagen.set_data(Dicom.aplicarTraslacion(archivoDicom, pixelesX, pixelesX))

    ####
    sliderLevel.on_changed(actualizarLevelWindow) # Hook ante cambio de sliders. Llamamos a las funciones descritas anteriormente.
    sliderWindow.on_changed(actualizarLevelWindow)
    sliderUmbral.on_changed(actualizarUmbral)
    botonInfo.on_clicked(lambda event: Dicom.mostrarInfo(archivoDicom))
    botonGaussiano.on_clicked(actualizarGaussiano)
    botonMediana.on_clicked(actualizarMediana)
    botonSNR.on_clicked(lambda event: calcularSNR(archivoDicom))
    botonEscala.on_clicked(actualizarEscala)
    botonTraslacion.on_clicked(actualizarTraslacion)

    # --- 7. Display the Plot ---
    matplotlib.pyplot.show() # Para que aparezca la ventana.

if __name__ == "__main__":
    main() # Para generar el punto de entrada a la app, al haber varias funciones.