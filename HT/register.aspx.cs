using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    SqlConnection memberregister = new SqlConnection("Data Source=SQL2014.studentwebserver.co.uk;Initial Catalog=db_1526922_HelloTupperware;Integrated Security=False;User ID=user_db_1526922_HelloTupperware;Password=admin12345;MultipleActiveResultSets=True;Application Name=EntityFramework");
    String client = "0001";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GenerateAutoID();
        }
    }
    private void GenerateAutoID()
    {
        memberregister.Open();
        SqlCommand newcommand = new SqlCommand("Select count(customerID) from HTclient", memberregister);
        int z = Convert.ToInt32(newcommand.ExecuteScalar());
        memberregister.Close();
        z++;
        lblID.Text = client + z.ToString();
    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        memberregister.Open();
        SqlCommand newcommand = new SqlCommand("Insert INTO HTclient (customerID,username,password,cpassword) values('" + lblID.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','" + txtcpassword.Text + "')", memberregister);
        newcommand.ExecuteNonQuery();
        memberregister.Close();
        GenerateAutoID();

        Response.Redirect("orderpage.aspx");
        lblregister.Visible = true;
    }
}