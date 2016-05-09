<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="_1526922_HelloTupperware.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function passwordvalidation() {
            var txtpassword = document.getElementById("txtpassword").value
            var txtcpassword = document.getElementById("txtcpassword").value
            if (txtpassword != txtcpassword){
                document.getElementById("txtpassword").style.borderColor = red;
                document.getElementById("txtcpassword").style.borderColor = red;
                alert("Password id not MATCH");
            }
        }
    </script>

    <div id="register"  onsubmit="passwordvalidation">
    <p><asp:Label ID="lblreg" runat="server" Text="Your Now Register" Visible="false" ForeColor="Green"></asp:Label></p>
    <p><asp:Label ID="lblname" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    </p>
    <p><asp:Label ID="lbluname" runat="server" Text="Usesrname"></asp:Label><asp:TextBox ID="txtuname" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="regtxtusername" runat="server" ErrorMessage="Please Enter username" ControlToValidate="txtuname"></asp:RegularExpressionValidator></p>
    
        <!--<p><asp:Label ID="lblpassword" runat="server" Text="Passsword:"></asp:Label>
       <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="regtxtpassword" 
                                       runat="server" 
                                       ErrorMessage="Password must be at less 1 number, have uppercase and lowercase and 8 digit long."
                                       ValidateExpress="^[\d{1}a-zA-Z'.\s]{1,8}$"
                                       ControlToValidate="txtpassword"></asp:RegularExpressionValidator> 

       </p>-->
       <p><input id="txtpassword" type="password" />
       </p>
       <p><input id="txtcpassword" type="password" />
       </p>


    <p><asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label><asp:TextBox ID="txtemail" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="regtxtemail" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txtemail"></asp:RegularExpressionValidator></p>
    <p><asp:Label ID="lbladdress" runat="server" Text="Address:"></asp:Label><asp:TextBox ID="txtaddress" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="regtxtaddress" runat="server" ErrorMessage="Please Enter you Home Address" ControlToValidate="txtaddress"></asp:RegularExpressionValidator></p>
    <asp:Button ID="btnregester1" runat="server" Text="Register" OnClick="btnregester1_Click" />
     <asp:Button ID="btnreset1" runat="server" Text="RESET"  OnClientClick="this.form.reset();return false;" />
     <input id="Button1" type="Submit" value="button" />
        </div>
</asp:Content>
