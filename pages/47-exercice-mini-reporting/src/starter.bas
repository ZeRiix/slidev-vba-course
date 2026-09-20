Option Explicit

Sub RefreshReport()
    Dim dataSheet As Worksheet
    Dim reportSheet As Worksheet
    Dim lastRow As Long

    ImportReportingCsv

    Set dataSheet = GetOrCreateReportSheet("Data")
    Set reportSheet = GetOrCreateReportSheet("Report")
    lastRow = dataSheet.Cells(dataSheet.Rows.Count, "A").End(xlUp).Row

    ' TODO: prepare and format Data
    ' TODO: build the summary in Report
    ' TODO: calculate totals by service
    ' TODO: highlight rows with status "À relancer"
End Sub

Private Function GetOrCreateReportSheet(sheetName As String) As Worksheet
    On Error Resume Next
    Set GetOrCreateReportSheet = ThisWorkbook.Worksheets(sheetName)
    On Error GoTo 0

    If GetOrCreateReportSheet Is Nothing Then
        Set GetOrCreateReportSheet = ThisWorkbook.Worksheets.Add( _
            After:=ThisWorkbook.Worksheets(ThisWorkbook.Worksheets.Count))
        GetOrCreateReportSheet.Name = sheetName
    End If
End Function
