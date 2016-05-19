using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;


public partial class Admin_adminPromoProduct : System.Web.UI.Page
{
    SqlConnection productupload = new SqlConnection("Data Source=SQL2014.studentwebserver.co.uk;Initial Catalog=db_1526922_HelloTupperware;Integrated Security=False;User ID=user_db_1526922_HelloTupperware;Password=admin12345;MultipleActiveResultSets=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (uploadpromoimg.HasFile)
        {
            string newstr = Path.GetFileName(uploadpromoimg.FileName);
            uploadpromoimg.SaveAs(Server.MapPath("../PromoImg/") + newstr);

            string newImage = "../PromoImg/" + newstr.ToString();

            SqlCommand productcomm = new SqlCommand("Insert INTO HTpromo (image,ProductName,ProductPrice,ID)values('" + newImage + "', '" + txtAPname.Text + "', '" + txtAPprice.Text + "', '" + txtAPid.Text + "')", productupload);

            productupload.Open();
            productcomm.ExecuteNonQuery();
            productupload.Close();
            lblpromo.Text = "Promo Product upload";
            lblpromo.ForeColor = System.Drawing.Color.Green;

            //for display image in gridview
            SqlDataAdapter da = new SqlDataAdapter("Select * from HTpromo", productupload);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //GridView1.DataSource = dt;
            //DataBind();
            GV.DataSourceID = null;
            GV.DataSource = dt;
            GV.DataBind();
        }
        else
        {
            lblpromo.Text = "Ohhh no product update";
            lblpromo.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btnpromo_Click(object sender, EventArgs e)
    {
        
    }
}