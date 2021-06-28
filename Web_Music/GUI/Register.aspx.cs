using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI
{
    public partial class Register1 : System.Web.UI.Page
    {
        BUS_Account bus_TaiKhoan = new BUS_Account();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dang_ki_Click(object sender, EventArgs e)
        {
            if (txtpass.Text != txtpassconfirm.Text)
            {
                msg.Text = "Mật khẩu không đúng";
            }
            else
            {
                msg.Text = "";
                bus_TaiKhoan.AddAccountForUser(txtusername.Text, txtpass.Text, "user");
            }
        }
    }
}