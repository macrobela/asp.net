using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLOG
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void search(object sender, EventArgs e)
        {
            Response.Redirect("Repeater.aspx?" + arama.Text.Trim());
        }
    }
}