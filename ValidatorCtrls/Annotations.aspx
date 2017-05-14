<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Annotations.aspx.cs" Inherits="Annotations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FormView ID="fvDataBinding" runat="server" DataKeyNames="Id" ItemType="MonthlyPriceClass"
            DefaultMode="Insert" InsertMethod="fvDataBinding_InsertItem"
            UpdateMethod="fvDataBinding_UpdateItem" SelectMethod="fvDataBinding_GetItem">
            <ItemTemplate>
                <table style="width:100%">
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="Id">Id:</asp:Label></td>
                        <td><asp:Label ID="Id" runat="server" Text="<%#Item.Id %>"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="Name">Name:</asp:Label></td>
                        <td><asp:Label ID="Name" runat="server" Text="<%#Item.Name %>"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="Group">Group:</asp:Label></td>
                        <td><asp:Label ID="Group" runat="server" Text="<%#Item.Group %>"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />&nbsp;
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <EditItemTemplate>
                <table style="width:100%">
                    <tr>                        
                        <td><asp:Label runat="server" AssociatedControlID="Id" >Id:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="Id" runat="server" Text="<%# BindItem.Id %>" />
                            <asp:ModelErrorMessage ModelStateKey="Id" runat="server" ForeColor="Red" />
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="Name">Name:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="Name" runat="server" Text="<%# BindItem.Name %>" />
                            <asp:ModelErrorMessage ModelStateKey="Name" runat="server" ForeColor="Red" />
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="Group">Group:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="Group" runat="server" Text="<%# BindItem.Group %>" />
                            <asp:ModelErrorMessage ModelStateKey="Group" runat="server" ForeColor="Red" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button runat="server" CommandName="Update" Text="Save" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false" />
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <InsertItemTemplate>
                <table style="width:100%">
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="Id">Id:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="Id" runat="server" Text="<%# BindItem.Id %>" />
                            <asp:ModelErrorMessage ModelStateKey="Id" runat="server" ForeColor="Red" />
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="Name">Name:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="Name" runat="server" Text="<%# BindItem.Name %>" />
                            <asp:ModelErrorMessage ModelStateKey="Name" runat="server" ForeColor="Red" />
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" AssociatedControlID="Group">Group:</asp:Label></td>
                        <td>
                            <asp:TextBox ID="Group" runat="server" Text="<%# BindItem.Group %>" />
                            <asp:ModelErrorMessage ModelStateKey="Group" runat="server" ForeColor="Red" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button runat="server" CommandName="Insert" Text="Save" />
                        </td>
                    </tr>
                </table>
            </InsertItemTemplate>
        </asp:FormView>
        <asp:ValidationSummary runat="server" ShowModelStateErrors="true" ForeColor="Red" HeaderText="Please check the following errors:" />
    </div>
    </form>
</body>
</html>
