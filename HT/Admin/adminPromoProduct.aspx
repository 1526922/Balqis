<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminPromoProduct.aspx.cs" Inherits="Admin_adminPromoProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link href="../css/adminHome.css" rel="stylesheet" />
    <div id="whole">
    <div id="homepage">
    <h2>Promo Products</h2>
        <p>
        <asp:label ID="lblAPid" runat="server" text="ID:"/>
        <asp:textbox ID="txtAPid" runat="server"/>
        </p>
    <p>
        <asp:label ID="lblAPimg" runat="server" text="Product Picture:"/>
    </p>
   <p>
        <asp:fileupload id="uploadpromoimg" runat="server"></asp:fileupload>
    </p>
    <p>
        <asp:label ID="lblAPname" runat="server" text="Product Name:"/>
        <asp:textbox ID="txtAPname" runat="server"/>
    </p>
    <p>
        <asp:label ID="lblAPprice" runat="server" text="Product Price:"/>
        <asp:textbox ID="txtAPprice" runat="server"/>
    </p>
    <asp:button ID="btnpromo" runat="server" text="Promo!" OnClick="btnpromo_Click" />
        <asp:label ID="lblpromo" runat="server"></asp:label>   
    </div>
    <div id="promoGrib">
        <div style="text-align: center">
            <asp:GridView ID="GV" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="promoItem" Width="858px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="promoItem" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringName %>" DeleteCommand="DELETE FROM [HTpromo] WHERE [ID] = @original_ID AND [image] = @original_image AND [ProductName] = @original_ProductName AND [ProductPrice] = @original_ProductPrice" InsertCommand="INSERT INTO [HTpromo] ([image], [ProductName], [ProductPrice], [ID]) VALUES (@image, @ProductName, @ProductPrice, @ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [image], [ProductName], [ProductPrice], [ID] FROM [HTpromo]" UpdateCommand="UPDATE [HTpromo] SET [image] = @image, [ProductName] = @ProductName, [ProductPrice] = @ProductPrice WHERE [ID] = @original_ID AND [image] = @original_image AND [ProductName] = @original_ProductName AND [ProductPrice] = @original_ProductPrice">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="String" />
                    <asp:Parameter Name="original_image" Type="String" />
                    <asp:Parameter Name="original_ProductName" Type="String" />
                    <asp:Parameter Name="original_ProductPrice" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="ProductPrice" Type="String" />
                    <asp:Parameter Name="ID" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="ProductPrice" Type="String" />
                    <asp:Parameter Name="original_ID" Type="String" />
                    <asp:Parameter Name="original_image" Type="String" />
                    <asp:Parameter Name="original_ProductName" Type="String" />
                    <asp:Parameter Name="original_ProductPrice" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
        </div> 
</asp:Content>

