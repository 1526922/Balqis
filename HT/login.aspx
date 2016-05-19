<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
   
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/login.css" rel="stylesheet" />
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
         <p>
             <asp:Literal ID="logmsg" runat="server"></asp:Literal>
       
    </p>
        
    <p>Not register yet? 
        <asp:HyperLink ID="hyregister" runat="server" href="register.aspx">Register Here</asp:HyperLink></p>
</div>
</asp:Content>

