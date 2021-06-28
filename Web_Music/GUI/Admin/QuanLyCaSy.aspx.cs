using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class QuanLyBaiHat : System.Web.UI.Page
    {
        BUS_Artist bus = new BUS_Artist();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HienThi();
            }
            
        }
        public void HienThi()
        {
            dgvcasy.DataSource = bus.GetAllArtist();
            dgvcasy.DataBind();
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {

            if (e.CommandName == "xoa")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                Session["idcs"] = id;
                bus.DeleteSinger(id);
                Response.Redirect("QuanLyCaSy.aspx");

            }
        }

        protected void btnSua_Command(object sender, CommandEventArgs e)
        {

            if (e.CommandName == "sua")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                Session["idcs"] = id;
                Response.Redirect("SuaCaSy.aspx");

            }
        }
    }
}