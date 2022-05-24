<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HealthManagement.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label3" runat="server" Text="patientid"></asp:Label>
    <br />
</p>
<p>
    <asp:TextBox ID="txtpatientid" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
</p>
<p>
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
</p>
<p>
    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
</p>
    <p>
        <asp:Label ID="lblconfirm" runat="server" Text="confirm"></asp:Label>
</p>
</asp:Content>
