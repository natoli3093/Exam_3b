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
            <asp:Label ID="lblLanguage" runat="server" Text="Please select your language:" meta:resourceKey="lblLanguage"></asp:Label>
        &nbsp;&nbsp;<asp:DropDownList ID="ListBox1" runat="server" AutoPostBack="true">
            <asp:ListItem Value="en-US">English(US)</asp:ListItem>
            <asp:ListItem Value="zh-CN">中國(Chinese)</asp:ListItem>
            <asp:ListItem Value="ar-IQ">العربية(Arabic)</asp:ListItem>
            <asp:ListItem Value="es-MX">Español</asp:ListItem>
        </asp:DropDownList>

        </div>

    </div>

    <div id="right_column">
        <div id="rcolumn_text">
        <asp:Label ID="lblName" runat="server" Text="My name is:" meta:resourceKey="lblName"></asp:Label>&nbsp;&nbsp;<asp:TextBox ID="tbName" runat="server" meta:resourceKey="tbName" Text="Enter full name"></asp:TextBox>
        <br />
        <br />
      <asp:Label ID="lblGender" runat="server" Text="I am:" meta:resourceKey="lblGender"></asp:Label>&nbsp;&nbsp;<asp:RadioButton ID="rbFemale" runat="server" Text="Female"  meta:resourceKey="rbFemale" />&nbsp;&nbsp;<asp:RadioButton ID="rbMale" runat="server" Text="Male" meta:resourceKey="rbMale" />
        <br />
        <br />
            <asp:Label ID="lblGrad" runat="server" Text="I plan to graduate on:" meta:resourceKey="lblGrad"></asp:Label>
        <br />
        <br />
        <asp:Calendar ID="calendar_grad" runat="server"></asp:Calendar>
        <br />
        <br />
        <asp:Label ID="lblEarn" runat="server" Text="When I graduate, I hope to earn:" meta:resourceKey="lblEarn"></asp:Label>&nbsp;&nbsp;<asp:TextBox ID="tbSalary" runat="server"  meta:resourceKey="tbSalary" Text="Enter salary"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit"  meta:resourceKey="btnSubmit" />
            </div>
    </div>
    
    </div>
    </form>
</body>
</html>
