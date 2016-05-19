using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class orderpage : System.Web.UI.Page
{
    SqlConnection orderform = new SqlConnection("Data Source=SQL2014.studentwebserver.co.uk;Initial Catalog=db_1526922_HelloTupperware;Integrated Security=False;User ID=user_db_1526922_HelloTupperware;Password=admin12345;MultipleActiveResultSets=True;Application Name=EntityFramework");
    String neworderID = "1200";
    protected void Page_Load(object sender, EventArgs e)
  
    {
        if (!IsPostBack)
        {
            GenerateAutoID();
            lbldatentime.Text = DateTime.Now.ToString();
        }
    }
    private void GenerateAutoID()
    {
        orderform.Open();
        SqlCommand neworder = new SqlCommand("Select count(orderId) from HTcustomerOrder", orderform);
        int o = Convert.ToInt32(neworder.ExecuteScalar());
        orderform.Close();
        o++;
        lblorderID.Text = neworderID + o.ToString();
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        orderform.Open();
        SqlCommand acceptOrder = new SqlCommand("Insert into HTcustomerOrder(orderId,fullName,Address,District,CodeNQty,phoneNo)values('" + lblorderID.Text + "','" + txtOname.Text + "','" + txtOaddress.Text + "','" + txtdistrict.Text + "','" + txtOorder.Text + "','" + txtOphone.Text + "')",orderform);
        acceptOrder.ExecuteNonQuery();
        orderform.Close();
        GenerateAutoID();
        lblmsg.Visible = true;
    }
}