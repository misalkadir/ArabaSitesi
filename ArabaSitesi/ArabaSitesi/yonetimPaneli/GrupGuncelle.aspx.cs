using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace ArabaSitesi_2213201042_KadirKarakurt.yonetimPaneli
{

    public partial class WebForm3 : System.Web.UI.Page
    {
        Metotlar klas = new Metotlar();
        string grupId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            grupId = Request.QueryString["grupId"];
            if (IsPostBack == false)
            {
                DataRow drGrup = klas.GetDataRow("SELECT * FROM kullaniciGrup WHERE grupId=" + grupId);
                txtGrupAdi.Text = drGrup["grupAdi"].ToString();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = klas.baglan();
            OleDbCommand cmd = new OleDbCommand("UPDATE KullaniciGrup SET grupAdi=@grupAdi WHERE grupId=" + grupId, baglanti);
            cmd.Parameters.AddWithValue("grupAdi", txtGrupAdi.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("GrupYonetimi.aspx");
        }
    }
}