Option Explicit

Sub ImportReportingCsv()
    Dim filePath As String
    Dim csvWorkbook As Workbook
    Dim targetSheet As Worksheet

    filePath = ThisWorkbook.Path & "\reporting_data.csv"
    Set targetSheet = GetOrCreateSheet("Data")

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
    Dim reportSheet As Worksheet

    outputPath = ThisWorkbook.Path & "\reporting.pdf"
    Set reportSheet = GetOrCreateSheet("Report")

    reportSheet.ExportAsFixedFormat _
        Type:=xlTypePDF, _
        Filename:=outputPath
End Sub

Private Function GetOrCreateSheet(sheetName As String) As Worksheet
    On Error Resume Next
    Set GetOrCreateSheet = ThisWorkbook.Worksheets(sheetName)
    On Error GoTo 0

    If GetOrCreateSheet Is Nothing Then
        Set GetOrCreateSheet = ThisWorkbook.Worksheets.Add( _
            After:=ThisWorkbook.Worksheets(ThisWorkbook.Worksheets.Count))
        GetOrCreateSheet.Name = sheetName
    End If
End Function
