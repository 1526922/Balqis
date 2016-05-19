<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/register.css" rel="stylesheet" />

    <div id="registerform">
       <h1>REGISTER FORM</h1>
      <p>
            <asp:Label ID="lblregister" runat="server" Text="Your Now Register" Visible="false" ForeColor="Green"></asp:Label>
      </p>
        <p>
            <label>Register ID:</label>
          <asp:TextBox ID="lblID" runat="server"></asp:TextBox>
      </p> 
       <p>
            <asp:Label ID="lblRusername" runat="server" Text="Username:"  AssociatedControlID="txtusername"></asp:Label>
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
       </p>
       <p>
           <asp:Label ID="lblRpassword" runat="server" Text="Password"  AssociatedControlID="txtpassword"></asp:Label>
           <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
       </p>
       <p>
           <asp:Label ID="lblRcpassword" runat="server" Text="Confirm Password"  AssociatedControlID="txtcpassword"></asp:Label>
           <asp:TextBox ID="txtcpassword" runat="server" TextMode="Password"></asp:TextBox> 
           <asp:CompareValidator ID="CompareValidator1" 
                                runat="server" 
                                ControlToCompare="txtpassword"
                                ControlToValidate="txtcpassword" 
                                ErrorMessage="The confirm password is not similar to the password above." 
                                ForeColor="Red"></asp:CompareValidator>
       </p>
        <p> 
            <asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click" />
           
         </p>
   </div>
</asp:Content>

