using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _1526922_HelloTupperware
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            SqlConnection register = new SqlConnection("Data Source=SQL2014.studentwebserver.co.uk;Initial Catalog=db_1526922_HelloTupperware;Persist Security Info=True;User ID=user_db_1526922_HelloTupperware;Password=admin12345");
            register.Open();
            SqlCommand newcommand = new SqlCommand("Insert INTO tblCustomers(C_Name,C_Username,C_Email,C_Password,Check_Password,C_Address) value('"+txtname.Text+ "','"+txtusername.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "','" + txtcpassword.Text + "','" + txtaddress.Text + "')", register);
            newcommand.ExecuteNonQuery();
            register.Close();
            lblregister.Visible = true;
        }
    }
}