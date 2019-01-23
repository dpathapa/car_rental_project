<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Customers_SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 57%;
        }
        .auto-style2 {
            width: 572px;
        }
        .auto-style3 {
            width: 572px;
            height: 50px;
        }
        .auto-style4 {
            height: 50px;
            width: 846px;
        }
        .auto-style5 {
            text-align: center;
            color: #99CCFF;
            background-color: #000000;
        }
        .auto-style6 {
            font-size: small;
            color: #FF0000;
        }
        .auto-style7 {
            width: 846px;
        }
        .auto-style8 {
            font-size: x-small;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="2">
                        <h3>Registration Form:</h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Firstname:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valFname" runat="server" ControlToValidate="txtFname" CssClass="auto-style8" Display="Dynamic" ErrorMessage="&quot;Your Firstname&quot;"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Lastname:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valLname" runat="server" ControlToValidate="txtLname" CssClass="auto-style8" Display="Dynamic" ErrorMessage="&quot;Your Lastname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender:</td>
                    <td class="auto-style7">
                        <asp:RadioButtonList ID="rbdGender" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Birthdate:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtDob" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valDob" runat="server" ControlToValidate="txtDob" CssClass="auto-style8" Display="Dynamic" ErrorMessage="&quot;Date of Birth&quot;"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valAddress" runat="server" ControlToValidate="txtAddress" CssClass="auto-style8" Display="Dynamic" ErrorMessage="&quot;Address&quot;"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone no:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="regPhone" runat="server" ControlToValidate="txtPhone" CssClass="auto-style13" ErrorMessage="&quot;Enter valid no.&quot;" style="color: #FF0000; font-size: x-small" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="rexpEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style13" Display="Dynamic" ErrorMessage="&quot;Enter valid email id&quot;" style="color: #FF0000; font-size: x-small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Licence no:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtLicence" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valLicence" runat="server" ControlToValidate="txtLicence" CssClass="auto-style8" Display="Dynamic" ErrorMessage="&quot;Enter your valid License no&quot;"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Licence issue date:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtIssue" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valissue" runat="server" ControlToValidate="txtIssue" CssClass="auto-style6" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Licence expire date:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtExpire" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:CompareValidator ID="comValexpire" runat="server" ControlToCompare="txtIssue" ControlToValidate="txtExpire" CssClass="auto-style13" Display="Dynamic" ErrorMessage="&quot;Expiry date must be greater than issue date&quot;" Operator="GreaterThan" style="color: #FF0000; font-size: x-small" Type="Date"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">User id:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtUid" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valId" runat="server" ControlToValidate="txtUid" CssClass="auto-style8" Display="Dynamic" ErrorMessage="&quot;Your email id&quot;"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valpass" runat="server" ControlToValidate="txtPass" CssClass="auto-style6" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtPconfirm" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="cmpMatch" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPconfirm" CssClass="auto-style8" ErrorMessage="&quot;password must match&quot;"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnRegister" runat="server" BackColor="Black" ForeColor="White" OnClick="btnRegister_Click" Text="Register" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
