<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orderpage.aspx.cs" Inherits="orderpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/orderpage.css" rel="stylesheet" />
     <div id="order">
    <h2>Order Form</h2>
    <p> 

    <asp:Label ID="lblmsg" runat="server" Text="We have accept your order." Visible="false" ForeColor="Green"></asp:Label></p>
     
    <p>
    <label>Order No:</label>
    <asp:TextBox ID="lblorderID" runat="server"></asp:TextBox>
    </p>
    <p>
    <label>Date:</label>
    <asp:Label ID="lbldatentime" runat="server" ></asp:Label>
    </p>
    <p> 
    <asp:Label ID="lblOname" runat="server" Text="Full Name:"/>
    <asp:TextBox ID="txtOname" runat="server" Width="190px"/>
    </p>
    <p> 
    <asp:Label ID="lblOaddress" runat="server" Text="Home Address:"/></p>
    <p><asp:TextBox ID="txtOaddress" runat="server" TextMode="MultiLine" Width="200px"/>
    </p>
    <p> 
    <asp:Label ID="lblOdistrict" runat="server" Text="District:"/></p>
   <p> <asp:TextBox ID="txtdistrict" runat="server" Text="eg. KB,Bandar,Tutong,Temburong " Width="200px"/>
    </p>
    <p> 
    <asp:Label ID="lblOorder" runat="server" Text="Product Code & Quantity:"/></p>
    <p><asp:TextBox ID="txtOorder" runat="server" Text="eg.321(2) code(quantity)" TextMode="MultiLine" Width="200px"/>
    </p>
    <p> 
    <asp:Label ID="lblOphone" runat="server" Text="Phone No.(For easy contact)"/></p>
    <p class="phone"><asp:TextBox ID="txtOphone" runat="server" TextMode="Phone" Text="+673*******" Width="200px"/>
    </p>
        <p><asp:Button ID="btnSend" runat="server" Text="Order" OnClick="btnSend_Click" />
            <asp:Button ID="btnreset" runat="server" OnClientClick="this.form.reset();return false;" Text="RESET" />
         </p>

   </div>
</asp:Content>


