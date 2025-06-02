<%@ Page Title="" Language="C#" MasterPageFile="~/Department.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="SHCAMS_Web.Appointment" %>
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
            width: 317px;
        }
        .auto-style4 {
            width: 143px;
        }
        .auto-style5 {
            width: 161px;
        }
        .auto-style6 {
            width: 317px;
            height: 54px;
        }
        .auto-style7 {
            text-align: center;
            font-size: large;
            height: 54px;
        }
        .auto-style8 {
            height: 54px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            width: 161px;
            text-align: center;
        }
        .auto-style11 {
            width: 143px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="4"><strong>PATIENT APPOINTMENT</strong></td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7" colspan="2"><strong>BLOOD TEST</strong></td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style3"><strong></strong></td>
        <td class="auto-style11"><strong>TEST</strong></td>
        <td class="auto-style10"><strong>RESULT</strong></td>
        <td><strong></strong></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">Hemoglobin</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtHemoglobin" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">Red Blood Cell Count </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtRedBloodCellCount" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">WBC Count</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtWBCCount" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">Platelte Count</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtPlatelteCount" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">Lymphocytes</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtLymphocytes" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">Neutrophils</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtNeutrophils" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">Monocyles</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtMonocyles" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">Eosinophils</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtEosinophils" runat="server" Width="150px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style4">Packed Cell Volume</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtPackedCellVolume" runat="server" Width="150px"></asp:TextBox>
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
        <td class="auto-style9" colspan="2"><strong>
            <asp:Button ID="btnClear" runat="server" CssClass="bold" OnClick="btnClear_Click" Text="CLEAR" />
&nbsp;&nbsp;
            <asp:Button ID="btnSave" runat="server" CssClass="bold" OnClick="btnSave_Click" Text="SAVE" />
&nbsp;&nbsp;
            <asp:Button ID="btnView" runat="server" CssClass="bold" Text="VIEW" OnClick="btnView_Click" style="width: 50px" />
            </strong></td>
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
