import tkinter
from tkinter import font, ttk, filedialog
import pydicom
import numpy
import matplotlib
from PIL import Image, ImageTk
global rutaArchivo
rutaArchivo = ""
class Dicom:
    def cargarDicom():
        rutaArchivo = filedialog.askopenfilename()
    if rutaArchivo:
        print("Archivo seleccionado: ", rutaArchivo)


# Diseño de interfaz con formato GRID de TKInter
raiz = tkinter.Tk()
raiz.title("Visualizador y procesador de imágenes")
paddingDefecto = 10
form = ttk.Frame(raiz, padding=(paddingDefecto,paddingDefecto,paddingDefecto,paddingDefecto))
form.grid()
fuenteHIDPI = font.Font(size=18) # Para que se vea mejor en pantallas HiDPI

# Declaración de widgets Tkinter
labelOriginal = ttk.Label(form, text = "Imagen original", font=fuenteHIDPI)
labelProcesada = ttk.Label(form, text = "Imagen procesada", font=fuenteHIDPI)
raiz.rowconfigure(1, weight=6) # La segunda fila debe tener 6 veces más altura que las demás. Van las imagenes ahí.
botonSalir = ttk.Button(form, text="Salir", command=raiz.destroy)
botonAbrir = ttk.Button(form, text="Abrir imagen", command=Dicom.cargarDicom)
botonFiltro = ttk.Button(form, text="Aplicar Flitro")
botonQuitaFiltro = ttk.Button(form, text="Quitar filtros")
imagenOriginal = ttk.Label(form, )
imagenProcesada = ttk.Label(form, )
# Situar en la geometría grid.
labelOriginal.grid(row=0, column=0, padx=paddingDefecto, pady=paddingDefecto, columnspan=2)
labelProcesada.grid(row=0, column=2, padx=paddingDefecto, pady=paddingDefecto, columnspan=2)
filaBotones = 2
botonAbrir.grid(row=filaBotones, column=0, padx=paddingDefecto, pady=paddingDefecto)
botonSalir.grid(row=filaBotones, column=1, padx=paddingDefecto, pady=paddingDefecto)
botonFiltro.grid(row=filaBotones, column=2, padx=paddingDefecto, pady=paddingDefecto)
botonQuitaFiltro.grid(row=filaBotones, column=3, padx=paddingDefecto, pady=paddingDefecto)
imagenOriginal.grid(row=1, column=0, columnspan=2, padx=paddingDefecto, pady=paddingDefecto)
imagenProcesada.grid(row=1, column=2,columnspan=2, padx=paddingDefecto, pady=paddingDefecto)
raiz.mainloop()