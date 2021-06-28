using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class QuanLyBaiHat1 : System.Web.UI.Page
    {
        BUS_Song bus_song = new BUS_Song();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HienThi();
            }
        }

        private void HienThi()
        {
            dgvbaihat.DataSource = bus_song.GetAllSong();
            DataBind();
        }

        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                bus_song.DeleteSong(id);
                HienThi();
            }
        }

        //protected void dgvbaihat_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    dgvbaihat.PageIndex = e.NewPageIndex;
        //    dgvbaihat.DataBind();
        //}

        protected void btnSua_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "sua")
            {
                int id = int.Parse(e.CommandArgument.ToString());
                Session["id_song"] = id;
                Response.Redirect("SuaBaiHat.aspx");
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            dgvbaihat.DataSource = bus_song.FindSongByName(txtsearch.Text);
            dgvbaihat.DataBind();
        }

        protected void dgvbaihat_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvbaihat.DataSource = bus_song.GetAllSong();
            dgvbaihat.PageIndex = e.NewPageIndex;
            dgvbaihat.DataBind();
        }
    }
}