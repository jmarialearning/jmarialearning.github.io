import tkinter
from tkinter import font, ttk, filedialog, messagebox
import pydicom
from PIL import Image, ImageTk, ImageFilter
import os
global rutaArchivo
rutaArchivo = ""
global imagenOriginal
global imagenProcesada
class Dicom:
    def cargarDicom():
        rutaArchivo = filedialog.askopenfilename(initialdir=os.path.expanduser('~'))
        if rutaArchivo:
            print("Archivo seleccionado: ", rutaArchivo)
        archivoDicom = pydicom.dcmread(rutaArchivo)
        pixelArray = archivoDicom.pixel_array
        imagenDicom = Image.fromarray(pixelArray)
        fotoDicom = ImageTk.PhotoImage(imagenDicom)
        imagenOriginal.config(image=fotoDicom)
        imagenOriginal.image = fotoDicom
    def copiaOriginal():
        imagenProcesada.config(image=imagenOriginal.image)
        imagenProcesada.image = imagenOriginal.image
    def filtroGaussiano(cant):
        imagenManipulableDicom = ImageTk.getimage(imagenOriginal.image) # Cambio de tipo de objeto. Desde tipo ImageTk.PhotoImage a PIL.Image. Así podemos trabajar y transformar la imagen. Si no es una simple fotografía.
        imagenDicomProcesada = imagenManipulableDicom.filter(ImageFilter.GaussianBlur(cant))
        fotoProcesada = ImageTk.PhotoImage(imagenDicomProcesada)
        imagenProcesada.config(image=fotoProcesada)
        imagenProcesada.image = fotoProcesada
    def filtroLineal(cant):
        imagenManipulableDicom = ImageTk.getimage(imagenOriginal.image) # Cambio de tipo de objeto. Desde tipo ImageTk.PhotoImage a PIL.Image. Así podemos trabajar y transformar la imagen. Si no es una simple fotografía.
        imagenDicomProcesada = imagenManipulableDicom.filter(ImageFilter.BoxBlur(cant))
        fotoProcesada = ImageTk.PhotoImage(imagenDicomProcesada)
        imagenProcesada.config(image=fotoProcesada)
        imagenProcesada.image = fotoProcesada
    def hacerOriginal():
        imagenOriginal.config(image=imagenProcesada.image)
        imagenOriginal.image = imagenProcesada.image
    def filtroMediana(cant):
        imagenManipulableDicom = ImageTk.getimage(imagenOriginal.image) # Cambio de tipo de objeto. Desde tipo ImageTk.PhotoImage a PIL.Image. Así podemos trabajar y transformar la imagen. Si no es una simple fotografía.
        if cant % 2 == 0:
            messagebox.showerror("Visualizador y procesador de DICOM - Error", "Seleccione un valor impar")
        else:
            imagenDicomProcesada = imagenManipulableDicom.filter(ImageFilter.MedianFilter(size=int(cant)))
            fotoProcesada = ImageTk.PhotoImage(imagenDicomProcesada)
            imagenProcesada.config(image=fotoProcesada)
            imagenProcesada.image = fotoProcesada

# Diseño de interfaz con formato GRID de TKInter
raiz = tkinter.Tk()
raiz.geometry("1152x864")
raiz.title("Visualizador y procesador de imágenes")
raiz.resizable(width=False, height=False)
paddingDefecto = 10
form = ttk.Frame(raiz, padding=(paddingDefecto,paddingDefecto,paddingDefecto,paddingDefecto))
form.grid()
fuenteHIDPI = font.Font(size=18) # Para que se vea mejor en pantallas HiDPI

# Declaración de widgets Tkinter
labelOriginal = ttk.Label(form, text = "Imagen original", font=fuenteHIDPI)
labelProcesada = ttk.Label(form, text = "Imagen procesada", font=fuenteHIDPI)
raiz.rowconfigure(0, weight=1) # Responsivo
raiz.rowconfigure(2, weight=1) # Responsivo
raiz.columnconfigure(0, weight=1) # Responsivo
raiz.columnconfigure(1, weight=1) # Responsivo
raiz.columnconfigure(2, weight=1) # Responsivo
raiz.columnconfigure(3, weight=1) # Responsivo
raiz.rowconfigure(1, weight=6) # La segunda fila debe tener 6 veces más altura que las demás. Van las imagenes ahí.
botonSalir = ttk.Button(form, text="Salir", command=raiz.destroy)
botonAbrir = ttk.Button(form, text="Abrir imagen", command=Dicom.cargarDicom)
sigma = 1
sliderSigma = tkinter.Scale(form, from_=0, to=20, variable=sigma, orient="horizontal", length=250, tickinterval=5, resolution=1)
sliderSigma.set(sigma)
labelSliderSigma = ttk.Label(form, text="Sigma")
botonFiltroGaussiano = ttk.Button(form, text="Aplicar gaussiano", command=lambda: Dicom.filtroGaussiano(sliderSigma.get()))
botonFiltroLineal = ttk.Button(form, text="Aplicar lineal", command=lambda: Dicom.filtroLineal(sliderSigma.get()))
botonFiltroMediana = ttk.Button(form, text="Aplicar mediana", command=lambda: Dicom.filtroMediana(sliderSigma.get()))
botonQuitaFiltro = ttk.Button(form, text="Quitar filtros", command=Dicom.copiaOriginal)
botonCopiaProcesada = ttk.Button(form, text="Hacer original", command=Dicom.hacerOriginal)
imagenOriginal = ttk.Label(form)
imagenProcesada = ttk.Label(form)
# Situar en la geometría grid.
labelOriginal.grid(row=0, column=0, padx=paddingDefecto, pady=paddingDefecto, columnspan=2)
labelProcesada.grid(row=0, column=2, padx=paddingDefecto, pady=paddingDefecto, columnspan=2)
filaBotones = 2
botonAbrir.grid(row=filaBotones, column=0, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
botonSalir.grid(row=filaBotones, column=1, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
botonFiltroGaussiano.grid(row=filaBotones, column=2, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
botonFiltroLineal.grid(row=filaBotones+1, column=1, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
botonFiltroMediana.grid(row=filaBotones+1, column=2, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
botonQuitaFiltro.grid(row=filaBotones, column=3, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
imagenOriginal.grid(row=1, column=0, columnspan=2, padx=paddingDefecto, pady=paddingDefecto)
imagenProcesada.grid(row=1, column=2,columnspan=2, padx=paddingDefecto, pady=paddingDefecto)
sliderSigma.grid(row=filaBotones+1, column=0, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
labelSliderSigma.grid(row=filaBotones+2, column=0, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
botonCopiaProcesada.grid(row=filaBotones+1, column=3, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
raiz.mainloop()