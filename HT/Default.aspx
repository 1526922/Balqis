<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/default.css" rel="stylesheet" />
    <div id="whole">
    <div id="Aboutus">
    <h1>About Us</h1>
    <p>Welcome to Hello Tupperware. Created in 2016 and still improving.</p>
    </div>
   <a class="label">Look Here >>></a>
   <div id="promoprod">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="Promo" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="220px" ImageUrl='<%# Eval("image","~/PromoImg/{0}") %>' Width="220px" />
                    </td>
                </tr>
                <tr>
                    <td  text-align: center">
                        <asp:Label ID="name" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td text-align: center">
                        <asp:Label ID="price" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="Promo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringName %>" SelectCommand="SELECT [image], [ProductName], [ProductPrice], [ID] FROM [HTpromo]"></asp:SqlDataSource>
        </div>

        </div>
</asp:Content>

