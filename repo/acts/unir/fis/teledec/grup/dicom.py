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
    def hacerOriginal():
        imagenOriginal.config(image=imagenProcesada.image)
        imagenOriginal.image = imagenProcesada.image
    def validarUmbral(arg):
        if not(arg.isdigit()):
            messagebox.showerror("Error", "Comprueba la correcta escritura de un número, con el punto como separador decimal.")
        else:
            imagenManipulableDicom = ImageTk.getimage(imagenOriginal.image)
            imagenDicomProcesada = imagenManipulableDicom.point(lambda p: p > int(arg) and 255)
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
raiz.rowconfigure(0, weight=1) # Responsivo
raiz.rowconfigure(2, weight=1) # Responsivo
raiz.columnconfigure(0, weight=1) # Responsivo
raiz.columnconfigure(1, weight=1) # Responsivo
raiz.columnconfigure(2, weight=1) # Responsivo
raiz.columnconfigure(3, weight=1) # Responsivo
raiz.rowconfigure(1, weight=6) # La segunda fila debe tener 6 veces más altura que las demás. Van las imagenes ahí.
botonSalir = ttk.Button(form, text="Salir", command=raiz.destroy)
botonAbrir = ttk.Button(form, text="Abrir imagen", command=Dicom.cargarDicom)
botonQuitaFiltro = ttk.Button(form, text="Quitar filtros", command=Dicom.copiaOriginal)
botonCopiaProcesada = ttk.Button(form, text="Hacer original", command=Dicom.hacerOriginal)
imagenOriginal = ttk.Label(form)
imagenProcesada = ttk.Label(form)
treshold = 1
cuadroUmbral = ttk.Entry(form,textvariable=treshold)
cuadroUmbral.insert(0,treshold)
botonAplicaUmbral = ttk.Button(form, text="Aplicar umbral", command=lambda: Dicom.validarUmbral(cuadroUmbral.get())) # Recordar la llamada con expresiones lambda si hay que insertar argumentos.
# Situar en la geometría grid.
filaBotones = 2
botonAbrir.grid(row=filaBotones, column=0, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
botonSalir.grid(row=filaBotones, column=1, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
botonQuitaFiltro.grid(row=filaBotones, column=3, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
imagenOriginal.grid(row=1, column=0, columnspan=2, padx=paddingDefecto, pady=paddingDefecto)
imagenProcesada.grid(row=1, column=2,columnspan=2, padx=paddingDefecto, pady=paddingDefecto)
botonCopiaProcesada.grid(row=filaBotones+1, column=3, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
botonAplicaUmbral.grid(row=filaBotones, column=2, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
cuadroUmbral.grid(row=filaBotones+2, column=0, padx=paddingDefecto, pady=paddingDefecto, sticky=tkinter.S)
raiz.mainloop()
