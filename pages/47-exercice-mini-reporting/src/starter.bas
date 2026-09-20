Option Explicit

Sub RefreshReport()
    Dim dataSheet As Worksheet
    Dim reportSheet As Worksheet
    Dim lastRow As Long

    ImportReportingCsv

    Set dataSheet = ThisWorkbook.Worksheets("Data")
    Set reportSheet = ThisWorkbook.Worksheets("Report")
    lastRow = dataSheet.Cells(dataSheet.Rows.Count, "A").End(xlUp).Row

    ' TODO: prepare and format Data
    ' TODO: build the summary in Report
    ' TODO: calculate totals by service
    ' TODO: highlight rows with status "À relancer"
End Sub
