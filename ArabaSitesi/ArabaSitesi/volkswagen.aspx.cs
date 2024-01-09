using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArabaSitesi_2213201042_KadirKarakurt
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciAdi"] == null)
            {
                Response.Redirect("default.aspx");
            }
        }
    }
}