Option Explicit

Sub ClassifyDynamicAmounts()
    Dim sheet As Worksheet
    Dim lastRow As Long
    Dim rowIndex As Long

    Set sheet = ActiveSheet
    lastRow = sheet.Cells(sheet.Rows.Count, "A").End(xlUp).Row

    ' TODO: loop rows and write status
End Sub
