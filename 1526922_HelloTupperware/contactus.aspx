<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="_1526922_HelloTupperware.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/contactus.css" rel="stylesheet" />
    <div id="place">
            <div id="contact-header">    
            <p>Question? Please leave your message here. We are happy to help.</p>
            </div>
 
               <div id="contacttable">
                    <p><a class ="contact-info">Contact Us</a></p>
                    <p>Leave your message in the form provided. </p>
                    <p><a class="care-info">Customer Care</a></p>
                    <p>U<a class="contact-data">rgent question please email us personally</a>: &#39;<a class="care-email">care.hellotupperware.gmail.com</a>&#39;</p>
           
                </div>
                <div id="submit-msg">
                    <p><asp:TextBox ID="txtname" runat="server" Width="140px">NAME</asp:TextBox></p>
                    <p><asp:TextBox ID="txtemail" runat="server" Width="171px">EMAIL</asp:TextBox> </p>
                    <p><asp:TextBox ID="txtmsg" runat="server" Height="57px" Width="169px">MESSAGE</asp:TextBox></p>
                    <p><asp:Button ID="Button1" runat="server" Text="SEND" />
                        <asp:Button ID="Button2" runat="server" Text="RESET" />
                    </p>
                </div>

                <div id="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3975.3239948902255!2d114.93080965366376!3d4.885304502225227!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcacd96016959ec39!2sLaksamana+College+of+Business!5e0!3m2!1sen!2s!4v1460525795937" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
        
    </div>
</asp:Content>
