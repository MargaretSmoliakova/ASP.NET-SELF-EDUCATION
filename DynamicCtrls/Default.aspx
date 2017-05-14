<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dynamic Control Test</title>
</head>
<body>
    <form id="form1" runat="server">

        <hr />
        <h1>Dynamic Controls</h1>
        <asp:Label ID="lblTextBoxText" runat="server"></asp:Label>
        <hr />
        <div>
            <asp:Panel ID="myPanel" runat="server" Width="200px" BorderColor="Black" BorderStyle="Solid">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                <asp:Button ID="Button1" runat="server" Text="Button" /><br />
                <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
            </asp:Panel>
            <br />
            <br />
            <asp:Label ID="lblControlInfo" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnAddWidgets" runat="server" Text="Add Widgets" OnClick="btnAddWidgets_Click"/>
            <br />
            <asp:Button ID="btnClearPanel" runat="server" Text="Clear Panel" OnClick="btnClearPanel_Click"/>
            <br />
            <br />
            <asp:Button ID="btnGetTextData" runat="server" Text="Get Text Data" OnClick="btnGetTextData_Click"/>
            <br />
            <asp:Label ID="lblTextBoxData" runat="server" Text="Label"></asp:Label>
            
        </div>

    </form>
</body>
</html>
