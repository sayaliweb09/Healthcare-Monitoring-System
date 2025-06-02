<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="SHCAMS_Web.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: large;
            text-align: center;
        }
        .auto-style4 {
            width: 166px;
        }
        .auto-style5 {
            width: 252px;
        }
        .auto-style6 {
            width: 273px;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4"><strong>USER REGISTRATION</strong></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">PATIENT NAME</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPatientName" runat="server" Width="200px" onkeypress="return AllowAlphabet(event)"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">PATIENT GENDER</td>
            <td class="auto-style5">
                <asp:RadioButton ID="rbtMale" runat="server" Checked="True" GroupName="GENDER" Text=" Male" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbtFemale" runat="server" GroupName="GENDER" Text=" Female" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">PATIENT ADDRESS</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPatientAddress" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">PATIENT CONTACT NO</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPatientContactNumber" runat="server" Width="200px" TextMode="Phone" onkeypress="return numbersonly(event)" MaxLength="10"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">PATIENT DOB</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPatientDOB" runat="server" Width="200px" TextMode="Date" AutoPostBack="True" MaxLength="10"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">PATIENT EMAIL ID&nbsp;</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPatientEmailID" runat="server" Width="200px" TextMode="Email" AutoPostBack="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">PATIENT UID NUMBER</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPatientUIDNumber" runat="server" Width="200px" onkeypress="return numbersonly(event)" MaxLength="12"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">PATIENT PASSWORD</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPatientPassword" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7" colspan="2">
                <asp:Button ID="btnRegister" runat="server" Text="REGISTER" OnClick="btnRegister_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="CLEAR" OnClick="btnReset_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
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
