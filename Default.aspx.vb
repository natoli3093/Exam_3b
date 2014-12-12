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
        'Response.Redirect("Results.aspx?" + RadioButtonList1.SelectedValue + tbName.Text + tbSalary.Text)
        Dim choice As String = ""

            If RadioButtonList1.SelectedIndex = 0 Then
                choice = "Ms."
            End If
            If RadioButtonList1.SelectedIndex = 1 Then
                choice = "Mr."

            End If




            'ElseIf RadioButtonList1.Items("Female").Selected = True Then
            'choice = "Ms."
            'ElseIf RadioButtonList1.Items("Male").Selected = True Then
            'choice = "Mr."

            'ElseIf RadioButtonList1.Items("女").Selected = True Then
            'choice = "女士."
            'ElseIf RadioButtonList1.Items("男").Selected = True Then
            'choice = "先生."
            'ElseIf RadioButtonList1.Items("hembra").Selected = True Then
            'choice = "Sra."
            'ElseIf RadioButtonList1.Items("hombre").Selected = True Then
            'choice = "Sr."
            'ElseIf RadioButtonList1.Items("أنثى").Selected = True Then
            'choice = "السيدة."
            'ElseIf RadioButtonList1.Items("رجل").Selected = True Then
            'choice = "السيد."
            'End If



            Dim choice2 As String
            choice2 = calendar_grad.SelectedDate.ToShortDateString()

            Dim money As Decimal
            money = String.Format("{0:n}", tbSalary.Text)


            Session("textboxValue") = tbName.Text
            Session("textbox2value") = String.Format("{0:n}", money)
            Session("calendarvalue") = choice2
            Session("radiovalue") = choice




            Response.Redirect("Results.aspx")









    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tbName.Focus()

    End Sub
End Class

