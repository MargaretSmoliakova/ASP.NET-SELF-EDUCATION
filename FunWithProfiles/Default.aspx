<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Fun with Profiles" Font-Size="XX-Large"></asp:Label>
        <hr />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Street Address: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 5px"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="City: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 69px" Width="115px"></asp:TextBox><br />
        <asp:Label ID="Label4" runat="server" Text="State: "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 62px" Width="116px"></asp:TextBox><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Submit Data" OnClick="Button1_Click"/><br /><br />
        <asp:Label ID="lblUserData" runat="server" Text="lblUserData"></asp:Label>
    </div>
    </form>
</body>
</html>
