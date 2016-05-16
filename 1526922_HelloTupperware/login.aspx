 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="_1526922_HelloTupperware.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/login.css" rel="stylesheet" />

  <div id="login_register">
     <div id="registerform">
       <h2>REGISTER FORM</h2>
      <p><label>Register ID:</label>
          <asp:TextBox ID="lblID" runat="server"></asp:TextBox></p> 
       <p><asp:Label ID="lblRname" runat="server" Text="Name:"  AssociatedControlID="txtname"></asp:Label>
       <asp:TextBox ID="txtname" runat="server"></asp:TextBox></p>
       <p><asp:Label ID="lblRusername" runat="server" Text="Username:"  AssociatedControlID="txtusername"></asp:Label>
       <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></p>
       <p><asp:Label ID="lblRpassword" runat="server" Text="Password"  AssociatedControlID="txtpassword"></asp:Label>
       <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></p>
       <p><asp:Label ID="lblRcpassword" runat="server" Text="Confirm Password"  AssociatedControlID="txtcpassword"></asp:Label>
       <asp:TextBox ID="txtcpassword" runat="server" TextMode="Password"></asp:TextBox> 
           <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtcpassword" ErrorMessage="CompareValidator" ForeColor="Red"></asp:CompareValidator>
         </p>
       <p><asp:Label ID="lblRemail" runat="server" Text="Email:"  AssociatedControlID="txtemail"></asp:Label>
       <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter valid Email address." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
       </p>
       <p><asp:Label ID="lblRraddress" runat="server" Text="Address"  AssociatedControlID="txtaddress"></asp:Label>
       <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></p>
        <p> <asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click" />
            <asp:Button ID="btnreset0" runat="server" OnClientClick="this.form.reset();return false;" Text="RESET" />
         </p>
        <p><asp:Label ID="lblregister" runat="server" Text="Your Now Register" Visible="false" ForeColor="Green"></asp:Label></p>   
   </div>

     <div id="loginform">
       <h2>LOG IN FORM</h2>
       <p><asp:Label ID="lblLname" runat="server" Text="Username:"  AssociatedControlID="txtLusername"></asp:Label>
       <asp:TextBox ID="txtLusername" runat="server"></asp:TextBox></p>
       <p><asp:Label ID="lblLpassword" runat="server" Text="Password:"  AssociatedControlID="txtLpassword"></asp:Label>
       <asp:TextBox ID="txtLpassword" runat="server" TextMode="Password"></asp:TextBox></p>
         <p>
             <asp:Button ID="btnlogin" runat="server" Text="Log In" OnClick="btnlogin_Click" />
             <asp:Button ID="btnreset" runat="server" Text="RESET"  OnClientClick="this.form.reset();return false;" />
         </p>
   </div>
      </div>
    
</asp:Content>
