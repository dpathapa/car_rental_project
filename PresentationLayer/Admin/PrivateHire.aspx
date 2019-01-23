<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="PrivateHire.aspx.cs" Inherits="Admin_PrivateHire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Hire_no" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Hire_no" HeaderText="Hire_no" ReadOnly="True" SortExpression="Hire_no" />
            <asp:BoundField DataField="Company Name" HeaderText="Company Name" SortExpression="Company Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Contact No" HeaderText="Contact No" SortExpression="Contact No" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Hired_status" HeaderText="Hired_status" SortExpression="Hired_status" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="U_id" HeaderText="U_id" SortExpression="U_id" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mtaAsgnmntConnectionString %>" SelectCommand="SELECT * FROM [PrivateHire]" DeleteCommand="DELETE FROM [PrivateHire] WHERE [Hire_no] = @Hire_no" InsertCommand="INSERT INTO [PrivateHire] ([Hire_no], [Company Name], [Address], [Contact No], [Email], [Hired_status], [Date], [U_id]) VALUES (@Hire_no, @Company_Name, @Address, @Contact_No, @Email, @Hired_status, @Date, @U_id)" UpdateCommand="UPDATE [PrivateHire] SET [Company Name] = @Company_Name, [Address] = @Address, [Contact No] = @Contact_No, [Email] = @Email, [Hired_status] = @Hired_status, [Date] = @Date, [U_id] = @U_id WHERE [Hire_no] = @Hire_no">
        <DeleteParameters>
            <asp:Parameter Name="Hire_no" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Hire_no" Type="Int32" />
            <asp:Parameter Name="Company_Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Contact_No" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Hired_status" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="U_id" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Company_Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Contact_No" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Hired_status" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="U_id" Type="String" />
            <asp:Parameter Name="Hire_no" Type="Int32" />
        </UpdateParameters>
     </asp:SqlDataSource>
</asp:Content>

