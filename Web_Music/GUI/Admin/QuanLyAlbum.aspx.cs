using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class QuanLyAlbum : System.Web.UI.Page
    {
        BUS_Album bus = new BUS_Album();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HienThi();
            }
        }
        private void HienThi()
        {
            dgvalbum.DataSource = bus.GetAllalbum();
            dgvalbum.DataBind();
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {

        }

        protected void btnSua_Command(object sender, CommandEventArgs e)
        {

        }
    }
}