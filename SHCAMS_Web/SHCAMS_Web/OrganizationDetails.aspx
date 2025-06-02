<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrganizationDetails.aspx.cs" Inherits="SHCAMS_Web.OrganizationDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="5"><strong>ORGANIZATION DETAILS</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:GridView ID="dgvOrganizationDetails" runat="server" AutoGenerateColumns="False" CellPadding="3" Height="40px" Style="margin-right: 3px;" Width="911px">
                    <Columns>
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization Name" />
                        <asp:BoundField DataField="OrganizationType" HeaderText="Organization Type" />
                         <asp:BoundField DataField="OrganizationAddress" HeaderText="Organization Address" />
                         <asp:BoundField DataField="OrganizationHelpLineNumber" HeaderText="Help Line Number" />
                         <asp:BoundField DataField="OrganizationRegistraionNumber" HeaderText="Reg. Number" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
