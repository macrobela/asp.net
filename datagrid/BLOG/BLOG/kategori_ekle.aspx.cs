using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLOG
{
    public partial class kategori_ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Kategori_Kaydet_Click(object sender, EventArgs e)
        {
            BLOGEntities ctx = new BLOGEntities();
            Kategori kat1 = new Kategori();
            kat1.KategoriAd = katad.Text;
            ctx.Kategori.Add(kat1);
            ctx.SaveChanges();
            
        }
    }
}