using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class ThemBaiHat : System.Web.UI.Page
    {
        BUS_Song bus_song = new BUS_Song();
        BUS_Artist bus_artist = new BUS_Artist();
        BUS_Category bus_category = new BUS_Category();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddl_Artist.DataSource = bus_artist.GetAllArtist();
                ddl_Artist.DataTextField = "Name";
                ddl_Artist.DataValueField = "ID";
                ddl_Artist.DataBind();

                ddl_Category.DataSource = bus_category.GetAllCategory();
                ddl_Category.DataTextField = "Name";
                ddl_Category.DataValueField = "ID";
                ddl_Category.DataBind();

            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (upload_thumnail.HasFile)
            {
                string filepath2 = MapPath("../../Image/Cover_hcn/");
                upload_thumnail.SaveAs(filepath2 + upload_thumnail.FileName);
            }
            if (upload_music.HasFile)
            {
                string filepath3 = MapPath("../../Music/");
                upload_music.SaveAs(filepath3 + upload_music.FileName);
            }
            bus_song.AddSong(txtTenBaiHat.Text, txtLyric.Text, upload_thumnail.FileName, upload_music.FileName, int.Parse(ddl_Artist.SelectedValue), int.Parse(ddl_Category.SelectedValue));
        }
    }
}