<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="bookdoctor.aspx.cs" Inherits="HealthManagement.bookdoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Type of service you are requesting doctor for"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="DDLdoctor" runat="server">
     <asp:ListItem>Medical </asp:ListItem>
    <asp:ListItem>Surgical</asp:ListItem>
    <asp:ListItem>Obstetrical</asp:ListItem>
    <asp:ListItem>Anaesthesiology</asp:ListItem>
    <asp:ListItem>Labaratory</asp:ListItem>
    <asp:ListItem>Paediatric</asp:ListItem>
    <asp:ListItem>Radiology</asp:ListItem>
    <asp:ListItem>Physiotherapy</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Time"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="DDLtime" runat="server">
            <asp:ListItem>7:00-8:00</asp:ListItem>
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
            <asp:ListItem>6:00-7:00</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="btnconfirm" runat="server" OnClick="btnconfirm_Click" Text="Confirm" />
    </p>
<p>
    <asp:Label ID="lblconfirm" runat="server" Text="confirm"></asp:Label>
    </p>
</asp:Content>
