<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="UserAppointmentRequest.aspx.cs" Inherits="SHCAMS_Web.UserAppointmentRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            text-align: center;
            font-size: large;
        }

        .auto-style3 {
            width: 242px;
        }

        .auto-style4 {
            width: 191px;
        }

        .auto-style5 {
            width: 220px;
        }

        .auto-style7 {
            font-size: medium;
        }
        .auto-style8 {
            width: 242px;
            height: 38px;
        }
        .auto-style9 {
            text-align: center;
            height: 38px;
        }
        .auto-style10 {
            height: 38px;
        }
        .auto-style11 {
            width: 242px;
            height: 39px;
        }
        .auto-style12 {
            text-align: center;
            height: 39px;
        }
        .auto-style13 {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4"><strong>APPOINTMENT REQUEST</strong></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">APPOINTMENT DATE</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtAppointmentDate" runat="server" Width="200px" AutoPostBack="True" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">SELECT ORGANIZATION TYPE</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlSelectOrganizationTpe" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="ddlSelectOrganizationTpe_SelectedIndexChanged" OnTextChanged="ddlSelectOrganizationTpe_TextChanged">
                    <asp:ListItem>Multispecialist</asp:ListItem>
                    <asp:ListItem>Clinic</asp:ListItem>
                    <asp:ListItem>Pathalogy</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">SELECT ORGANIZATION</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlSelectOrganization" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="ddlSelectOrganization_SelectedIndexChanged" OnTextChanged="ddlSelectOrganization_TextChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">SELECT DOCTOR</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlSelectDoctorName" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="ddlSelectDoctorName_SelectedIndexChanged" OnTextChanged="ddlSelectDoctorName_TextChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9" colspan="2">
                <asp:Button ID="btnSendRequest" runat="server" Text="SEND REQUEST" OnClick="btnSendRequest_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" Text="CLEAR" OnClick="btnClear_Click" />
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12" colspan="2"><strong>
                <asp:Label ID="lblTodaysDoctorStatus" runat="server" CssClass="auto-style7" ForeColor="Red" Visible="False"></asp:Label>
                </strong></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">DOCTOR CONTACT NUMBER</td>
            <td class="auto-style5">
                <asp:Label ID="lblDCoNo" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">DOCTOR EDUACATION DETAILS</td>
            <td class="auto-style5">
                <asp:Label ID="lblDED" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">DOCTOR DEDIGNATION</td>
            <td class="auto-style5">
                <asp:Label ID="lblDD" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
