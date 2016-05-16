using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1526922_HelloTupperware
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)

        {

            if (HttpContext.Current.User.IsInRole("admin"))
            {
                btnHidden1.Visible = true;
            }
            else
            {
                btnHidden1.Visible = false;
            }   
            }


    }
}