Option Explicit

Sub ApplyStatusToSelection()
    Dim amountCell As Range

    If TypeName(Selection) <> "Range" Then Exit Sub

    For Each amountCell In Selection.Cells
        ' TODO: test amount and write result at right
    Next amountCell
End Sub
