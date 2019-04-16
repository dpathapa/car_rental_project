<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="C_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="C_id" HeaderText="C_id" InsertVisible="False" ReadOnly="True" SortExpression="C_id" />
            <asp:BoundField DataField="Userid" HeaderText="Userid" SortExpression="Userid" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Phone_no" HeaderText="Phone_no" SortExpression="Phone_no" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="License_no" HeaderText="License_no" SortExpression="License_no" />
            <asp:BoundField DataField="License_issue_date" HeaderText="License_issue_date" SortExpression="License_issue_date" />
            <asp:BoundField DataField="License_expire_date" HeaderText="License_expire_date" SortExpression="License_expire_date" />
            <asp:BoundField DataField="Customer_status" HeaderText="Customer_status" SortExpression="Customer_status" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mtaAsgnmntConnectionString %>" DeleteCommand="DELETE FROM [CustTble] WHERE [C_id] = @C_id" InsertCommand="INSERT INTO [CustTble] ([Userid], [Password], [Firstname], [Lastname], [Gender], [Age], [Address], [Phone_no], [Email], [License_no], [License_issue_date], [License_expire_date], [Customer_status]) VALUES (@Userid, @Password, @Firstname, @Lastname, @Gender, @Age, @Address, @Phone_no, @Email, @License_no, @License_issue_date, @License_expire_date, @Customer_status)" SelectCommand="SELECT * FROM [CustTble]" UpdateCommand="UPDATE [CustTble] SET [Userid] = @Userid, [Password] = @Password, [Firstname] = @Firstname, [Lastname] = @Lastname, [Gender] = @Gender, [Age] = @Age, [Address] = @Address, [Phone_no] = @Phone_no, [Email] = @Email, [License_no] = @License_no, [License_issue_date] = @License_issue_date, [License_expire_date] = @License_expire_date, [Customer_status] = @Customer_status WHERE [C_id] = @C_id">
        <DeleteParameters>
            <asp:Parameter Name="C_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Userid" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Phone_no" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="License_no" Type="String" />
            <asp:Parameter DbType="Date" Name="License_issue_date" />
            <asp:Parameter DbType="Date" Name="License_expire_date" />
            <asp:Parameter Name="Customer_status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Userid" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Phone_no" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="License_no" Type="String" />
            <asp:Parameter DbType="Date" Name="License_issue_date" />
            <asp:Parameter DbType="Date" Name="License_expire_date" />
            <asp:Parameter Name="Customer_status" Type="String" />
            <asp:Parameter Name="C_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
 
</asp:Content>

