Sub CrearPautas()
    Dim doc As Document
    Dim tabla As Table
    Dim separacionLineas As Double
    Dim espacioEntrePautas As Double
    Dim altoUtil As Double
    Dim altoPauta As Double
    Dim cantidad As Long
    Dim opcion As String
    Dim respuesta As String
    Dim i As Long
    Dim fila As Row

    Set doc = ActiveDocument

    opcion = InputBox( _
        "Elige una opción:" & vbCrLf & _
        "1 = Llenar la hoja" & vbCrLf & _
        "2 = Indicar un número de pautas", _
        "Cantidad de pautas", "1")

    If opcion <> "1" And opcion <> "2" Then Exit Sub

    separacionLineas = Val(InputBox( _
        "Separación entre las dos líneas, en centímetros:", _
        "Espaciado de líneas", "0.7"))

    If separacionLineas <= 0 Then
        MsgBox "Introduce una separación entre líneas mayor que cero."
        Exit Sub
    End If

    espacioEntrePautas = Val(InputBox( _
        "Espacio entre pautas, en centímetros:", _
        "Espacio entre pautas", "0.8"))

    If espacioEntrePautas < 0 Then
        MsgBox "El espacio entre pautas no puede ser negativo."
        Exit Sub
    End If

    altoPauta = (2 * separacionLineas) + espacioEntrePautas

    If opcion = "1" Then
        With Selection.Sections(1).PageSetup
            altoUtil = .PageHeight - .TopMargin - .BottomMargin
        End With

        cantidad = Int(PointsToCentimeters(altoUtil) / altoPauta)

        If cantidad < 1 Then
            MsgBox "Con esos valores no cabe ninguna pauta en la página."
            Exit Sub
        End If
    Else
        respuesta = InputBox( _
            "¿Cuántas pautas quieres crear?", _
            "Número de pautas", "5")

        If respuesta = "" Or Not IsNumeric(respuesta) Then Exit Sub

        cantidad = CLng(respuesta)

        If cantidad < 1 Then
            MsgBox "Introduce un número de pautas mayor que cero."
            Exit Sub
        End If
    End If

    Set tabla = doc.Tables.Add( _
        Range:=Selection.Range, _
        NumRows:=cantidad * 3, _
        NumColumns:=1)

    tabla.Borders.Enable = False
    tabla.AutoFitBehavior wdAutoFitWindow

    For i = 1 To cantidad * 3
        Set fila = tabla.Rows(i)
        fila.HeightRule = wdRowHeightExactly

        If i Mod 3 = 0 Then
            ' Fila vacía: espacio entre pautas
            fila.Height = CentimetersToPoints(espacioEntrePautas)
        Else
            ' Las otras dos filas tienen línea inferior
            fila.Height = CentimetersToPoints(separacionLineas)
            fila.Cells(1).Borders(wdBorderBottom).LineStyle = wdLineStyleSingle
        End If
    Next i

    MsgBox "Se crearon " & cantidad & " pautas."
End Sub
