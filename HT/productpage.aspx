<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="productpage.aspx.cs" Inherits="productpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/product.css" rel="stylesheet" />
    <div id="product">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2"></asp:Repeater>
    <table >
        <tr>
            <td><asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource2" RepeatColumns="2" RepeatDirection="Horizontal" BorderColor="Black" BorderWidth="1px" GridLines="Both" Width="700px">
                <ItemTemplate>
                    <table style="width: 484px">
                        <tr>
                            <td style="text-align: center" colspan="2">
                                <strong>
                                <asp:Label ID="Name" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                <br />
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center" rowspan="4">
                                <asp:Image ID="img" runat="server" Height="200px" ImageUrl='<%# Eval("Image","~/Images/{0}") %>' Width="200px" />
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="Label2" runat="server" Text="Product"></asp:Label>
                                <asp:Label ID="id" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <strong>Price:</strong><asp:Label ID="price" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left"><strong>Discription:</strong><br />
                                <asp:Label ID="detail" runat="server" Text='<%# Eval("ProductDetail") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <table style="width: 286px">
                                    <tr>
                                        <td style="text-align: left"><strong>Warrenty:</strong><asp:Label ID="warrenty" runat="server" Text='<%# Eval("Warrenty") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringName %>" SelectCommand="SELECT [ProductID], [ProductName], [Price], [ProductDetail], [Warrenty], [Stock], [Image] FROM [HTproduct]"></asp:SqlDataSource>
            </td>
            
        </tr>
    </table>
        </div>
</asp:Content>

