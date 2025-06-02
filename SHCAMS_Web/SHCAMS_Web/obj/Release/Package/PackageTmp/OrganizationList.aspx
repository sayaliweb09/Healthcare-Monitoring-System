<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="OrganizationList.aspx.cs" Inherits="SHCAMS_Web.OrganizationList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: large;
        }
        .auto-style4 {
            width: 36px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4"><strong>ORGANIZATION LIST</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="ddlSelect" runat="server" Width="200px" OnSelectedIndexChanged="ddlSelect_SelectedIndexChanged" AutoPostBack="True" >
                    <asp:ListItem>ALL</asp:ListItem>
                    <asp:ListItem>APPROVED</asp:ListItem>
                    <asp:ListItem>DECLINE</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2" rowspan="3">
                <table class="auto-style1">
                    <tr>
                        <td rowspan="4" class="auto-style4">
                            <asp:GridView ID="dgvOrganizationList" runat="server" AutoGenerateColumns="False" CellPadding="3" Height="40px" Style="margin-right: 3px;" Width="773px">
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID" />
                                    <asp:BoundField DataField="OrganizationName" HeaderText="Name" />
                                    <asp:BoundField DataField="OrganizationType" HeaderText="Type" />
                                    <asp:BoundField DataField="OrganizationAddress" HeaderText="Address" />
                                    <asp:BoundField DataField="OrganizationHelpLineNumber" HeaderText="Help Line Number" />
                                    <asp:BoundField DataField="OrganizationRegistraionNumber" HeaderText="Registraion Number" />
                                    <asp:BoundField DataField="OrganizationManagerUIDNumber" HeaderText="Manager UID Number" />
                                    <asp:BoundField DataField="OrganizationManagerPassword" HeaderText="Manager Password" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
