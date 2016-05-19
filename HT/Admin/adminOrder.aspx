<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminOrder.aspx.cs" Inherits="Admin_adminOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
    <asp:GridView ID="dataOrder" runat="server" AutoGenerateColumns="False" CellSpacing="-1" DataKeyNames="orderId" DataSourceID="SqlDataSource1" GridLines="None" Width="1037px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
            <asp:BoundField DataField="orderId" HeaderText="orderId" ReadOnly="True" SortExpression="orderId" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="fullName" HeaderText="fullName" SortExpression="fullName" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
            <asp:BoundField DataField="CodeNQty" HeaderText="CodeNQty" SortExpression="CodeNQty" />
            <asp:BoundField DataField="phoneNo" HeaderText="phoneNo" SortExpression="phoneNo" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringName %>" DeleteCommand="DELETE FROM [HTcustomerOrder] WHERE [orderId] = @original_orderId AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND [fullName] = @original_fullName AND [Address] = @original_Address AND [District] = @original_District AND [CodeNQty] = @original_CodeNQty AND [phoneNo] = @original_phoneNo" InsertCommand="INSERT INTO [HTcustomerOrder] ([orderId], [date], [fullName], [Address], [District], [CodeNQty], [phoneNo]) VALUES (@orderId, @date, @fullName, @Address, @District, @CodeNQty, @phoneNo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [orderId], [date], [fullName], [Address], [District], [CodeNQty], [phoneNo] FROM [HTcustomerOrder]" UpdateCommand="UPDATE [HTcustomerOrder] SET [date] = @date, [fullName] = @fullName, [Address] = @Address, [District] = @District, [CodeNQty] = @CodeNQty, [phoneNo] = @phoneNo WHERE [orderId] = @original_orderId AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND [fullName] = @original_fullName AND [Address] = @original_Address AND [District] = @original_District AND [CodeNQty] = @original_CodeNQty AND [phoneNo] = @original_phoneNo">
        <DeleteParameters>
            <asp:Parameter Name="original_orderId" Type="String" />
            <asp:Parameter Name="original_date" Type="String" />
            <asp:Parameter Name="original_fullName" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_District" Type="String" />
            <asp:Parameter Name="original_CodeNQty" Type="String" />
            <asp:Parameter Name="original_phoneNo" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="orderId" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="fullName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="District" Type="String" />
            <asp:Parameter Name="CodeNQty" Type="String" />
            <asp:Parameter Name="phoneNo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="fullName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="District" Type="String" />
            <asp:Parameter Name="CodeNQty" Type="String" />
            <asp:Parameter Name="phoneNo" Type="String" />
            <asp:Parameter Name="original_orderId" Type="String" />
            <asp:Parameter Name="original_date" Type="String" />
            <asp:Parameter Name="original_fullName" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_District" Type="String" />
            <asp:Parameter Name="original_CodeNQty" Type="String" />
            <asp:Parameter Name="original_phoneNo" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

