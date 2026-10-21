Option Explicit

Sub CrearPautas()
    Dim doc As Object, cursor As Object, tabla As Object
    Dim pageStyle As Object, estilos As Object
    Dim opcion As String, respuesta As String
    Dim separacion As Double, espacio As Double
    Dim altoUtil As Double, altoPauta As Double
    Dim cantidad As Long, i As Long
    Dim fila As Object, celda As Object
    Dim linea As New com.sun.star.table.BorderLine2
    Dim sinLinea As New com.sun.star.table.BorderLine2

    doc = ThisComponent
    cursor = doc.CurrentController.ViewCursor

    opcion = InputBox( _
        "Escribe 1 para llenar la página o 2 para indicar una cantidad.", _
        "Crear pautas", "1")
    If opcion <> "1" And opcion <> "2" Then Exit Sub

    respuesta = InputBox("Separación entre las dos líneas, en centímetros:", _
                         "Espaciado", "0,7")
    If respuesta = "" Then Exit Sub
    separacion = CDbl(respuesta)

    respuesta = InputBox("Espacio entre pautas, en centímetros:", _
                         "Espaciado", "0,8")
    If respuesta = "" Then Exit Sub
    espacio = CDbl(respuesta)

    If separacion <= 0 Or espacio < 0 Then
        MsgBox "La separación debe ser mayor que cero y el espacio no puede ser negativo."
        Exit Sub
    End If

    altoPauta = (2 * separacion) + espacio

    If opcion = "1" Then
        estilos = doc.StyleFamilies.getByName("PageStyles")
        pageStyle = estilos.getByName(cursor.PageStyleName)
        altoUtil = (pageStyle.Height - pageStyle.TopMargin _
                    - pageStyle.BottomMargin) / 1000
        cantidad = Int(altoUtil / altoPauta)
    Else
        respuesta = InputBox("¿Cuántas pautas quieres crear?", _
                             "Número de pautas", "5")
        If respuesta = "" Or Not IsNumeric(respuesta) Then Exit Sub
        cantidad = CLng(respuesta)
    End If

    If cantidad < 1 Then
        MsgBox "No cabe ninguna pauta con esas medidas."
        Exit Sub
    End If

    ' Línea fina para las pautas; línea vacía para quitar bordes.
    linea.OuterLineWidth = 10
    linea.LineStyle = com.sun.star.table.BorderLineStyle.SOLID
    linea.Color = RGB(0, 0, 0)

    sinLinea.OuterLineWidth = 0
    sinLinea.InnerLineWidth = 0
    sinLinea.LineDistance = 0

    tabla = doc.createInstance("com.sun.star.text.TextTable")
    tabla.initialize(cantidad * 3, 1)
    doc.Text.insertTextContent(cursor, tabla, False)

    For i = 0 To (cantidad * 3) - 1
        fila = tabla.Rows.getByIndex(i)
        fila.IsAutoHeight = False
        celda = tabla.getCellByName("A" & CStr(i + 1))

        ' Quita todos los bordes de cada celda.
        celda.TopBorder = sinLinea
        celda.BottomBorder = sinLinea
        celda.LeftBorder = sinLinea
        celda.RightBorder = sinLinea

        If (i Mod 3) = 2 Then
            ' Fila vacía para separar las pautas.
            fila.Height = espacio * 1000
        Else
            ' Solo las dos filas de escritura llevan línea inferior.
            fila.Height = separacion * 1000
            celda.BottomBorder = linea
        End If
    Next i

    MsgBox "Se crearon " & cantidad & " pautas."
End Sub
