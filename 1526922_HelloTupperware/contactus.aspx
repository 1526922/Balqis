<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="_1526922_HelloTupperware.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/contactus.css" rel="stylesheet" />
    <script
        src="http://maps.googleapis.com/maps/api/js">
        </script>

        <script>
        var myCenter=new google.maps.LatLng(4.8853633,114.93142122);

        function initialize()
        {
        var mapProp = {
          center:myCenter,
          zoom:17,
          mapTypeId:google.maps.MapTypeId.ROADMAP
          };

        var map=new google.maps.Map(document.getElementById("map"),mapProp);

        var marker=new google.maps.Marker({
          position:myCenter,
          });

        marker.setMap(map);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
        </script>
    
    <div id="place">
            <div id="contact-header">    
            <p>Question? Please leave your message here. We are happy to help.</p>
            </div>
 
                <div id="submitmsg">
                    <p><asp:Literal ID="litoutmsg" runat="server"></asp:Literal></p>
                    <p><label>Name</label></p>
                   <p><input ID="txtn" name="name" placeholder="Name Here" required ></p>
                    <p><Label>Email</Label></p>
                    <p><input ID="txtemail" name="email" type="email" placeholder="Email Here" required ></p>

                    <p><label>Subject</label></p>
                    <p><asp:TextBox ID="txtsubject" runat="server" TextMode="MultiLine" ></asp:TextBox><asp:RequiredFieldValidator ID="reqtxtsubject" runat="server" ErrorMessage="Please state your subject." ControlToValidate="txtsubject"></asp:RequiredFieldValidator></p>
                    
                    
                    <p><label>Message</label></p>
                    <p><asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator ID="reqtxtmsg" runat="server" ErrorMessage="Write your message here." ControlToValidate="txtmsg"></asp:RequiredFieldValidator></p>
                    <p><asp:Button ID="btnsend" runat="server" Text="SEND" OnClick="btnsend_Click" />
                      <asp:Button ID="btnreset" runat="server" Text="RESET"  OnClientClick="this.form.reset();return false;" />
                      
                    </p>
                </div>
         </div>
                
        <div id="map" style="width:500px;height:380px;"></div>
   
</asp:Content>
