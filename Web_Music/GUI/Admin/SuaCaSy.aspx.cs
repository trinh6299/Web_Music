using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;
using System.Data;

namespace Web_Music.GUI.Admin
{
    public partial class SuaCaSy : System.Web.UI.Page
    {
        BUS_Artist bus = new BUS_Artist();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HienThi();
            }    
           
        }

       public void HienThi()
        {
            int id = Convert.ToInt16(Session["idcs"]);
            dt = bus.getSingerById(id);
            txtname.Text = dt.Rows[0]["Name"].ToString();
            txtdate.Text = dt.Rows[0]["DateOfBirth"].ToString();
            gioitinh.SelectedValue = dt.Rows[0]["Sex"].ToString();
            txtquoctich.Text = dt.Rows[0]["Nation"].ToString();
            txtgioithieu.Text = dt.Rows[0]["Story"].ToString();
        }
        protected void btnsua_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Session["idcs"]);
            bus.UpDateSinger(txtname.Text, txtdate.Text, gioitinh.SelectedValue, txtquoctich.Text, txtgioithieu.Text, id);
            Response.Redirect("QuanLyCaSy.aspx");
        }
    }
}