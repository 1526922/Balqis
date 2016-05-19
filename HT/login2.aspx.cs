using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string[] users = { "admin" };
        string[] passwords = { "helloadmin123" };
        for (int i = 0; i < users.Length; i++)
        {
            bool validUsername = (string.Compare(txtLusername.Text, users[i], true) == 0);
            bool validPassword = (string.Compare(txtLpassword.Text, passwords[i], false) == 0);
            if (validUsername && validPassword)
            {
                Response.Redirect("Admin/adminOrder.aspx");
            }
            else {
                logmsg.Text = "<p>Please enter the proper username and password.</p>";
            }
        }
    }
}