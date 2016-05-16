<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="userregister.aspx.cs" Inherits="_1526922_HelloTupperware.userregister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlRegisterUser" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringName %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [customerID], [username], [password], [cpassword] FROM [HTclient]">
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlRegisterUser">
    <Columns>
        <asp:BoundField DataField="customerID" HeaderText="customerID" SortExpression="customerID" />
        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
        <asp:BoundField DataField="cpassword" HeaderText="cpassword" SortExpression="cpassword" />
    </Columns>
</asp:GridView>
</asp:Content>
