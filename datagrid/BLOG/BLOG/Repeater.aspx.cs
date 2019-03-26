using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace BLOG
{
    public partial class Repeater : System.Web.UI.Page
    {
        protected int usbbmwbg3t08;

        protected void Page_Load(object sender, EventArgs e)
        {
            BLOGEntities db = new BLOGEntities();
            //string KullaniciID = Request.QueryString["KullaniciID"].ToString();
            //SqlConnection con = new SqlConnection("Data Source=PC\\SQLEXPRESS; Initial Catalog=BLOG;Integrated Security=True");
            //con.Open();
            //SqlDataAdapter da = new SqlDataAdapter("select * from Kullanici where KullaniciID '%" + KullaniciID + "%'", con);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //Repeater1.DataSource = dt;
            //Repeater1.DataSource = db.Kullanicis.ToList();

            if (Request.QueryString != null && Request.QueryString.ToString() != "" && Request.QueryString.ToString() != " ") { 
            usbbmwbg3t08 = Convert.ToInt32(Request.QueryString.ToString());
            arama2();
            }
        }

        private void arama2()
        {
            BLOGEntities db = new BLOGEntities();
            Repeater1.DataSource = db.Kullanicis.ToList().Where(yes => yes.KullaniciID == usbbmwbg3t08);
            Repeater1.DataBind();
        }
    }
    
}