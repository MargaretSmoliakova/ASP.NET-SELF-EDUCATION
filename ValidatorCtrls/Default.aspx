<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="mainTitle" runat="server" Text="Fun with ASP.NET Validators" 
            Font-Size="XX-Large"></asp:Label>
        <hr />
        <hr />

        <asp:Label ID="requiredField" runat="server" Text="Required Field:"></asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server" Text="Please enter your name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ErrorMessage="Oops! Need to enter data." 
            ControlToValidate="TextBox1" InitialValue="Please enter your name" 
            EnableClientScript="false" Display="None"></asp:RequiredFieldValidator>
        <br />
        <br />        
        
        <asp:Label ID="range" runat="server" Text="Range 0 - 100:"></asp:Label><br />        
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="Please enter value betwenn 0 and 100." MaximumValue="100" MinimumValue="0" 
            Type="Integer" EnableClientScript="false" Display="None"></asp:RangeValidator>
        <br />
        <br />
        
        <asp:Label ID="usssn" runat="server" Text="Enter your US SSN:"></asp:Label><br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox3" 
            ErrorMessage="Please enter a valid US SSN." 
            ValidationExpression="(0\d{1,4}-|\(0\d{1,4}\)?)?\d{1,4}-\d{4}" 
            EnableClientScript="false" Display="None"></asp:RegularExpressionValidator>
        <br />
        <br />
        
        <asp:Label ID="lessThan20" runat="server" Text="Value < 20:"></asp:Label><br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>       
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox4"
            ErrorMessage="Enter a value less than 20." Operator="LessThan" 
            ValueToCompare="20" Type="Integer" EnableClientScript="false" 
            Display="None"></asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="postBackButton" runat="server" Text="Post back" OnClick="postBackButton_Click"/>
        <br /><br />
        <asp:Label ID="finalLabel" runat="server" Text="Here are the things you must correct."></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            Width="353px" HeaderText="Here are the things you must correct." DisplayMode="BulletList" />
    </div>
    </form>
</body>
</html>
