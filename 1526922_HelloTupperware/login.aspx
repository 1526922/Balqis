<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="_1526922_HelloTupperware.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/login.css" rel="stylesheet" />
  <div id="login_register">
     <div id="registerform">
       <h2>REGISTER FORM</h2>
       <p><label>Full Name:</label>
       <asp:TextBox ID="txtname" runat="server"></asp:TextBox></p>
       <p><label>Username:</label>
       <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></p>
       <p><label>Password:</label>
       <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></p>
       <p><label>Confirm Password:</label>
       <asp:TextBox ID="txtcpassword" runat="server"></asp:TextBox></p>
       <p><label>Email:</label>
       <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></p>
       <p><label>Home Address:</label>
       <asp:TextBox ID="txtaddress" runat="server" Width="132px"></asp:TextBox></p>
        <p> <asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click" /></p>
        <p><asp:Label ID="lblregister" runat="server" Text="Label" Visible="false" ForeColor="Green"></asp:Label></p>

          <!-- <asp:CreateUserWizard ID="SignUpFormWizard" runat="server">
               <WizardSteps>
                   <asp:CreateUserWizardStep runat="server" />
                   <asp:CompleteWizardStep runat="server" />
               </WizardSteps>
           </asp:CreateUserWizard>-->
         
   </div>
     <div id="loginform">
       <h2>LOG IN FORM</h2>
       <p><label>Username:</label>
       <asp:TextBox ID="txtLusername" runat="server"></asp:TextBox></p>
       <p><label>Username:</label>
       <asp:TextBox ID="txtLpassword" runat="server"></asp:TextBox></p>
   </div>
      </div>
</asp:Content>
