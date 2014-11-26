<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" Culture="auto:en-US" UICulture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div id ="body">
        <div id="header">
        <h1>Welcome to MSCI:3300</h1>
        <h2>Software Design and Development</h2>
        </div>

    <div id="left_column">
        <div id="lcolumn_text">
        Please select your language:
        &nbsp;&nbsp;<asp:DropDownList ID="ListBox1" runat="server" AutoPostBack="true">
            <asp:ListItem Value="en-US">English</asp:ListItem>
            <asp:ListItem Value="zh-CN">Chinese</asp:ListItem>
            <asp:ListItem Value="ar-IQ">Arabic</asp:ListItem>
            <asp:ListItem Value="es-MX">Spanish</asp:ListItem>
        </asp:DropDownList>

        </div>

    </div>

    <div id="right_column">
        <div id="rcolumn_text">
        My name is:&nbsp;&nbsp;<asp:TextBox ID="tbName" runat="server" meta:resourceKey="tbName" >Enter full name</asp:TextBox>
        <br />
        <br />
        I am:&nbsp;&nbsp;<asp:RadioButton ID="rbFemale" runat="server" Text="Female"  meta:resourceKey="rbFemale" />&nbsp;&nbsp;<asp:RadioButton ID="rbMale" runat="server" Text="Male" meta:resourceKey="rbMale" />
        <br />
        <br />
        I plan to graduate on:
        <br />
        <br />
        <asp:Calendar ID="calendar_grad" runat="server"></asp:Calendar>
        <br />
        <br />
        When I graduate, I hope to earn:&nbsp;&nbsp;<asp:TextBox ID="tbSalary" runat="server"  meta:resourceKey="tbSalary">Enter salary</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit"  meta:resourceKey="btnSubmit" />
            </div>
    </div>
    
    </div>
    </form>
</body>
</html>
