<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Vehicle.aspx.cs" Inherits="Admin_Vehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Vid" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Vid" HeaderText="Vid" InsertVisible="False" ReadOnly="True" SortExpression="Vid" />
            <asp:BoundField DataField="Vehicle_reg" HeaderText="Vehicle_reg" SortExpression="Vehicle_reg" />
            <asp:BoundField DataField="Vehicle_make" HeaderText="Vehicle_make" SortExpression="Vehicle_make" />
            <asp:BoundField DataField="Vehicle_type" HeaderText="Vehicle_type" SortExpression="Vehicle_type" />
            <asp:BoundField DataField="Vehicle_category" HeaderText="Vehicle_category" SortExpression="Vehicle_category" />
            <asp:BoundField DataField="Vehicle_capacity" HeaderText="Vehicle_capacity" SortExpression="Vehicle_capacity" />
            <asp:BoundField DataField="Cost_per_day" HeaderText="Cost_per_day" SortExpression="Cost_per_day" />
            <asp:BoundField DataField="Vehicle_Status" HeaderText="Vehicle_Status" SortExpression="Vehicle_Status" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mtaAsgnmntConnectionString %>" DeleteCommand="DELETE FROM [VehicleTble] WHERE [Vid] = @Vid" InsertCommand="INSERT INTO [VehicleTble] ([Vehicle_reg], [Vehicle_make], [Vehicle_type], [Vehicle_category], [Vehicle_capacity], [Cost_per_day], [Vehicle_Status]) VALUES (@Vehicle_reg, @Vehicle_make, @Vehicle_type, @Vehicle_category, @Vehicle_capacity, @Cost_per_day, @Vehicle_Status)" SelectCommand="SELECT * FROM [VehicleTble]" UpdateCommand="UPDATE [VehicleTble] SET [Vehicle_reg] = @Vehicle_reg, [Vehicle_make] = @Vehicle_make, [Vehicle_type] = @Vehicle_type, [Vehicle_category] = @Vehicle_category, [Vehicle_capacity] = @Vehicle_capacity, [Cost_per_day] = @Cost_per_day, [Vehicle_Status] = @Vehicle_Status WHERE [Vid] = @Vid">
        <DeleteParameters>
            <asp:Parameter Name="Vid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Vehicle_reg" Type="String" />
            <asp:Parameter Name="Vehicle_make" Type="String" />
            <asp:Parameter Name="Vehicle_type" Type="String" />
            <asp:Parameter Name="Vehicle_category" Type="String" />
            <asp:Parameter Name="Vehicle_capacity" Type="String" />
            <asp:Parameter Name="Cost_per_day" Type="Decimal" />
            <asp:Parameter Name="Vehicle_Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Vehicle_reg" Type="String" />
            <asp:Parameter Name="Vehicle_make" Type="String" />
            <asp:Parameter Name="Vehicle_type" Type="String" />
            <asp:Parameter Name="Vehicle_category" Type="String" />
            <asp:Parameter Name="Vehicle_capacity" Type="String" />
            <asp:Parameter Name="Cost_per_day" Type="Decimal" />
            <asp:Parameter Name="Vehicle_Status" Type="String" />
            <asp:Parameter Name="Vid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
&nbsp;


</asp:Content>

