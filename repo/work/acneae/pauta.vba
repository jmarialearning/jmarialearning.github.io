Sub CrearPautasQueQuepan()
    Dim doc As Document
    Dim tabla As Table
    Dim separacionLineas As Double
    Dim espacioEntrePautas As Double
    Dim altoUtil As Double
    Dim altoPauta As Double
    Dim cantidad As Long
    Dim i As Long
    Dim fila As Row

    Set doc = ActiveDocument

    separacionLineas = Val(InputBox( _
        "Separación entre las dos líneas, en centímetros:", _
        "Espaciado de líneas", "0.7"))

    If separacionLineas <= 0 Then
        MsgBox "Introduce una separación mayor que cero."
        Exit Sub
    End If

    espacioEntrePautas = Val(InputBox( _
        "Espacio entre pautas, en centímetros:", _
        "Espacio entre pautas", "0.8"))

    If espacioEntrePautas < 0 Then
        MsgBox "El espacio entre pautas no puede ser negativo."
        Exit Sub
    End If

    With Selection.Sections(1).PageSetup
        altoUtil = .PageHeight - .TopMargin - .BottomMargin
    End With

    altoPauta = (2 * separacionLineas) + espacioEntrePautas
    cantidad = Int(PointsToCentimeters(altoUtil) / altoPauta)

    If cantidad < 1 Then
        MsgBox "Con esos valores no cabe ninguna pauta en la página."
        Exit Sub
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
            ' Fila sin línea: espacio entre pautas
            fila.Height = CentimetersToPoints(espacioEntrePautas)
        Else
            ' Las dos filas con borde forman las líneas de la pauta
            fila.Height = CentimetersToPoints(separacionLineas)
            fila.Cells(1).Borders(wdBorderBottom).LineStyle = wdLineStyleSingle
        End If
    Next i

    MsgBox "Se crearon " & cantidad & " pautas."
End Sub
