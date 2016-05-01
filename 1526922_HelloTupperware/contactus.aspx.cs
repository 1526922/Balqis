using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;



namespace _1526922_HelloTupperware
{
    public partial class contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsend_Click(object sender, EventArgs e)
        {

            // Sends email using a mail server that requires login credentials and a secure connection, e.g. gmail

            //create mail client and message with to and from address, and set message subject and body
            SmtpClient mailClient = new SmtpClient();
            mailClient.Port = 587;
            mailClient.Host = "smtp.gmail.com";
            
            //settings sepcific to the mail service, e.g. server location, port number and that ssl is required
            mailClient.EnableSsl = true;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("tupperwarehello@gmail.com", "@dm1N123");
            //create credentials - e.g. username and password for the account
            MailMessage msg = new MailMessage("tupperwarehello@gmail.com", "tupperwarehello@gmail.com");
            mailClient.Credentials = credentials;
            msg = new MailMessage("tupperwarehello@gmail.com", "tupperwarehello@gmail.com");
            msg.Subject = txtsubject.Text;
            msg.Body =txtmsg.Text;

            try
            {
                mailClient.Send(msg);
                litoutmsg.Text = "<p>Mail send</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                litoutmsg.Text = "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
            
      }
    }

}