Option Explicit

Function ImportReportingCsv() As Boolean
    Dim selectedFile As Variant
    Dim csvWorkbook As Workbook
    Dim targetSheet As Worksheet

    selectedFile = Application.GetOpenFilename( _
        FileFilter:="Fichiers CSV (*.csv),*.csv", _
        Title:="Sélectionner le fichier CSV")

    If VarType(selectedFile) = vbBoolean Then
        ImportReportingCsv = False
        Exit Function
    End If

    Set targetSheet = GetOrCreateSheet("Data")

    Call targetSheet.Cells.Clear()

    Call Workbooks.OpenText( _
        Filename:=selectedFile, _
        DataType:=xlDelimited, _
        Semicolon:=True, _
        Local:=True)

    Set csvWorkbook = ActiveWorkbook

    Call csvWorkbook.Worksheets(1).UsedRange.Copy( _
        Destination:=targetSheet.Range("A1"))

    Call csvWorkbook.Close(SaveChanges:=False)
    ImportReportingCsv = True
End Function

Sub ExportReportToPdf()
    Dim outputPath As String
    Dim reportSheet As Worksheet

    outputPath = ThisWorkbook.Path & "\reporting.pdf"
    Set reportSheet = GetOrCreateSheet("Report")

    Call reportSheet.ExportAsFixedFormat( _
        Type:=xlTypePDF, _
        Filename:=outputPath)
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
