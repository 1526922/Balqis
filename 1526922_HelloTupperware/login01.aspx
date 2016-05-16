<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login01.aspx.cs" Inherits="_1526922_HelloTupperware.login01" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/login01.css" rel="stylesheet" />
    <div id="loginform">
    <h2>LOG IN FORM</h2>
    <p>
        <asp:Label ID="lblLname" runat="server" AssociatedControlID="txtLusername" Text="Username:"></asp:Label>
        <asp:TextBox ID="txtLusername" runat="server"></asp:TextBox>
     </p>
    <p>
        <asp:Label ID="lblLpassword" runat="server" AssociatedControlID="txtLpassword" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtLpassword" runat="server" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="Log In" />
       
    </p>
        <asp:Button ID="btnadmin" runat="server" Text="Admin Log" OnClick="btnadmin_Click" />
    <p>Not register yet? 
        <asp:HyperLink ID="hyregister" runat="server" href="register.aspx">Register Here</asp:HyperLink></a></p>
</div>
</asp:Content>
