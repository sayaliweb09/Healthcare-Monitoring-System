<%@ Page Title="" Language="C#" MasterPageFile="~/Organization.Master" AutoEventWireup="true" CodeBehind="OrganizationDoctorRegistrationList.aspx.cs" Inherits="SHCAMS_Web.OrganizationDoctorRegistrationList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4"><strong>ORGANIZATION DOCTOR REGISTRATION LIST</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2" rowspan="2">
                            <asp:GridView ID="dgvOrganizationDoctorRegistrationList" runat="server" AutoGenerateColumns="False" CellPadding="3" Height="40px" Style="margin-right: 3px;" Width="773px">
                                <Columns>
                                  
                                    <asp:BoundField DataField="DoctorName" HeaderText="Full Name" />
                                    <asp:BoundField DataField="DoctorAddress" HeaderText="Address" />
                                    <asp:BoundField DataField="DoctorContactNumber" HeaderText="Contact Number" />
                                    <asp:BoundField DataField="DoctorEducationDetails" HeaderText="Education Details" />
                                    <asp:BoundField DataField="DoctorDesignation" HeaderText="Designation" />
                                    <asp:BoundField DataField="DoctorUIDNumber" HeaderText="UID Number" />
                                    <asp:BoundField DataField="DoctorPassword" HeaderText="Password" />
                                </Columns>
                            </asp:GridView>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
