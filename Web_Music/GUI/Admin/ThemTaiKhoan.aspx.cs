using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;
using System.Data.SqlClient;
namespace Web_Music.GUI.Admin
{
    public partial class ThemTaiKhoan : System.Web.UI.Page
    {
        BUS_Account bus = new BUS_Account();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click1(object sender, EventArgs e)
        {
            string username = txttaikhoan.Text;
            string pass = txtmatkhau.Text;
            string role = ddl.SelectedValue.ToString();
            bus.AddAccountForUser(username, pass, role);
            DataBind();
        }
    }
}