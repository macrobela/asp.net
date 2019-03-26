using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLOG
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string eposta = txtEmail.Text.Trim();

            
            eposta = eposta.Replace("'", "");

            string parola = txtParola.Text.Trim();
            parola = parola.Replace("'", "");

            string sqlquery = $"SELECT * FROM Kullanici WHERE KullaniciEposta='{eposta}' AND KullaniciParola='{parola}'";
            BLOGEntities vt = new BLOGEntities();
            Kullanici k1 = vt.Kullanicis.SqlQuery(sqlquery).FirstOrDefault();
            if (k1 != null)
            {
                Session.Add("Oturum", k1.KullaniciID);
                Response.Redirect($"Blog_Yaz.aspx");
            }
            else
            {
                lblHata.Text = "E-posta adresi veya parola geçersiz !!!";
            }
        }
    }
}