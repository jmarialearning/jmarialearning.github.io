import pydicom, matplotlib, numpy, os
import matplotlib.pyplot, matplotlib.widgets
import tkinter
from tkinter import font, ttk, filedialog, messagebox
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
