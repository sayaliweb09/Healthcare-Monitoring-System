<%@ Page Title="" Language="C#" MasterPageFile="~/Department.Master" AutoEventWireup="true" CodeBehind="AppointmentList.aspx.cs" Inherits="SHCAMS_Web.AppointmentList" %>

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
            <td class="auto-style2" colspan="4"><strong>APPOINTMENT REQUEST LIST</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="4">SELECT DATE&nbsp;&nbsp;
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;
                <asp:Button ID="btnShowAppointmentRequest" runat="server" OnClick="btnShowAppointmentRequest_Click" Text="SHOW APPOINTMENT REQUEST" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="4">
                <asp:GridView ID="dgvPatientAppointmentRequestList" runat="server" AutoGenerateColumns="False" CellPadding="3" Height="40px" Style="margin-right: 3px;" Width="911px">
                    <Columns>
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:CheckBox ID="chk" runat="server" />
                            </ItemTemplate>
                            <ControlStyle Height="20px" Width="30px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                        <asp:BoundField DataField="PatientContactNumber" HeaderText="Contact Number" />
                        <asp:BoundField DataField="PatientAddress" HeaderText="Patient Address" />
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
            <td class="auto-style3" colspan="4">
                <asp:Button ID="btnApprove" runat="server" Style="font-weight: 700; font-family: Cambria; font-size: medium" Text="APPROVED" OnClick="btnApprove_Click" />
                &nbsp;
                <asp:Button ID="btnDecline" runat="server" Style="font-weight: 700; font-family: Cambria; font-size: medium" Text="DECLINE" OnClick="btnDecline_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
