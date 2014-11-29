Imports System.Threading
Imports System.Globalization

Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Overrides Sub InitializeCulture()
        If Request.Form("ListBox1") IsNot Nothing Then
            Dim selectedLanguage As String = _
                Request.Form("ListBox1")
            UICulture = Request.Form("ListBox1")
            Culture = Request.Form("ListBox1")
            Thread.CurrentThread.CurrentCulture = _
                CultureInfo.CreateSpecificCulture(selectedLanguage)
            Thread.CurrentThread.CurrentUICulture = New  _
                CultureInfo(selectedLanguage)
        End If
        MyBase.InitializeCulture()
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        Response.Redirect("./Results.aspx")


    End Sub
End Class

