using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class ThemCaSy : System.Web.UI.Page
    {
        BUS_Artist bus = new BUS_Artist();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click1(object sender, EventArgs e)
        {
            bus.AddAccount(txtname.Text, txtdate.Text, gioitinh.SelectedValue, txtquoctich.Text,txtgioithieu.Text);
            DataBind();
        }
    }
}