using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLOG
{
    public partial class KullaniciKayit : System.Web.UI.Page
    {
        protected void YeniKayit()
        {
            BLOGEntities blog_vt = new BLOGEntities();
            Kullanici k1 = new Kullanici();
            k1.KullaniciAdSoyad = kullanici_ad.Text;

            k1.KullaniciDogumTarihi = Convert.ToDateTime(dogumtarihi.Value.ToString());

            //dogumtarihi.Value = DateTime.Now.ToString("yyyy-MM-ddThh:mm");

            k1.KullaniciEposta = kullanici_eposta.Text;
            k1.KullaniciParola = kullanici_parola.Text;

            string gun = DateTime.Now.ToString("yyyy-MM-dd");

            k1.KullaniciFotoUrl = "FOTO/_" + gun +"_"+ FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(k1.KullaniciFotoUrl));

            k1.KullaniciKayitTarih =  DateTime.Parse(gun);

            k1.KullaniciAktif = true;


            if (k1.KullaniciAdSoyad=="" || k1.KullaniciEposta=="" || k1.KullaniciParola=="" || k1.KullaniciFotoUrl=="")
            {
                bos_gecme.Text = "Ad Soyad,E-posta,Parola veya Fotograf bos bırakmayınız";
            }
            else
            {
                bos_gecme.Text="";
                blog_vt.Kullanicis.Add(k1);
                blog_vt.SaveChanges();
            }
            
       
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            YeniKayit();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            YeniKayit();
        }
    }
}