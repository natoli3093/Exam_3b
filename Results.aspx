<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Results.aspx.vb" Inherits="Results" Culture="auto:en-US" UICulture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
    <title></title>
    <style type="text/css">
        #Right_column {
            height: 568px;
            margin-left: 388px;
            margin-top: 145px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div id="body">
    
        <div id="left_column">
            <div id="lcolumn_text">
        
            <asp:Label ID="lbl0" runat="server" Text="Please select your language:" meta:resourceKey="lbl0"></asp:Label>
        &nbsp;&nbsp;<asp:DropDownList ID="ListBox2" runat="server" AutoPostBack="true">
            <asp:ListItem Value="en-US">English(US)</asp:ListItem>
            <asp:ListItem Value="zh-CN">中國(Chinese)</asp:ListItem>
            <asp:ListItem Value="ar-IQ">العربية(Arabic)</asp:ListItem>
            <asp:ListItem Value="es-MX">Español</asp:ListItem>
        </asp:DropDownList>
                <br />
                <br />
                <asp:Image ID="imgDefault2" meta:resourceKey="imgDefault2" runat="server" ImageAlign="Middle" />
       </div>
    </div>
        <div id="right_column">
            <div id="rcolumn_text">
            <asp:Label ID="lblHello" runat="server" Text="Hello," meta:resourceKey="lblHello"></asp:Label>&nbsp;<asp:Label ID="lbl_Ms" runat="server" Text="Ms. or Mr." meta:resourceKey="lbl_Ms"></asp:Label>&nbsp;<asp:Label ID="lbl_name" runat="server" Text="Name" meta:resourceKey="lbl_name"></asp:Label>
            <br />
            <br />
            <p><asp:Label ID="lbl1" runat="server" Text="I hope you have a great day when you graduate on" meta:resourceKey="lbl1"></asp:Label>&nbsp;<asp:Label ID="lbl_date" runat="server" Text="Date"></asp:Label>!</p>
            <br />
            <p><asp:Label ID="lbl2" runat="server" Text="I wish you well in your career after graduation. I hope you earn" meta:resourceKey="lbl2"></asp:Label>&nbsp;&nbsp; <asp:Label ID="lbl_salary" runat="server" Text="Salary" meta:resourceKey="lbl_salary"></asp:Label> &nbsp; <asp:Label ID="lbl_job" runat="server" Text="as a salary in your first job!" meta:resourceKey="lbl_job"></asp:Label></p>
            <br />
            <br />
            <asp:Label ID="lbl3" runat="server" Text="Please visit me on" meta:resourceKey="lbl3"></asp:Label>&nbsp;<asp:HyperLink ID="link_github" runat="server" NavigateUrl="~/https://github.com/natoli3093">Github</asp:HyperLink>!
            </div>
            

        </div>
    
    </div>
        <asp:Localize ID="Localize2" runat="server"></asp:Localize>
    </form>
</body>
</html>
