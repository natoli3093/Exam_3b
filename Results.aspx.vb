Imports System.Threading
Imports System.Globalization
Partial Class Results
    Inherits System.Web.UI.Page
    Protected Overrides Sub InitializeCulture()
        If Request.Form("ListBox2") IsNot Nothing Then
            Dim selectedLanguage As String = _
                Request.Form("ListBox2")
            UICulture = Request.Form("ListBox2")
            Culture = Request.Form("ListBox2")
            Thread.CurrentThread.CurrentCulture = _
                CultureInfo.CreateSpecificCulture(selectedLanguage)
            Thread.CurrentThread.CurrentUICulture = New  _
                CultureInfo(selectedLanguage)
        End If
        MyBase.InitializeCulture()
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_name.Text = Session("textboxvalue")
        lbl_salary.Text = Session("textbox2value")
        lbl_date.Text = Session("calendarvalue")
        lbl_Ms.Text = Session("radioValue")


    End Sub
End Class
