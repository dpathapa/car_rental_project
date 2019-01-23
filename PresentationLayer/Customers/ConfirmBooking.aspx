<%@ Page Title="" Language="C#" MasterPageFile="~/Customers/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="ConfirmBooking.aspx.cs" Inherits="Customers_ConfirmBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 277px;
        }
        .auto-style13 {
            color: #FF3300;
            font-size: x-small;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style23 {
            width: 277px;
            height: 50px;
        }
        .auto-style24 {
            text-align: left;
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <asp:GridView ID="grdSelected" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Vid" HeaderText="Vehicle ID" />
            <asp:BoundField DataField="Vehicle_reg" HeaderText="Registration No" />
            <asp:BoundField DataField="Vehicle_make" HeaderText="Make" />
            <asp:BoundField DataField="Vehicle_type" HeaderText="Type" />
            <asp:BoundField DataField="Vehicle_category" HeaderText="Category" />
            <asp:BoundField DataField="Vehicle_capacity" HeaderText="Capacity" />
            <asp:BoundField DataField="Cost_per_day" HeaderText="Price /day" />
            <asp:BoundField DataField="Vehicle_Status" HeaderText="Availability" />
        </Columns>
    </asp:GridView>

     <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
        <br />
    <table  class="auto-style10">
        <tr>
            
            <td class="auto-style11">Start Date:</td>
            <td class="auto-style18">
                <asp:Label runat="server" ID="txtstartDate"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style11">Pick Up:</td>
            <td class="auto-style18">
                <asp:Label runat="server" ID="txtPick_up"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style11">Start Date:</td>
            <td class="auto-style18">
                <asp:Label runat="server" ID="txtReturnDate"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style11">Drop off:</td>
            <td class="auto-style18">
                <asp:Label runat="server" ID="txtDrop_off"></asp:Label>
            </td>
            </tr>
         <tr>
            <td class="auto-style23">Date of booking:</td>
            <td class="auto-style24">
                 <asp:Label runat="server" ID="txtDate" format="dd/MM/yyyy"></asp:Label>
              
            </td>
        </tr>
              
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style18">
                <asp:Button ID="btnBook" runat="server" Text="Confirm Booking" OnClick="btnBook_Click"  />
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
    </table>

</asp:Content>

