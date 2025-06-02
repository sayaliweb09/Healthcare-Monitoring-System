<%@ Page Title="" Language="C#" MasterPageFile="~/Department.Master" AutoEventWireup="true" CodeBehind="DepartmentManageTodaysStatus.aspx.cs" Inherits="SHCAMS_Web.DepartmentManageTodaysStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: medium;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 304px;
        }
        .auto-style5 {
            width: 136px;
            height: 33px;
        }
        .auto-style6 {
            width: 201px;
        }
        .auto-style7 {
            width: 121px;
        }
        .auto-style8 {
            text-align: center;
            height: 33px;
        }
        .auto-style9 {
            width: 121px;
            height: 33px;
        }
        .auto-style10 {
            height: 33px;
        }
        .auto-style11 {
            width: 304px;
            height: 32px;
        }
        .auto-style12 {
            width: 121px;
            height: 32px;
        }
        .auto-style13 {
            width: 201px;
            height: 32px;
        }
        .auto-style14 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="4"><strong><span class="auto-style2">MANAGE TODAY STATUS</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
      <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">SELECT DATE</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtDate" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">SELECT STASTUS</td>
            <td class="auto-style13">
                <asp:DropDownList ID="ddlSelectDepartmentStatus" runat="server" Width="200px" Height="20px">
                    <asp:ListItem>NO VACANCY</asp:ListItem>
                    <asp:ListItem>OFF</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3" colspan="2">
                <asp:Button ID="btnSave" runat="server" Style="font-weight: 700; font-family: Cambria; font-size: medium" Text="SAVE" OnClick="btnSave_Click" Width="111px"  />
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
