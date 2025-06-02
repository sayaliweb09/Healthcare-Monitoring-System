<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HospitalMap.aspx.cs" Inherits="SHCAMS_Web.HospitalMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id="form1">
        <div>
        <asp:Label ID="Label1" runat="server" Text="Hospital List"></asp:Label>
        <asp:DropDownList ID="ddlList" runat="server" OnSelectedIndexChanged="ddlList_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>--Select Hospital--</asp:ListItem>
            <asp:ListItem>SevenStar Hospital</asp:ListItem>
            <asp:ListItem>Wockhardt Hospitals</asp:ListItem>
            <asp:ListItem>Alexis Multispecialty Hospital</asp:ListItem>
            <asp:ListItem>Rahate Surgical Hospital</asp:ListItem>
            <asp:ListItem>Kingsway Hospitals</asp:ListItem>
            </asp:DropDownList>
            
        </div>
        <div>
            <br />
           
    <iframe id="ifrm" width="910" height="400" frameborder="0" style="border:0" allowfullscreen runat="server"></iframe>
</div>
        </div>
       
</asp:Content>
