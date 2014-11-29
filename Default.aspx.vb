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
        Dim choice As String
        If RadioButtonList1.Items.FindByText("Female").Selected = True Then
            choice = "Ms."
            If RadioButtonList1.Items.FindByText("Male").Selected = True Then
                choice = "Mr."

            End If
        End If
        choice = RadioButtonList1.SelectedValue

        Dim choice2 As String
        choice2 = calendar_grad.SelectedDate.ToLongDateString()

        Dim money As Decimal
        money = String.Format("{0:c}", tbSalary.Text)


        Session("textboxValue") = tbName.Text
        Session("textbox2value") = money
        Session("calendarvalue") = choice2
        Session("radiovalue") = choice




        Response.Redirect("Results.aspx")









    End Sub
End Class

