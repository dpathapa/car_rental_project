<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Reservations.aspx.cs" Inherits="Admin_Reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Booking_id" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Booking_id" HeaderText="Booking_id" InsertVisible="False" ReadOnly="True" SortExpression="Booking_id" />
        <asp:BoundField DataField="Booking_date" HeaderText="Booking_date" SortExpression="Booking_date" />
        <asp:BoundField DataField="Start_date" HeaderText="Start_date" SortExpression="Start_date" />
        <asp:BoundField DataField="Return_date" HeaderText="Return_date" SortExpression="Return_date" />
        <asp:BoundField DataField="C_id" HeaderText="C_id" SortExpression="C_id" />
        <asp:BoundField DataField="Vid" HeaderText="Vid" SortExpression="Vid" />
        <asp:BoundField DataField="Extension_days" HeaderText="Extension_days" SortExpression="Extension_days" />
        <asp:BoundField DataField="Extension_return_date" HeaderText="Extension_return_date" SortExpression="Extension_return_date" />
    </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mtaAsgnmntConnectionString %>" DeleteCommand="DELETE FROM [BookingsTble] WHERE [Booking_id] = @Booking_id" InsertCommand="INSERT INTO [BookingsTble] ([Booking_date], [Start_date], [Return_date], [C_id], [Vid], [Extension_days], [Extension_return_date]) VALUES (@Booking_date, @Start_date, @Return_date, @C_id, @Vid, @Extension_days, @Extension_return_date)" SelectCommand="SELECT * FROM [BookingsTble]" UpdateCommand="UPDATE [BookingsTble] SET [Booking_date] = @Booking_date, [Start_date] = @Start_date, [Return_date] = @Return_date, [C_id] = @C_id, [Vid] = @Vid, [Extension_days] = @Extension_days, [Extension_return_date] = @Extension_return_date WHERE [Booking_id] = @Booking_id">
    <DeleteParameters>
        <asp:Parameter Name="Booking_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter DbType="Date" Name="Booking_date" />
        <asp:Parameter Name="Start_date" Type="DateTime" />
        <asp:Parameter Name="Return_date" Type="DateTime" />
        <asp:Parameter Name="C_id" Type="Int32" />
        <asp:Parameter Name="Vid" Type="Int32" />
        <asp:Parameter Name="Extension_days" Type="Int32" />
        <asp:Parameter Name="Extension_return_date" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter DbType="Date" Name="Booking_date" />
        <asp:Parameter Name="Start_date" Type="DateTime" />
        <asp:Parameter Name="Return_date" Type="DateTime" />
        <asp:Parameter Name="C_id" Type="Int32" />
        <asp:Parameter Name="Vid" Type="Int32" />
        <asp:Parameter Name="Extension_days" Type="Int32" />
        <asp:Parameter Name="Extension_return_date" Type="DateTime" />
        <asp:Parameter Name="Booking_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

