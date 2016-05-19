<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminProd.aspx.cs" Inherits="Admin_adminProd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link href="../css/AdminProd.css" rel="stylesheet" />
    <div id="whole">
    <div id="Product_form">
        <h2>Update Products</h2>
  <p>
      <asp:Label ID="lblPID" runat="server" Text="Product ID:"/>
      <asp:TextBox ID="txtPid" runat="server"/>
  </p> 
  <p>
      <asp:Label ID="lblPName" runat="server" Text="Name:" />
      <asp:TextBox ID="txtPname" runat="server" TextMode="MultiLine"/>
  </p>    
  <p>
      <asp:Label ID="lblPdetail" runat="server" Text="Detail:"/>
      <asp:TextBox ID="txtPdetail" runat="server" TextMode="MultiLine"/>  
  </p>
  <p>
      <asp:Label ID="lblPprice" runat="server" Text="Price:"/>
      <asp:TextBox ID="txtPprice" runat="server"/> 
  </p>
  <p><asp:Label ID="lblPwarrenty" runat="server" Text="Warrenty:"/>
      
      <asp:TextBox ID="txtwarrenty" runat="server"/>  
  </p>
             <p><asp:Label ID="lblPstock" runat="server" Text=" Stock Avaliable:"/>
           <asp:TextBox ID="txtStock" runat="server"/>  
  </p>
  <p>
      <asp:Label ID="lblPimg" runat="server" Text="Product Image:"/>
      <asp:FileUpload ID="prodFileUpload" runat="server" />
  </p>
       <asp:Button ID="btninsert" runat="server" Text="INSERT" OnClick="btninsert_Click" />
        <p><asp:Label ID="lblcomplete" runat="server" /></p>
   </div> 
     <div id="product_data">
        <div style="text-align: center">
            <asp:GridView ID="ProdView" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Width="993px" CellSpacing="-1" GridLines="None">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="ProductDetail" HeaderText="ProductDetail" SortExpression="ProductDetail" />
            <asp:BoundField DataField="Warrenty" HeaderText="Warrenty" SortExpression="Warrenty" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
        </Columns>
       </asp:GridView>
     
        </div>
     
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringName %>" DeleteCommand="DELETE FROM [HTproduct] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([ProductDetail] = @original_ProductDetail) OR ([ProductDetail] IS NULL AND @original_ProductDetail IS NULL)) AND (([Warrenty] = @original_Warrenty) OR ([Warrenty] IS NULL AND @original_Warrenty IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))" InsertCommand="INSERT INTO [HTproduct] ([ProductID], [ProductName], [Price], [ProductDetail], [Warrenty], [Stock], [Image]) VALUES (@ProductID, @ProductName, @Price, @ProductDetail, @Warrenty, @Stock, @Image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ProductID], [ProductName], [Price], [ProductDetail], [Warrenty], [Stock], [Image] FROM [HTproduct]" UpdateCommand="UPDATE [HTproduct] SET [ProductName] = @ProductName, [Price] = @Price, [ProductDetail] = @ProductDetail, [Warrenty] = @Warrenty, [Stock] = @Stock, [Image] = @Image WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([ProductDetail] = @original_ProductDetail) OR ([ProductDetail] IS NULL AND @original_ProductDetail IS NULL)) AND (([Warrenty] = @original_Warrenty) OR ([Warrenty] IS NULL AND @original_Warrenty IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))">
           <DeleteParameters>
               <asp:Parameter Name="original_ProductID" Type="Int32" />
               <asp:Parameter Name="original_ProductName" Type="String" />
               <asp:Parameter Name="original_Price" Type="String" />
               <asp:Parameter Name="original_ProductDetail" Type="String" />
               <asp:Parameter Name="original_Warrenty" Type="String" />
               <asp:Parameter Name="original_Stock" Type="String" />
               <asp:Parameter Name="original_Image" Type="String" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="ProductID" Type="Int32" />
               <asp:Parameter Name="ProductName" Type="String" />
               <asp:Parameter Name="Price" Type="String" />
               <asp:Parameter Name="ProductDetail" Type="String" />
               <asp:Parameter Name="Warrenty" Type="String" />
               <asp:Parameter Name="Stock" Type="String" />
               <asp:Parameter Name="Image" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="ProductName" Type="String" />
               <asp:Parameter Name="Price" Type="String" />
               <asp:Parameter Name="ProductDetail" Type="String" />
               <asp:Parameter Name="Warrenty" Type="String" />
               <asp:Parameter Name="Stock" Type="String" />
               <asp:Parameter Name="Image" Type="String" />
               <asp:Parameter Name="original_ProductID" Type="Int32" />
               <asp:Parameter Name="original_ProductName" Type="String" />
               <asp:Parameter Name="original_Price" Type="String" />
               <asp:Parameter Name="original_ProductDetail" Type="String" />
               <asp:Parameter Name="original_Warrenty" Type="String" />
               <asp:Parameter Name="original_Stock" Type="String" />
               <asp:Parameter Name="original_Image" Type="String" />
           </UpdateParameters>
       </asp:SqlDataSource>
       
  </div>
        </div>
</asp:Content>

