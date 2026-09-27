Option Explicit

Sub ExportVisibleSelection()
    Dim visibleCells As Range
    Dim cell As Range
    Dim exportSheet As Worksheet
    Dim nextRow As Long

    If TypeName(Selection) <> "Range" Then Exit Sub

    Set visibleCells = Selection.SpecialCells(xlCellTypeVisible)

    ' TODO: prepare the Export sheet with GetOrCreateExportSheet
    ' TODO: clear the previous export
    ' TODO: loop through visibleCells
    ' TODO: write client names starting from A2
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
