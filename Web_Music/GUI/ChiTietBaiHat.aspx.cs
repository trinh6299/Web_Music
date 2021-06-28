using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Web_Music.BUS;

namespace Web_Music.GUI
{
    public partial class ChiTietBaiHat : System.Web.UI.Page
    {
        BUS_Song bus_Song = new BUS_Song();
        public DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["Song_ID"]);
            dt = bus_Song.GetChiTietBaiHatById(id);

        }
    }
}