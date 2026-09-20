Option Explicit

Sub ImportReportingCsv()
    Dim filePath As String
    Dim csvWorkbook As Workbook
    Dim targetSheet As Worksheet

    filePath = ThisWorkbook.Path & "\reporting_data.csv"
    Set targetSheet = ThisWorkbook.Worksheets("Data")

    targetSheet.Cells.Clear

    Workbooks.OpenText _
        Filename:=filePath, _
        DataType:=xlDelimited, _
        Semicolon:=True, _
        Local:=True

    Set csvWorkbook = ActiveWorkbook

    csvWorkbook.Worksheets(1).UsedRange.Copy _
        Destination:=targetSheet.Range("A1")

    csvWorkbook.Close SaveChanges:=False
End Sub

Sub ExportReportToPdf()
    Dim outputPath As String

    outputPath = ThisWorkbook.Path & "\reporting.pdf"

    ThisWorkbook.Worksheets("Report").ExportAsFixedFormat _
        Type:=xlTypePDF, _
        Filename:=outputPath
End Sub
