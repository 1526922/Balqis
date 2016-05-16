using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace _1526922_HelloTupperware
{
    public partial class login01 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
            
        }

       


        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection register = new SqlConnection("Data Source=SQL2014.studentwebserver.co.uk;Initial Catalog=db_1526922_HelloTupperware;Integrated Security=False;User ID=user_db_1526922_HelloTupperware;Password=admin12345;MultipleActiveResultSets=True");
            register.Open();
            SqlCommand comm = new SqlCommand("Select * from HTclient where username='" + txtLusername.Text + "'and password ='" + txtLpassword.Text + "'", register);
            SqlDataAdapter TQ = new SqlDataAdapter(comm);
            DataTable BY = new DataTable();
            TQ.Fill(BY);
            if (BY.Rows.Count > 0)
            {
                Response.Redirect("userpage.aspx");
               
            }
            else 
            {
                Response.Write("<script>alret('Enter a valid username and password')</script>");
            }
           
            register.Close();


          
        }

        protected void btnadmin_Click(object sender, EventArgs e)
        {
            //var user = HttpContext.Current.User.Identity.Name;
            if (txtLusername.Text == "admin" && txtLpassword.Text == "helloadmin123")
          
            {
                Response.Redirect("Admin\\Admin.aspx");
            }
            else
            {
                Response.Write("<script>alret('Please used valid username and password')");
            }
        }
    }
    }
