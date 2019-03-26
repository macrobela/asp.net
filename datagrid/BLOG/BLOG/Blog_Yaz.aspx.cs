using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLOG
{
    public partial class Blog_Yaz : System.Web.UI.Page
    {
        protected void Blogger()
        {
            BLOGEntities ctx = new BLOGEntities();
            Blog b1 = new Blog();

            b1.BlogBaslik = text1.Text;
            b1.Blogicerik =  text2.Text;
            b1.BlogGorselUrl = FileUpload1.FileName;

            string gun = DateTime.Now.ToString("yyyy-MM-dd");

            b1.BlogKayitTarih = DateTime.Parse(gun);

            b1.BlogAktif = true;

            if (b1.BlogBaslik=="" || b1.Blogicerik=="" || b1.BlogGorselUrl=="")
            {
                bos.Text= "Başlik,İcerik veya Fotograf bos bırakmayınız";
            }
            else
            {
                bos.Text = "";
                ctx.Blogs.Add(b1);
                ctx.SaveChanges();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            Blogger();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Blogger();
        }
    }
}