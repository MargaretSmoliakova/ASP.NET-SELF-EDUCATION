<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Import Namespace="ClassLibraryForEF" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblMain" runat="server" Text="The Add New Monthly Price" Font-Size="XX-Large"></asp:Label>
        <hr />
        <asp:Label ID="lblID" runat="server" Text="ID"></asp:Label>
        <asp:TextBox ID="textBoxID" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="textBoxName" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblGroup" runat="server" Text="Group"></asp:Label>
        <asp:TextBox ID="textBoxGroup" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnAdd" runat="server" Text="Add New Monthly Price" OnClick="btnAdd_Click" />
        <hr />
        <asp:Label ID="lblDB" runat="server" Text="Current Monthly Prices"></asp:Label>
        <asp:GridView ID="gridView" runat="server" ></asp:GridView>
    </div>
    </form>
</body>
</html>
