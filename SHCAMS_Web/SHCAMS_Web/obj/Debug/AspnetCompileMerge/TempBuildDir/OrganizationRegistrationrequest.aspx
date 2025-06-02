<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrganizationRegistrationrequest.aspx.cs" Inherits="SHCAMS_Web.OrganizationRegistrationrequest" %>

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
            width: 247px;
        }

        .auto-style4 {
            width: 132px;
        }

        .auto-style6 {
            text-align: center;
        }

        .auto-style7 {
            width: 222px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4"><strong>ORGANIZATION REGISTRATION REQUEST</strong></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">ORGANIZATION NAME </td>
            <td class="auto-style4"><strong>
                <asp:TextBox ID="txtOrganizationName" runat="server" Width="200px" onkeypress="return AllowAlphabet(event)"></asp:TextBox>
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">ORGANIZATION TYPE</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlOrganizationType" runat="server" Width="205px">
                    <asp:ListItem>Multispecialist</asp:ListItem>
                    <asp:ListItem>Clinic</asp:ListItem>
                    <asp:ListItem>Pathalogy</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">ORGANIZATION ADDRESS</td>
            <td class="auto-style4"><strong>
                <asp:TextBox ID="txtOrganizationAddress" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">ORGANIZATION HELP LINE NUMBER</td>
            <td class="auto-style4"><strong>
                <asp:TextBox ID="txtOrganizationHelpLineNumber" runat="server" Width="200px" onkeypress="return numbersonly(event)"></asp:TextBox>
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">ORGANIZATION REGISTRATION NUMBER</td>
            <td class="auto-style4"><strong>
                <asp:TextBox ID="txtOrganizationRegistraionNumber" runat="server" Width="200px"></asp:TextBox>
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">ORGANIZATION MANAGER EMAIL ID</td>
            <td class="auto-style4"><strong>
                <asp:TextBox ID="txtOrganizationManagerEmailID" runat="server" Width="200px" TextMode="Email"></asp:TextBox>
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">ORGANIZATION MANAGER UID NUMBER</td>
            <td class="auto-style4"><strong>
                <asp:TextBox ID="txtOrganizationManagerUIDNumber" runat="server" Width="200px" MaxLength="12" onkeypress="return numbersonly(event)"></asp:TextBox>
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">ORGANIZATION MANAGER PASSWORD</td>
            <td class="auto-style4"><strong>
                <asp:TextBox ID="txtOrganizationManagerPassword" runat="server" Width="200px"></asp:TextBox>
            </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style6" colspan="2">
                <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="REGISTER" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="CLEAR" OnClick="btnClear_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
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
