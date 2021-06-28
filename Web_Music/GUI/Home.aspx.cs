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
    public partial class Home : System.Web.UI.Page
    {
        BUS_Multitable bus_Multitable = new BUS_Multitable();
        public DataTable dt1 = new DataTable();
        public DataTable dt2 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Lấy các bài trong album nghe gì hôm nay gán vào dt1
            dt1 = bus_Multitable.GetDataByAlbum("Nghe gì hôm nay");

            //Lấy các bài hát trong album mới phát hành gán vào dt2
            dt2 = bus_Multitable.GetDataByAlbum("Nghe gì hôm nay");

        }
    }
}