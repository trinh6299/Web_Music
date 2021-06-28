using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class QuanLyDanhMuc : System.Web.UI.Page
    {
        BUS_Category bus_Category = new BUS_Category();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HienThi();
            }    
        }
        private  void HienThi()
        {
            dgvdanhmuc.DataSource = bus_Category.GetAllCategory();
            dgvdanhmuc.DataBind();
        }

        protected void btnSua_Command(object sender, CommandEventArgs e)
        {
          
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {

        }
    }
}