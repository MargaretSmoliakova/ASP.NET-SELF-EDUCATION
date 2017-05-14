<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Fun With Session State"></asp:Label>
        <hr />
        <asp:Label ID="Label2" runat="server" Text="Which Color?:"></asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Which Make?:"></asp:Label><br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label4" runat="server" Text="Down Payment:"></asp:Label><br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />
        <asp:CheckBox ID="CheckBox1" runat="server" />
        <asp:Label ID="Label5" runat="server" Text="Lease?"></asp:Label><br /><br />
        <asp:Label ID="Label6" runat="server" Text="Delivery Date:"></asp:Label><br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar><br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
        <hr />
        <hr />
        <asp:Label ID="LabelUserInfo" runat="server" Text="Here is should be user info..."></asp:Label>
    </div>
    </form>
</body>
</html>
