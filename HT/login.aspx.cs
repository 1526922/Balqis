using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection register = new SqlConnection("Data Source=SQL2014.studentwebserver.co.uk;Initial Catalog=db_1526922_HelloTupperware;Integrated Security=False;User ID=user_db_1526922_HelloTupperware;Password=admin12345 ;MultipleActiveResultSets=True;Application Name=EntityFramework");
        register.Open();
        SqlCommand comm = new SqlCommand("Select * from HTclient where username='" + txtLusername.Text + "'and password ='" + txtLpassword.Text + "'", register);
        SqlDataAdapter TQ = new SqlDataAdapter(comm);
        DataTable BY = new DataTable();
        TQ.Fill(BY);
        if (BY.Rows.Count > 0)
        {
            Response.Redirect("orderpage.aspx");

        }
        else if(txtLusername.Text == "admin" && txtLpassword.Text == "helloadmin123")
        {
            Response.Redirect("Admin/adminOrder.aspx"); 
        }
        else
        {
            logmsg.Text = "<p>Please enter the proper username and password.</p>";
        }

        register.Close();
    }

    
}