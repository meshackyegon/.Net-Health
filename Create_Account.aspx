<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Create_Account.aspx.cs" Inherits="HealthManagement.Create_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="PatientID(National ID)" ID="Label9"></asp:Label>
    <br />
    <asp:TextBox ID="txtpatientid" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpatientid" ErrorMessage="Required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Names"></asp:Label>
    <br />
    <asp:TextBox ID="txtnames" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnames" ErrorMessage="Required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <br />
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Email must have @ And &gt; Symbols" ForeColor="Red" ValidationGroup="vg" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Mobileno"></asp:Label>
    <br />
    <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmobileno" ErrorMessage="Required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
    <br />
    <asp:DropDownList ID="DDLgender" runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDLgender" ErrorMessage="Required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Location"></asp:Label>
    <br />
    <asp:TextBox ID="txtlocation" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtlocation" ErrorMessage="Required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
    <br />
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpassword" ErrorMessage="Required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtcpassword" ControlToValidate="txtpassword" ErrorMessage="Password must match" ForeColor="Red" ValidationGroup="vg">*</asp:CompareValidator>
    <br />
    <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
    <br />
    <asp:TextBox ID="txtcpassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcpassword" ErrorMessage="Required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtcpassword" ErrorMessage="Password must match" ForeColor="Red" ValidationGroup="vg">*</asp:CompareValidator>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="All feilds must meet the requirements" ValidationGroup="vg" />
    <br />
    <asp:Label ID="lblconfirm" runat="server" Text="Output"></asp:Label>
    <br />
    <br />
</asp:Content>
