<%@ Page Title="" Language="C#" MasterPageFile="~/Organization.Master" AutoEventWireup="true" CodeBehind="OrganizationDoctorRegistration.aspx.cs" Inherits="SHCAMS_Web.OrganizationDoctorRegistration" %>

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
            width: 249px;
        }

        .auto-style4 {
            width: 222px;
        }

        .auto-style5 {
            width: 15px;
        }

        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4"><strong>ORGANIZATION DOCTOR REGISTRATION</strong></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">DOCTOR NAME</td>
            <td class="auto-style5"><strong>
                <asp:TextBox ID="txtDoctorName" runat="server" Width="200px" onkeypress="return AllowAlphabet(event)"></asp:TextBox>
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">DOCTOR ADDRESS</td>
            <td class="auto-style5"><strong>
                <asp:TextBox ID="txtDoctorAddress" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">DOCTOR CONTACT NUMBER</td>
            <td class="auto-style5"><strong>
                <asp:TextBox ID="txtDoctorContactNumber" runat="server" Width="200px" TabIndex="10" onkeypress="return numbersonly(event)" MaxLength="10"></asp:TextBox>
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">DOCTOR EDUCATION DETAILS</td>
            <td class="auto-style5"><strong>
                <asp:TextBox ID="txtDoctorEducationDetails" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">DOCTOR DESIGNATION</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlDoctorDesignation" runat="server" Width="205px" AutoPostBack="True">
                  
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">DOCTOR EMAIL ID</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtDoctorEmailID" runat="server" Width="200px" TextMode="Email"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">DOCTOR UID NUMBER</td>
            <td class="auto-style5"><strong>
                <asp:TextBox ID="txtDoctorUIDNumber" runat="server" Width="200px" TabIndex="12" onkeypress="return numbersonly(event)" MaxLength="12"></asp:TextBox>
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">DOCTOR PASSWORD</td>
            <td class="auto-style5"><strong>
                <asp:TextBox ID="txtDoctorPassword" runat="server" Width="200px"></asp:TextBox>
            </strong></td>
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
            <td class="auto-style6" colspan="2">
                <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="REGISTER" />
                &nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" Text="CLEAR" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>


    <script type="text/javascript">
        function AllowAlphabet(e) {
            isIE = document.all ? 1 : 0
            keyEntry = !isIE ? e.which : event.keyCode;
            if (((keyEntry >= 65) && (keyEntry <= 90)) || ((keyEntry >= 97) && (keyEntry <= 122)) || (keyEntry == 46) || (keyEntry == 32) || keyEntry == 45)
                return true;
            else {
                alert("Please Enter Only Character values.\nOnly [A-Za-z] Allowed.");
                return false;
            }
        }

        function numbersonly(e) {
            var unicode = e.charCode ? e.charCode : e.keyCode
            if (unicode != 8) { //if the key isn't the backspace key (which we should allow)
                if (unicode < 48 || unicode > 57) //if not a number
                {
                    event.returnValue = false;
                    alert("Please Enter Only Numeric values.\nOnly 0-9 Allowed.");
                }
            }
        }
    </script>
</asp:Content>
