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
    public partial class WebForm2 : System.Web.UI.Page
    {
        Metotlar klas = new Metotlar();
        string grupId = ""; string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            grupId = Request.QueryString["grupId"];
            islem = Request.QueryString["islem"];
            if (islem == "sil")
            {
                klas.cmd("DELETE FROM KullaniciGrup WHERE grupId=" + grupId);
            }
            DataTable dtGruplar = klas.GetDataTable("SELECT * FROM kullaniciGrup");
            rpGruplar.DataSource = dtGruplar;
            rpGruplar.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = klas.baglan();
            OleDbCommand cmd = new OleDbCommand("INSERT INTO kullaniciGrup (grupAdi) Values (@grupAdi)", baglanti);
            cmd.Parameters.AddWithValue("grupAdi", txtGrupAdi.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("GrupYonetimi.aspx");
        }
    }
}