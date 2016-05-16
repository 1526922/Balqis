<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="_1526922_HelloTupperware.Admin.adminpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
     <p>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" Width="601px">
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                 <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                 <asp:BoundField DataField="ProductDetail" HeaderText="ProductDetail" SortExpression="ProductDetail" />
                 <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                 <asp:BoundField DataField="ProductWarrenty" HeaderText="ProductWarrenty" SortExpression="ProductWarrenty" />
                 <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                 <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="product.aspx?Id={0}" Text="Image" />
             </Columns>
         </asp:GridView>
     </p>
        admin
    <p><asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="ProductID" DefaultMode="Insert">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductDetail:
            <asp:TextBox ID="ProductDetailTextBox" runat="server" Text='<%# Bind("ProductDetail") %>' />
            <br />
            ProductPrice:
            <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductWarrenty:
            <asp:TextBox ID="ProductWarrentyTextBox" runat="server" Text='<%# Bind("ProductWarrenty") %>' />
            <br />
            Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ProductID:
            <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductDetail:
            <asp:TextBox ID="ProductDetailTextBox" runat="server" Text='<%# Bind("ProductDetail") %>' />
            <br />
            ProductPrice:
            <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductWarrenty:
            <asp:TextBox ID="ProductWarrentyTextBox" runat="server" Text='<%# Bind("ProductWarrenty") %>' />
            <br />
            Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductDetail:
            <asp:Label ID="ProductDetailLabel" runat="server" Text='<%# Bind("ProductDetail") %>' />
            <br />
            ProductPrice:
            <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductWarrenty:
            <asp:Label ID="ProductWarrentyLabel" runat="server" Text='<%# Bind("ProductWarrenty") %>' />
            <br />
            Image:
            <asp:Label ID="ImageLabel" runat="server" Text='<%# Bind("Image") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringName %>" DeleteCommand="DELETE FROM [HTproducts] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDetail] = @original_ProductDetail) OR ([ProductDetail] IS NULL AND @original_ProductDetail IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductWarrenty] = @original_ProductWarrenty) OR ([ProductWarrenty] IS NULL AND @original_ProductWarrenty IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))" InsertCommand="INSERT INTO [HTproducts] ([ProductID], [ProductName], [ProductDetail], [ProductPrice], [ProductWarrenty], [Image]) VALUES (@ProductID, @ProductName, @ProductDetail, @ProductPrice, @ProductWarrenty, @Image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ProductID], [ProductName], [ProductDetail], [ProductPrice], [ProductWarrenty], [Image] FROM [HTproducts]" UpdateCommand="UPDATE [HTproducts] SET [ProductName] = @ProductName, [ProductDetail] = @ProductDetail, [ProductPrice] = @ProductPrice, [ProductWarrenty] = @ProductWarrenty, [Image] = @Image WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDetail] = @original_ProductDetail) OR ([ProductDetail] IS NULL AND @original_ProductDetail IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductWarrenty] = @original_ProductWarrenty) OR ([ProductWarrenty] IS NULL AND @original_ProductWarrenty IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="String" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDetail" Type="String" />
                <asp:Parameter Name="original_ProductPrice" Type="String" />
                <asp:Parameter Name="original_ProductWarrenty" Type="String" />
                <asp:Parameter Name="original_Image" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDetail" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="String" />
                <asp:Parameter Name="ProductWarrenty" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDetail" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="String" />
                <asp:Parameter Name="ProductWarrenty" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="original_ProductID" Type="String" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDetail" Type="String" />
                <asp:Parameter Name="original_ProductPrice" Type="String" />
                <asp:Parameter Name="original_ProductWarrenty" Type="String" />
                <asp:Parameter Name="original_Image" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
