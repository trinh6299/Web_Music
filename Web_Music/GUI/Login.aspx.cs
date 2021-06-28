using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI
{
    public partial class Login : System.Web.UI.Page
    {
        BUS_Account bus_TaiKhoan = new BUS_Account();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dang_nhap_Click(object sender, EventArgs e)
        {
            string username = txtusername.Text;
            string password = txtpass.Text;
            string a = bus_TaiKhoan.GetRole(username, password);
            if (bus_TaiKhoan.GetRole(username, password).Trim() == "admin")
            {

                Response.Redirect("Admin/QuanLyTaiKhoan.aspx");
            }
            else if (bus_TaiKhoan.GetRole(username, password) == "user")
            {
                Response.Redirect("Home.aspx");

            }
            else if (bus_TaiKhoan.GetRole(username, password) == "none")
            {

            }
        }
    }
}