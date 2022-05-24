<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="bookservice.aspx.cs" Inherits="HealthManagement.bookservice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Select date"></asp:Label>
    <br />
    &nbsp;
    <asp:TextBox ID="txtdate" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Date"></asp:TextBox>
<br />
<asp:Label ID="Label2" runat="server" Text="Type of service"></asp:Label>
<br />
<asp:DropDownList ID="DDLmedical" runat="server">
    <asp:ListItem>Medical </asp:ListItem>
    <asp:ListItem>Surgical</asp:ListItem>
    <asp:ListItem>Obstetrical</asp:ListItem>
    <asp:ListItem>Anaesthesiology</asp:ListItem>
    <asp:ListItem>Labaratory</asp:ListItem>
    <asp:ListItem>Paediatric</asp:ListItem>
    <asp:ListItem>Radiology</asp:ListItem>
    <asp:ListItem>Physiotherapy</asp:ListItem>
</asp:DropDownList>
<br />
<asp:Label ID="Label3" runat="server" Text="Time"></asp:Label>
<br />
    <asp:DropDownList ID="DDLtime" runat="server">
        <asp:ListItem>8:00-9:00</asp:ListItem>
        <asp:ListItem>9:00-10:00</asp:ListItem>
        <asp:ListItem>10:00-11:00</asp:ListItem>
        <asp:ListItem>11:00-12:00</asp:ListItem>
        <asp:ListItem>12:00-1:00</asp:ListItem>
        <asp:ListItem>1:00-2:00</asp:ListItem>
        <asp:ListItem>2:00-3:00</asp:ListItem>
        <asp:ListItem>3:00-4:00</asp:ListItem>
        <asp:ListItem>4:00-5:00</asp:ListItem>
        <asp:ListItem>5:00-6:00</asp:ListItem>
    </asp:DropDownList>
<br />
<asp:Label ID="Label4" runat="server" Text="confirm"></asp:Label>
<br />
<asp:DropDownList ID="DDLconfirmation" runat="server">
    <asp:ListItem>Confirm</asp:ListItem>
    <asp:ListItem>Cancel</asp:ListItem>
    <asp:ListItem>Review</asp:ListItem>
</asp:DropDownList>
<br />
<asp:Button ID="btnbookservice" runat="server" Text="Button" OnClick="btnbookservice_Click" />
    <br />
    <asp:Label ID="lblconfirm" runat="server" Text="confirm"></asp:Label>
<br />
</asp:Content>

