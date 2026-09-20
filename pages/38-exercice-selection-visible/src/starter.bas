Option Explicit

Sub ExportVisibleSelection()
    Dim visibleCells As Range
    Dim cell As Range
    Dim exportSheet As Worksheet
    Dim nextRow As Long

    If TypeName(Selection) <> "Range" Then Exit Sub

    Set visibleCells = Selection.SpecialCells(xlCellTypeVisible)
    Set exportSheet = GetOrCreateExportSheet()

    exportSheet.Range("A1").Value = "Clients exportes"
    exportSheet.Range("A2:A1000").ClearContents

    nextRow = 2

    For Each cell In visibleCells.Cells
        ' TODO: copy the visible client name into the export sheet
        nextRow = nextRow + 1
    Next cell
End Sub

Private Function GetOrCreateExportSheet() As Worksheet
    On Error Resume Next
    Set GetOrCreateExportSheet = ThisWorkbook.Worksheets("Export")
    On Error GoTo 0

    If GetOrCreateExportSheet Is Nothing Then
        Set GetOrCreateExportSheet = ThisWorkbook.Worksheets.Add
        GetOrCreateExportSheet.Name = "Export"
    End If
End Function
