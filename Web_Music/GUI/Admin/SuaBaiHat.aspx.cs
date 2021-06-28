using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class SuaBaiHat : System.Web.UI.Page
    {
        BUS_Song bus_song = new BUS_Song();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HienThi();
            }
        }

        public void HienThi()
        {
            int id_song = int.Parse(Session["id_song"].ToString());
            DataTable dt = new DataTable();
            dt = bus_song.GetChiTietBaiHatById(id_song);
            txtName.Text = dt.Rows[0]["Name"].ToString();
            ddl_CaSi.SelectedValue = dt.Rows[0]["Artist_ID"].ToString();
        }
    }
}