<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="OrganizationRequestList.aspx.cs" Inherits="SHCAMS_Web.OrganizationRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            width: 59px;
        }
        .auto-style4 {
            width: 36px;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2"><strong>ORGANIZATION REQUEST LIST</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td rowspan="4" class="auto-style4">
                            <asp:GridView ID="dgvOrganizationRequestList" runat="server" AutoGenerateColumns="False" CellPadding="3" Height="40px" Style="margin-right: 3px;" Width="773px">
                                <Columns>
                                    <asp:TemplateField HeaderText="Select">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chk" runat="server" />
                                        </ItemTemplate>
                                        <ControlStyle Height="20px" Width="30px" />
                                    </asp:TemplateField>
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
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="btnApprove" runat="server" Style="font-weight: 700; font-family: Cambria; font-size: medium" Text="APPROVED" OnClick="btnApprove_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="btnDecline" runat="server" Style="font-weight: 700; font-family: Cambria; font-size: medium" Text="DECLINE" OnClick="btnDecline_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
