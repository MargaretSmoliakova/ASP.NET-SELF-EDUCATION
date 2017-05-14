<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Fun with Cookies"></asp:Label><br />
        <hr />
        <asp:Label ID="Label2" runat="server" Text="Cookie Name: "></asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Cookie Value: "></asp:Label><br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Write this Cookie" OnClick="Button1_Click" /><br />
        <hr />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Show Cookie Data" OnClick="Button2_Click"/><br /><br />
        <asp:Label ID="Label4" runat="server" Text="here should be cookie data..."></asp:Label>
    </div>
    </form>
</body>
</html>
