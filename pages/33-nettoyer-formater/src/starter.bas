Option Explicit

Sub PrepareReportTable()
    Dim sheet As Worksheet
    Dim dataRange As Range

    Set sheet = ActiveSheet
    Set dataRange = sheet.Range("A1").CurrentRegion

    dataRange.Columns.AutoFit
    dataRange.Rows(1).Font.Bold = True
End Sub

Sub RefreshAllData()
    ActiveWorkbook.RefreshAll
End Sub
