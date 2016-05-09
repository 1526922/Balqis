<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="userpage.aspx.cs" Inherits="_1526922_HelloTupperware.userpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p><asp:Label ID="lblwelcome" runat="server" Text="Hello"></asp:Label>
    <asp:Button ID="btnout" runat="server" Text="Log Out" OnClick="btnout_Click" /></p>
</asp:Content>
