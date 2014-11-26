<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Results.aspx.vb" Inherits="Results" %>

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
        Please select your language:
        &nbsp;&nbsp;<asp:DropDownList ID="language_dropdownlist" runat="server">
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Chinese</asp:ListItem>
            <asp:ListItem>Arabic</asp:ListItem>
            <asp:ListItem>Spanish</asp:ListItem>
        </asp:DropDownList>
       </div>
    </div>
    
        <div id="right_column">
            <div id="rcolumn_text">
            Hello,&nbsp;<asp:Label ID="lbl_Ms" runat="server" Text="Ms. or Mr."></asp:Label>&nbsp;<asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>
            <br />
            <br />
            <p>I hope you have a great day when you graduate on <asp:Label ID="lbl_date" runat="server" Text="Date"></asp:Label>!</p>
            <br />
            <p>I wish you well in your career after graduation. I hope you earn&nbsp;&nbsp; <asp:Label ID="lbl_salary" runat="server" Text="Salary"></asp:Label> &nbsp; as a salary in your first job!</p>
            <br />
            <br />
            Please visit me on <asp:HyperLink ID="link_github" runat="server" NavigateUrl="~/https://github.com/natoli3093">Github</asp:HyperLink>!
            </div>


        </div>
    
    </div>
        <asp:Localize ID="Localize2" runat="server"></asp:Localize>
    </form>
</body>
</html>
