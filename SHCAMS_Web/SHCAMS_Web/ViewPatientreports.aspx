<%@ Page Title="" Language="C#" MasterPageFile="~/Department.Master" AutoEventWireup="true" CodeBehind="ViewPatientreports.aspx.cs" Inherits="SHCAMS_Web.ViewPatientreports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        font-size: large;
        text-align: center;
    }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="4"><strong>PATIENT REPORTS</strong></td>
    </tr>
    <tr>
        <td colspan="4">
                <asp:GridView ID="dgvPatientAppointmentReportList" runat="server" AutoGenerateColumns="False" CellPadding="3" Height="40px" Style="margin-right: 3px;" Width="911px">
                    <Columns>
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:CheckBox ID="chk" runat="server" />
                            </ItemTemplate>
                            <ControlStyle Height="20px" Width="30px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="AppointmentDateTime" HeaderText="AppointmentDate" />
                        <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization Name" />
                    </Columns>
                </asp:GridView>
            </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3" colspan="2"><strong>
            <asp:Button ID="btnViewReport" runat="server" CssClass="bold" OnClick="btnViewReport_Click" Text="VIEW REPORT" Width="203px" />
            </strong></td>
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
