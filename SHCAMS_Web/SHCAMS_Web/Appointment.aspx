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

        .auto-style4 {
            width: 143px;
        }

        .auto-style5 {
            width: 161px;
        }

        .auto-style9 {
            text-align: center;
        }

        .auto-style10 {
            width: 161px;
            text-align: center;
        }

        .auto-style11 {
            width: 195px;
            text-align: center;
        }

        .auto-style14 {
            font-size: medium;
        }

        .auto-style15 {
            width: 162px;
        }

        .auto-style16 {
            width: 195px;
        }

        .auto-style17 {
            width: 162px;
            height: 13px;
        }

        .auto-style18 {
            text-align: center;
            height: 13px;
        }

        .auto-style19 {
            height: 13px;
        }
        .auto-style20 {
            text-align: center;
            font-size: small;
            height: 36px;
        }
        .auto-style22 {
            width: 268px;
        }
        .auto-style23 {
            width: 212px;
        }
        .auto-style24 {
            width: 268px;
            height: 45px;
        }
        .auto-style25 {
            text-align: center;
            height: 45px;
        }
        .auto-style26 {
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="4"><strong>PATIENT APPOINTMENT</strong></td>
        </tr>
        <tr>
            <td class="auto-style20" colspan="4"><strong>SELECT TEST :
                <asp:RadioButton ID="rbtBloodTest" runat="server" GroupName="Test" Text="BLOOD TEST" AutoPostBack="True" OnCheckedChanged="rbtBloodTest_CheckedChanged" />
                </strong>&nbsp;<strong><asp:RadioButton ID="rbtUrineTest" runat="server" GroupName="Test" Text="URINE TEST" AutoPostBack="True" OnCheckedChanged="rbtUrineTest_CheckedChanged" />
                </strong>&nbsp;<strong><asp:RadioButton ID="rbtBoth" runat="server" GroupName="Test" Text="BOTH" AutoPostBack="True" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="4">
                <table width="80%" align="center">
                    <tr>
                        <td style="text-align: left">
                            <asp:Button Text="BLOOD TEST" BorderStyle="None" ID="tabBloodTest" CssClass="Initial" runat="server"
                                OnClick="tabBloodTest_Click" />
                            <asp:Button Text="URINE TEST" BorderStyle="None" ID="tabUrineTest" CssClass="Initial" runat="server"
                                OnClick="tabUrineTest_Click" />
                            <asp:MultiView ID="MainView" runat="server">
                                <asp:View ID="ViewBloodTest" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td class="auto-style15">
                                                <strong></strong>
                                            </td>
                                            <td class="auto-style11"><strong>TEST</strong></td>
                                            <td class="auto-style10"><strong>RESULT</strong></td>
                                            <td><strong></strong></td>
                                        </tr>
                                        <tr class="auto-style14">
                                            <td class="auto-style15">&nbsp;</td>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15"><span class="auto-style14"></span></td>
                                            <td class="auto-style16">Hemoglobin</span></td>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="txtHemoglobin" runat="server" CssClass="auto-style14" Width="150px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style14">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15"><span class="auto-style14"></span></td>
                                            <td class="auto-style16">Red Blood Cell Count </span></td>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="txtRedBloodCellCount" runat="server" CssClass="auto-style14" Width="150px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style14">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15"><span class="auto-style14"></span></td>
                                            <td class="auto-style16">WBC Count</span></td>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="txtWBCCount" runat="server" CssClass="auto-style14" Width="150px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style14">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15"><span class="auto-style14"></span></td>
                                            <td class="auto-style16">Platelte Count</span></td>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="txtPlatelteCount" runat="server" CssClass="auto-style14" Width="150px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style14">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15"><span class="auto-style14"></span></td>
                                            <td class="auto-style16">Lymphocytes</span></td>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="txtLymphocytes" runat="server" CssClass="auto-style14" Width="150px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style14">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15"><span class="auto-style14"></span></td>
                                            <td class="auto-style16">Neutrophils</span></td>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="txtNeutrophils" runat="server" CssClass="auto-style14" Width="150px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style14">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15"><span class="auto-style14"></span></td>
                                            <td class="auto-style16">Monocyles</span></td>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="txtMonocyles" runat="server" CssClass="auto-style14" Width="150px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style14">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15"><span class="auto-style14"></span></td>
                                            <td class="auto-style16">Eosinophils</span></td>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="txtEosinophils" runat="server" CssClass="auto-style14" Width="150px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style14">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15"><span class="auto-style14"></span></td>
                                            <td class="auto-style16">Packed Cell Volume</span></td>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="txtPackedCellVolume" runat="server" CssClass="auto-style14" Width="150px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style14">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15">&nbsp;</td>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td class="auto-style14">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15">&nbsp;</td>
                                            <td class="auto-style9" colspan="2"><strong>
                                                <asp:Button ID="btnClear" runat="server" CssClass="bold" OnClick="btnClear_Click" Text="CLEAR" Width="130px" />
                                                </strong></td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style17"></td>
                                            <td class="auto-style18" colspan="2"></td>
                                            <td class="auto-style19"></td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="ViewUrineTest" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                                <table class="auto-style1">
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style11"><strong>TEST</strong></td>
                                                        <td class="auto-style10"><strong>RESULT</strong></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">&nbsp;</td>
                                                        <td class="auto-style5">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">Volume</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtVolume" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">Color</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtColor" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">Appearance</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtAppearance" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">Bilirubin</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtBilirubin" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">Ketones</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtKetones" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">Blood</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtBlood" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">PH</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtPH" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">Protein</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtProtein" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">WBC</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtWBC" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">RBC</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtRBC" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">Bacteria</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtBacteria" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">EPI Cell</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtEPICell" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">Mucus</td>
                                                        <td class="auto-style5">
                                                            <asp:TextBox ID="txtMucus" runat="server" Width="150px"></asp:TextBox>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td class="auto-style16">&nbsp;</td>
                                                        <td class="auto-style5">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">&nbsp;</td>
                                                        <td colspan="2" class="auto-style9">
                                                            <strong>
                                                            <asp:Button ID="btnClearUrineTest" runat="server" CssClass="bold" Text="CLEAR" Width="130px" OnClick="btnClearUrineTest_Click"  />
                                                            </strong>
                                                        </td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style17"></td>
                                                        <td class="auto-style19" colspan="2"></td>
                                                        <td class="auto-style19"></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style25" colspan="2"><strong>
                <asp:Button ID="btnClearAll" runat="server" CssClass="bold" Text="CLEAR ALL" OnClick="btnClearAll_Click" />
                &nbsp;&nbsp;
            <asp:Button ID="btnSave" runat="server" CssClass="bold" OnClick="btnSave_Click" Text="SAVE" Width="107px" />
                &nbsp;&nbsp;
            </strong></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
