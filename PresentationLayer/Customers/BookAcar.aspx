<%@ Page Title="" Language="C#" MasterPageFile="~/Customers/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="BookAcar.aspx.cs" Inherits="Customers_BookAcar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">


        .auto-style10 {
            width: 100%;
            background-color: #000000;
        }
        .auto-style17 {
            width: 477px;
            text-align: right;
            color: #99CCFF;
            background-color: #000000;
        }
        .auto-style16 {
            background-color: #000000;
            text-align: left;
        }
        .auto-style18 {
            color: #99CCFF;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style19 {
            background-color: #999999;
        }
        .auto-style20 {
            color: #000000;
            background-color: #999999;
        }
        .auto-style21 {
            text-align: left;
        }
        .auto-style22 {
            color: #FF0000;
            font-size: x-small;
        }
        .auto-style23 {
            width: 477px;
            text-align: right;
            color: #99CCFF;
            background-color: #000000;
            height: 64px;
        }
        .auto-style24 {
            background-color: #000000;
            text-align: left;
            height: 64px;
        }
         .auto-style25 {
             width: 477px;
             text-align: right;
             color: #99CCFF;
             background-color: #000000;
             height: 54px;
         }
         .auto-style26 {
             background-color: #000000;
             text-align: left;
             height: 54px;
         }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
    <div>
        <table align ="center" class="auto-style10">
            <tr>
                <td class="auto-style23">Start Date:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="txtStart" runat="server" CssClass="auto-style18" format="dd/MM/yyyy" TextMode="Date"  ></asp:TextBox>
                    <span class="auto-style18">&nbsp;<asp:CompareValidator ID="cmpStart" runat="server" ControlToValidate="txtStart" CssClass="auto-style22" Display="Dynamic" ErrorMessage="must be greater that today's date" Operator="GreaterThan" Type="Date"></asp:CompareValidator>
                    </span></td>
                               
            </tr>
            <tr>
                <td class="auto-style17">Pick-up Time:</td>
                <td class="auto-style16">
                    <asp:DropDownList ID="ddlPickup" runat="server">
                        <asp:ListItem>08:00am</asp:ListItem>
                        <asp:ListItem>08:30am</asp:ListItem>
                        <asp:ListItem>09:00am</asp:ListItem>
                        <asp:ListItem>09:30am</asp:ListItem>
                        <asp:ListItem>10:00am</asp:ListItem>
                        <asp:ListItem>10:30am</asp:ListItem>
                        <asp:ListItem>11:00am</asp:ListItem>
                        <asp:ListItem>11:30am</asp:ListItem>
                        <asp:ListItem>12:00pm</asp:ListItem>
                        <asp:ListItem>12:30pm</asp:ListItem>
                        <asp:ListItem>13:00pm</asp:ListItem>
                        <asp:ListItem>13:30pm</asp:ListItem>
                        <asp:ListItem>14:00pm</asp:ListItem>
                        <asp:ListItem>14:30pm</asp:ListItem>
                        <asp:ListItem>15:00pm</asp:ListItem>
                        <asp:ListItem>15:30pm</asp:ListItem>
                        <asp:ListItem>16:00pm</asp:ListItem>
                        <asp:ListItem>16:30pm</asp:ListItem>
                        <asp:ListItem>17:00pm</asp:ListItem>
                        <asp:ListItem>17:30pm</asp:ListItem>
                        <asp:ListItem>18:00pm</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">Return Date:</td>
                <td class="auto-style26">
                    <asp:TextBox ID="txtReturn" runat="server" CssClass="auto-style18" format="dd/MM/yyyy" TextMode="Date"></asp:TextBox>
                <asp:CompareValidator ID="cmpVal1" ControlToCompare="txtStart" 
         ControlToValidate="txtReturn" Type="Date" Operator="GreaterThanEqual"   
         ErrorMessage="*Invalid Data" runat="server" CssClass="auto-style22"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Pick-Up Time:</td>
                <td class="auto-style16">
                    <asp:DropDownList ID="ddlDropoff" runat="server" CssClass="auto-style19">
                        <asp:ListItem>08:00am</asp:ListItem>
                        <asp:ListItem>08:30am</asp:ListItem>
                        <asp:ListItem>09:00am</asp:ListItem>
                        <asp:ListItem>09:30am</asp:ListItem>
                        <asp:ListItem>10:00am</asp:ListItem>
                        <asp:ListItem>10:30am</asp:ListItem>
                        <asp:ListItem>11:00am</asp:ListItem>
                        <asp:ListItem>11:30am</asp:ListItem>
                        <asp:ListItem>12:00pm</asp:ListItem>
                        <asp:ListItem>12:30pm</asp:ListItem>
                        <asp:ListItem>13:00pm</asp:ListItem>
                        <asp:ListItem>13:30pm</asp:ListItem>
                        <asp:ListItem>14:00pm</asp:ListItem>
                        <asp:ListItem>14:30pm</asp:ListItem>
                        <asp:ListItem>15:00pm</asp:ListItem>
                        <asp:ListItem>15:30pm</asp:ListItem>
                        <asp:ListItem>16:00pm</asp:ListItem>
                        <asp:ListItem>16:30pm</asp:ListItem>
                        <asp:ListItem>17:00pm</asp:ListItem>
                        <asp:ListItem>17:30pm</asp:ListItem>
                        <asp:ListItem>18:00pm</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Age:</td>
                <td class="auto-style16">
                    <asp:RadioButtonList ID="rbdAge" runat="server" AutoPostBack="True" CssClass="auto-style18" RepeatDirection="Horizontal">
                        <asp:ListItem>Below 25</asp:ListItem>
                        <asp:ListItem>Above 25</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <br />
                </td>
                <td class="auto-style21">
                    <asp:Button ID="btncheck" runat="server" CssClass="auto-style13" Height="60px" OnClick="btncheck_Click" style="color: #FFFFFF; background-color: #000000" Text="Check Available Cars" Width="350px" />
                  
                    <br />
                    <asp:DataList ID="dtSmallCars" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CaptionAlign="Top" CellPadding="4" CellSpacing="4" CssClass="auto-style20" DataKeyField="Vid" DataSourceID="SqlDataSource1" OnItemCommand="dtSmallCars_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal" style="background-color: #000000">
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="#FFFFCC" Height="48px" />
                        <ItemStyle BackColor="White" ForeColor="#330099" />
                        <ItemTemplate>
                            <div class="auto-style14">
                                <table align="center" cellspacing="1" class="auto-style20">
                                    <tr>
                                        <td class="auto-style14">Vid:
                                            <asp:Label ID="lblVid" runat="server" Text='<%# Eval("Vid") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">Reg. No.:Reg. No.:<asp:Label ID="lblReg" runat="server" Text='<%# Eval("Vehicle_reg") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">Make:
                                            <asp:Label ID="lblMake" runat="server" Text='<%# Eval("Vehicle_make") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">Type:
                                            <asp:Label ID="lblType" runat="server" Text='<%# Eval("Vehicle_type") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">Category:
                                            <asp:Label ID="lblCat" runat="server" Text='<%# Eval("Vehicle_category") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">Capacity:
                                            <asp:Label ID="lblCap" runat="server" Text='<%# Eval("Vehicle_capacity") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">Price per day: £Price per day: £<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Cost_per_day") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style14">Status:
                                            <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Vehicle_Status") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">
                                            <asp:Button ID="btnSelect" runat="server" CommandArgument='<%# Eval("Vid")%>' CommandName="Select" Text="SELECT" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mtaAsgnmntConnectionString %>" SelectCommand="SELECT * FROM [VehicleTble] WHERE (([Vehicle_capacity] = @Vehicle_capacity) AND ([Vehicle_Status] = @Vehicle_Status))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dtSmallCars" DefaultValue="Small Family" Name="Vehicle_capacity" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="dtSmallCars" DefaultValue="IN" Name="Vehicle_Status" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DataList ID="dtSmallCars0" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CaptionAlign="Top" CellPadding="4" CellSpacing="4" CssClass="auto-style20" DataKeyField="Vid" DataSourceID="SqlDataSource2" OnItemCommand="dtSmallCars0_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal" style="background-color: #000000">
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="#FFFFCC" Height="48px" />
                        <ItemStyle BackColor="White" ForeColor="#330099" />
                        <ItemTemplate>
                            <div class="auto-style14">
                                <table  cellspacing="1" class="auto-style15">
                                    <tr>
                                        <td class="auto-style20">Vid:
                                            <asp:Label ID="lblVid0" runat="server" Text='<%# Eval("Vid") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20">Reg. No.:Reg. No.:<asp:Label ID="lblReg0" runat="server" Text='<%# Eval("Vehicle_reg") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20">Make:
                                            <asp:Label ID="lblMake0" runat="server" Text='<%# Eval("Vehicle_make") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20">Type:
                                            <asp:Label ID="lblType0" runat="server" Text='<%# Eval("Vehicle_type") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20">Category:
                                            <asp:Label ID="lblCat0" runat="server" Text='<%# Eval("Vehicle_category") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20">Capacity:
                                            <asp:Label ID="lblCap0" runat="server" Text='<%# Eval("Vehicle_capacity") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20">Price per day: £Price per day: £<asp:Label ID="lblPrice0" runat="server" Text='<%# Eval("Cost_per_day") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20">Status:
                                            <asp:Label ID="lblStatus0" runat="server" Text='<%# Eval("Vehicle_Status") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">
                                            <asp:Button ID="btnSelect0" runat="server" CommandArgument='<% # Eval("Vid")%> ' CommandName="Select1" Text="SELECT" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mtaAsgnmntConnectionString %>" SelectCommand="SELECT * FROM [VehicleTble] WHERE ([Vehicle_Status] = @Vehicle_Status)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dtSmallCars0" DefaultValue="IN" Name="Vehicle_Status" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>

