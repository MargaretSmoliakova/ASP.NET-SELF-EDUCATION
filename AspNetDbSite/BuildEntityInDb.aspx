<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="BuildEntityInDb.aspx.cs" Inherits="BuildEntityInDb" %>

<script runat="server">

    protected void FinishButton_Click(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Descriptive Label ;)"></asp:Label>
    <asp:Wizard ID="Wizard1" runat="server">
        <FinishNavigationTemplate>
            <asp:Button runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" ID="FinishPreviousButton"></asp:Button>
            <asp:Button runat="server" CommandName="MoveComplete" Text="Finish" ID="FinishButton" OnClick="FinishButton_Click1" ClientIDMode="Inherit"></asp:Button>
        </FinishNavigationTemplate>
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                Enter the name of your cost:<br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />               
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                Enter the price:<br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step 3" ID="WizardStep3">
                Pick your group:<br />
                <asp:ListBox ID="ListBox1" runat="server" Width="237px">
                    <asp:ListItem>good</asp:ListItem>
                    <asp:ListItem>better</asp:ListItem>
                    <asp:ListItem>the best</asp:ListItem>
                </asp:ListBox>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep4" runat="server" Title="Step 4">
                Just date:<br />
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </asp:WizardStep>                       
        </WizardSteps>
    </asp:Wizard>
</asp:Content>

