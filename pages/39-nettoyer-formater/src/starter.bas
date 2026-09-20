Option Explicit

Sub PrepareReportTable()
    Dim sheet As Worksheet
    Dim dataRange As Range
    Dim lastRow As Long

    Set sheet = ActiveSheet
    Set dataRange = sheet.Range("A1").CurrentRegion
    lastRow = sheet.Cells(sheet.Rows.Count, "A").End(xlUp).Row

    dataRange.Columns.AutoFit
    dataRange.Rows(1).Font.Bold = True
    dataRange.Rows(1).Interior.Color = RGB(217, 225, 242)

    sheet.Range("E2:E" & lastRow).ClearContents
    sheet.Range("C:C").NumberFormat = "#,##0.00 €"
End Sub
