<%@ Page Title="" Language="C#" MasterPageFile="~/Customers/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="PrivateHireRequest.aspx.cs" Inherits="Customers_PrivateHireRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 388px;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style22 {
            color: #FF0000;
            font-size: x-small;
        }
        .auto-style23 {
            color: #000000;
            font-size: medium;
            background-color: #99CCFF;
        }
        .auto-style24 {
            color: #99CCFF;
            background-color: #000000;
        }
        .auto-style25 {
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style26 {
            font-size: x-small;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
            <h1 class="auto-style24"> Enter your Preferences here !!!</h1>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">User id:</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtUid" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="regEmail" runat="server" ControlToValidate="txtUid" CssClass="auto-style26" ErrorMessage="&quot;enter your email id&quot;" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Date Start: </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtSdate" runat="server" TextMode="Date"></asp:TextBox>
               
                    <span class="auto-style18">
                <asp:CompareValidator ID="cmpStart0" runat="server" ControlToValidate="txtSdate" CssClass="auto-style22" Display="Dynamic" ErrorMessage="must be greater that today's date" Operator="GreaterThan" Type="Date"></asp:CompareValidator>
                    </span>
               
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Date End: </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtEnd" runat="server" TextMode="Date"></asp:TextBox>
                
                <asp:CompareValidator ID="cmpVal1" ControlToCompare="txtSdate" 
         ControlToValidate="txtEnd" Type="Date" Operator="GreaterThanEqual"   
         ErrorMessage="*Invalid Data" runat="server" CssClass="auto-style22"></asp:CompareValidator>
                
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Type:</td>
                    <td class="auto-style18">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                            <asp:ListItem>Select--</asp:ListItem>
                            <asp:ListItem>Petrol</asp:ListItem>
                            <asp:ListItem>Diseal</asp:ListItem>
                            <asp:ListItem>Hybrid</asp:ListItem>
                            <asp:ListItem>Manual</asp:ListItem>
                            <asp:ListItem>Automatic</asp:ListItem>
                        </asp:DropDownList>
               
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Capacity:</td>
                    <td class="auto-style18">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                            <asp:ListItem>Select--</asp:ListItem>
                            <asp:ListItem>5 Seater Car</asp:ListItem>
                            <asp:ListItem>9 Seater Car</asp:ListItem>
                            <asp:ListItem>12 Seater Van</asp:ListItem>
                        </asp:DropDownList>
               
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Date:</td>
                    <td class="auto-style18">
                        <asp:Label ID="lblDate" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="213px" CssClass="auto-style25" OnClick="btnSubmit_Click" />
                        <asp:Label ID="lblmsg" runat="server" CssClass="auto-style23"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>

