import pydicom, matplotlib, numpy, os
import matplotlib.pyplot, matplotlib.widgets
import tkinter
from tkinter import font, ttk, filedialog, messagebox
from matplotlib.patches import Rectangle
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

# Muestra figura y aplica ventana
    #Leemos el DICOM

def main():
    try:
        archivoDicom = pydicom.dcmread(Dicom.cargarDicom())
        print("Archivo DICOM cargado.")
    except Exception as e:
        print(f"Error de lectura del archivo DICOM: ", e)


    pixelArray = archivoDicom.pixel_array
    # Escala. Miramos si viene en el archivo.
    if 'RescaleIntercept' in archivoDicom and 'RescaleSlope' in archivoDicom:
        rescaleIntercept = archivoDicom.RescaleIntercept
        recaleSlope = archivoDicom.RescaleSlope
        pixelArray = pixelArray * recaleSlope + rescaleIntercept
        print("Se aplicó la escala con pendiente {rescaleSlope} y ordenada origen {rescaleIntercept}.")  
        print("Píxeles en unidades Hounsfield (HU)")
    else:
        print("No se ha encontrado la escala. Utilizando píxeles brutos.")
    # Miramos Window y Level desde el DICOM. Traerá unos valores por defecto que permitirán ver bien la imagen.
    if 'WindowCenter' in archivoDicom and 'WindowWidth' in archivoDicom:
        level0 = archivoDicom.WindowCenter[0] if  isinstance(archivoDicom.WindowCenter, pydicom.multival.MultiValue) else archivoDicom.WindowCenter
        window0 = archivoDicom.WindowCenter[0] if  isinstance(archivoDicom.WindowCenter, pydicom.multival.MultiValue) else archivoDicom.WindowCenter
        print(f"Usando valores de level ({level0}) y window ({window0}) del archivo.")
    else:
        level0 = 40.0
        window0 = 400.0
        print("No se encuentran datos de level y window. Se usan valores por defecto. Level 40 y window 400.")
    level = level0
    window = window0
    nombreFigura = "Visor DICOM"
    figura, ejes = matplotlib.pyplot.subplots(1,2, figsize=(14,7), num=nombreFigura)
    ejeImagen = ejes[0]
    ejeHistograma = ejes[1]
    # Evitar superposición de controles
    figura.subplots_adjust(bottom=0.25)
    # 
    imagen = ejeImagen.imshow(Dicom.aplicarVentana(pixelArray, level, window), cmap='gray')
    ejeImagen.axis('off')
    ejeImagen.set_title(f"Imagen DICOM\n Level : {level:.0f}, Window: {window:.0f}")
    n_bins = 256  # Number of bins for the histogram
    hist_values, bin_edges = numpy.histogram(pixelArray.flatten(), bins=n_bins)
    bin_centers = (bin_edges[:-1] + bin_edges[1:]) / 2
    ejeHistograma.plot(bin_centers, hist_values, color='blue', linewidth=1.5)
    ejeHistograma.set_title("Histograma de píxeles")
    ejeHistograma.set_xlabel("Valor del Píxel o HU")
    ejeHistograma.set_ylabel("Frecuencia")
    ejeHistograma.grid(True, linestyle='--', alpha=0.7)
    ejeHistograma.set_facecolor('#f5f5f5') # Light grey background for the histogram
    rectanguloVentana = Rectangle((level - window / 2, 0),
                                window, ejeHistograma.get_ylim()[1],
                                facecolor='red', alpha=0.3, edgecolor='red', linewidth=1, linestyle='--')
    ejeHistograma.add_patch(rectanguloVentana)
    # Sliders
    colorEje = '#f0f0f0'
    ejeLevel = matplotlib.pyplot.axes([0.15, 0.12, 0.65, 0.03], facecolor=colorEje) # Window Center slider position
    ejeWindow = matplotlib.pyplot.axes([0.15, 0.07, 0.65, 0.03], facecolor=colorEje) # Window Width slider position
    minPixel = pixelArray.min()
    maxPixel = pixelArray.max()
    sliderLevel = matplotlib.widgets.Slider(ejeLevel, 'Window Center',
                                minPixel - (maxPixel - minPixel) * 0.5,
                                maxPixel + (maxPixel - minPixel) * 0.5,
                                valinit=level0, valfmt="%0.0f")
    sliderWindow = matplotlib.widgets.Slider(ejeWindow, 'Window Width',
                                1,  # Minimum width to avoid division by zero
                                (maxPixel - minPixel) * 2, # Max width can be larger than data range
                                valinit=window0, valfmt="%0.0f")

    def update(val):
    # Retrieve the current values from the sliders.
        nuevoLevel = sliderLevel.val
        nuevaVentana = sliderWindow.val

    # Update the image data with the new window/level settings.
        imagen.set_data(Dicom.aplicarVentana(pixelArray,    nuevoLevel, nuevaVentana))
    # Update the image title to reflect the current window/level.
        ejeImagen.set_title(f"DICOM Image\nWC: {nuevoLevel:.0f}, WW: {nuevaVentana:.0f}")

    # Update the position and width of the rectangle on the histogram
    # to match the new window/level.
        rectanguloVentana.set_x(nuevoLevel - nuevaVentana / 2)
        rectanguloVentana.set_width(nuevaVentana)

    # Redraw the canvas to reflect the changes.
        figura.canvas.draw_idle()
    sliderLevel.on_changed(update)
    sliderWindow.on_changed(update)

    # --- 7. Display the Plot ---
    matplotlib.pyplot.show()

if __name__ == "__main__":
    main()