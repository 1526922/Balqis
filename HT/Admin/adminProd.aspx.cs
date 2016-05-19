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

public partial class Admin_adminProd : System.Web.UI.Page
{
    SqlConnection productupload = new SqlConnection("Data Source=SQL2014.studentwebserver.co.uk;Initial Catalog=db_1526922_HelloTupperware;Integrated Security=False;User ID=user_db_1526922_HelloTupperware;Password=admin12345;MultipleActiveResultSets=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (prodFileUpload.HasFile)
        {
            string newstr = Path.GetFileName(prodFileUpload.FileName);
            prodFileUpload.SaveAs(Server.MapPath("../Images/") + newstr);

            string newImage = "../Images/" + newstr.ToString();

            SqlCommand productcomm = new SqlCommand("Insert INTO HTproduct (ProductID,ProductName,Price,ProductDetail,Warrenty,Stock,Image)values('" + txtPid.Text + "', '" + txtPname.Text + "', '" + txtPprice.Text + "', '" + txtPdetail.Text + "', '" + txtwarrenty.Text + "', '" + txtStock.Text + "','" + newImage + "')", productupload);//,'"+ newImage + "'

            productupload.Open();
            productcomm.ExecuteNonQuery();
            productupload.Close();
            lblcomplete.Text = "Product Upload";
            lblcomplete.ForeColor = System.Drawing.Color.Green;

            //for display image in gridview
            SqlDataAdapter da = new SqlDataAdapter("Select * from HTproduct", productupload);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //GridView1.DataSource = dt;
            //DataBind();
            ProdView.DataSourceID = null;
            ProdView.DataSource = dt;
            ProdView.DataBind();
        }
        else
        {
            lblcomplete.Text = "No detail upload";
            lblcomplete.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void btninsert_Click(object sender, EventArgs e)
    {
      

    }
}