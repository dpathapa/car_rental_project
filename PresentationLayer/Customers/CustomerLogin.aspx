<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerLogin.aspx.cs" Inherits="Customers_CustomerLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 232px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            background-color: #000000;
            text-align: center;
        }
        .auto-style5 {
            color: #99CCFF;
        }
        .auto-style6 {
            text-align: center;
            color: #99CCFF;
            background-color: #000000;
        }
        .auto-style7 {
            color: #FFFFFF;
        }
        .auto-style8 {
            font-size: x-small;
        }
        .auto-style9 {
            text-align: left;
        }
    </style>
</head>
<body>
  
    <form id="form1" runat="server">
        <div>
            <div class="auto-style3" >

                <h1 class="auto-style4"><span class="auto-style5">Banger &amp; Co Car Rentals</span><br />
                </h1>
                 <h3 class="auto-style9"> Customer login Page!!</h3>
            </div>
            <table  class="auto-style1">
                <tr>
                    <td class="auto-style2">User ID :</td>
                    <td>
                        <asp:TextBox ID="txtUid" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valUid" runat="server" ControlToValidate="txtUid" CssClass="auto-style8" Display="Dynamic" ErrorMessage="&quot;Email id&quot;" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td>
                        <asp:TextBox ID="txtUpass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valUpass" runat="server" ControlToValidate="txtUpass" CssClass="auto-style8" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnClogin" runat="server" Text="Login" OnClick="btnClogin_Click" />
                    &nbsp;<asp:Button ID="btnSignup" runat="server" Text="Sign Up" />
&nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style9">
                        <asp:Panel ID="Panel1" runat="server">
                            <div class="auto-style6">
                                <span>12 Church Street, Birmingham B45 6RY</span><br /> <span class="auto-style5">Contact: 01256789098/ email: </span><span class="auto-style8"><a href="mailto:write2banger@gmai.co.uk"><span class="auto-style7">write2banger@gmail.co.uk</span></a></span>
                            </div>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
