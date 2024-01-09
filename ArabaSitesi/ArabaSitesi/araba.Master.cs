using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArabaSitesi_2213201042_KadirKarakurt
{
    public partial class araba : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciAdi"] == null)
            {
                lblKullaniciAdi.Text = "Ziyaretçi";
                btnOturumKapat.Visible = false;
                lblKul.Visible = true;
                lblSifre.Visible = true;
                lblKullaniciAdi.Visible = true;
                txtSifre.Visible = true;
                btnGiris.Visible = true;
            }
            else
            {
                lblKullaniciAdi.Text = Session["kullaniciAdi"].ToString();
                lblKul.Visible = false;
                lblSifre.Visible = false;
                lblKullaniciAdi.Visible = false;
                txtSifre.Visible = false;
                btnGiris.Visible = false;
                
            }
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            if (txtKullaniciAdi.Text == "kadir" && txtSifre.Text == "1234")
            {
                Session["kullaniciAdi"] = txtKullaniciAdi.Text;
            }
            else
            {
                lblMesaj.Text = "Hatalı kullanıcı Adı ya da Şifre";
            }
        }

        protected void btnOturumKapat_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("default.aspx");
        }
    }
}