<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmAdminLogin.aspx.cs" Inherits="SHCAMS_Web.frmadminlogin" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">

    <table class="style2" align="center" style="width: 938px">
    <tr>
        <td colspan="6" style="font-size: xx-large; color: #CC0000" class="auto-style4">
        <strong>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span class="auto-style3">WELCOME TO LOGIN</span></strong></td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="auto-style2">
            Select User</td>
        <td style="width: 5px">
            <asp:DropDownList ID="ddlSelectUser" runat="server" Width="142px">
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Organization</asp:ListItem>
                <asp:ListItem>Department</asp:ListItem>
                <asp:ListItem>User</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="auto-style2">
            UID Number</td>
        <td style="width: 5px">
            <asp:TextBox ID="txtUserName" runat="server" Width="142px" CssClass="style16"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style1" style="font-size: medium;">
            Password</td>
        <td style="width: 5px">
            <asp:TextBox ID="txtPassword" runat="server" Width="140px" CssClass="style16" 
                TextMode="Password"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 52px">
            </td>
        <td class="style3">
            </td>
        <td class="style15" style="height: 52px;" colspan="2">
            <span class="style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <strong>
            </span>
            <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="Log In" Width="106px" />
        </strong>
        </td>
        <td style="height: 52px">
            </td>
        <td class="style18" style="height: 52px">
            </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td colspan="2" class="style14">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
    </tr>
</table>
        </strong>
    </h2>
    <p>
        &nbsp;</p>

</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
    .style1
    {
            width: 90px;
        }
    .style2
    {
        width: 113px;
    }
    .style3
    {
        height: 52px;
        width: 161px;
    }
    .style4
    {
        width: 161px;
    }
        .auto-style2 {
            width: 90px;
            font-size: medium;
        }
    .auto-style3 {
        font-size: large;
    }
    .auto-style4 {
        height: 22px;
    }
    </style>
</asp:Content>



