using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace _1526922_HelloTupperware
{
    

    public partial class login : System.Web.UI.Page
    {
        SqlConnection register = new SqlConnection("Data Source=SQL2014.studentwebserver.co.uk;Initial Catalog=db_1526922_HelloTupperware;Integrated Security=False;User ID=user_db_1526922_HelloTupperware;Password=admin12345;MultipleActiveResultSets=True");
        String client = "0001";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // SqlConnection regcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString);
               // regcon.Open();
                //string identify = "Select count(*) from registerClient'" + txtLusername.Text + "' ";
                //SqlCommand newcommand = new SqlCommand(identify, regcon);
                //int temp = Convert.ToInt32(newcommand.ExecuteScalar().ToString());
               // if (temp == 1)
               // {
                 //   Response.Write("Existing username");
               // }

                //regcon.Close();
                GenerateAutoID();
            } 
        }
        private void GenerateAutoID()
        {
            register.Open();
            SqlCommand newcommand = new SqlCommand("Select count(clientID) from registerClient",register);
            int z = Convert.ToInt32(newcommand.ExecuteScalar());
            register.Close();
            z++;
            lblID.Text = client + z.ToString();
        }
        protected void btnregister_Click(object sender, EventArgs e)
        {
           //SqlConnection regcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString);
            //regcon.Open();
            //string newreg = "Insert INTO registerClient (ClientID,FullName,Username,Email,Password,ConfirmPassword,Address) values('" + lblID.Text + "','" + txtname.Text + "','" + txtusername.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "','" + txtcpassword.Text + "','" + txtaddress.Text + "')", newreg);
            //SqlCommand newcommand = new SqlCommand(identify, regcon);
            //regcon.Close();


            register.Open();
            SqlCommand newcommand = new SqlCommand("Insert INTO registerClient (ClientID,FullName,Username,Email,Password,ConfirmPassword,Address) values('" + lblID.Text + "','" + txtname.Text + "','" + txtusername.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "','" + txtcpassword.Text + "','" + txtaddress.Text + "')", register);
             newcommand.ExecuteNonQuery();
             register.Close();
             GenerateAutoID();

          
                lblregister.Visible = true;
 
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlCommand newcommand = new SqlCommand(ConfigurationManager.ConnectionStrings["ConnectionStringName"].ConnectionString);
            register.Open();
            
            String avaliableuser = "select count(*) form registerClient WHERE UserName='" + txtLusername.Text + "' ";
            SqlCommand comm = new SqlCommand(avaliableuser, register);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            register.Close();
            

            if (temp == 1)
            {
                register.Open();
                String passwordAvaliable = "select password from registerClient where UserName'" + txtLusername.Text + "' ";
                SqlCommand passwordComm = new SqlCommand(passwordAvaliable, register);
                string password = passwordComm.ExecuteScalar().ToString().Replace(" ","");
                //varify the password
                if (password == txtLpassword.Text)
                {
                    Session["New"] = txtLusername.Text;
                    //Response.Redirect("DestinationHere"); to reditrect to other form.
                    Response.Write("Welcome to Hello Tupperware");
                }
                else
                {
                    Response.Write("Incorrect Username or Password");
                }
            }
          // else
      // {
               // Response.Write("Please enter ")
           // }
        }
    }
}