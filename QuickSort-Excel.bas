Attribute VB_Name = "Module1"
Option Explicit
Option Base 1

Sub QSort()

    'Setup
    Dim MyList() As Variant
    Dim str As String
    Dim i As Integer

    MyList = Array(2, 4, 6, 8, 10, 1, 3, 5, 7, 9)
    str = ""
    For i = 1 To 10
        str = str + " " & MyList(i)
    Next
    MsgBox str

    QuickSort MyList, 1, 10

    str = ""
    For i = 1 To 10
        str = str + " " & MyList(i)
    Next
    MsgBox str

End Sub

Sub QuickSort(ByRef A() As Variant, ByVal lo As Long, ByVal hi As Long)

    Dim p As Integer

    If lo < hi Then
        p = Partition(A, lo, hi)
        QuickSort A, lo, p - 1
        QuickSort A, p + 1, hi
    End If

End Sub

Function Partition(ByRef A() As Variant, ByVal lo As Long, ByVal hi As Long)

    Dim i, j, pivot As Integer

    pivot = A(hi)
    i = lo - 1
    For j = lo To hi - 1
        If A(j) < pivot Then
            i = i + 1
            Swap A, i, j
        End If
    Next
    If A(hi) < A(i + 1) Then
        Swap A, i + 1, hi
    End If
    Partition = i + 1

End Function

Sub Swap(ByRef X() As Variant, ByVal y As Long, ByVal z As Long)

    Dim T As Integer
    T = X(y)
    X(y) = X(z)
    X(z) = T

End Sub
