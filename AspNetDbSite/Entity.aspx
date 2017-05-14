<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Entity.aspx.cs" Inherits="Entity" Async="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:DropDownList ID="cboGroup" SelectMethod="GetGroup" AppendDataBoundItems="true" AutoPostBack="true" DataTextField="Group" DataValueField="Group" runat="server">
        <asp:ListItem Value="" Text="(All)" />
    </asp:DropDownList>
    <asp:GridView ID="GridView2" runat="server" CellPadding="4" AutoGenerateColumns="false"
        DataKeyNames="Id" ItemType="ClassLibraryForEF.MonthlyPrice" SelectMethod="GridView2_GetData"
        DeleteMethod="GridView2_DeleteItem" UpdateMethod="GridView2_UpdateItem"
        EmptyDataText="There are no data records to display" ForeColor="#333333" GridLines="Vertical"
        AllowPaging="true" PageSize="5" AllowSorting="true">
        <Columns>
            <asp:CommandField ShowDeleteButton="true" ShowEditButton="true" />
            <asp:BoundField DataField="Id" HeaderText="№" ReadOnly="true" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="name" ReadOnly="true" SortExpression="Name" />
            <asp:BoundField DataField="Group" HeaderText="group" ReadOnly="true" SortExpression="Group" />
        </Columns>
    </asp:GridView>
</asp:Content>

