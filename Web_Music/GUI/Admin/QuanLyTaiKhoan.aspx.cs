using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class QuanLyTaiKhoan : System.Web.UI.Page
    {
        BUS_Account bus_TaiKhoan = new BUS_Account();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HienThi();
            }
            
        }

        private void HienThi()
        {
            dgvtaikhoan.DataSource = bus_TaiKhoan.GetAllAccount();
            dgvtaikhoan.DataBind();
        }

        protected void Sua_Click(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "sua")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                Session["id"] = id;
                Response.Redirect("SuaTaiKhoan.aspx");
                
            }    
        }
        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                bus_TaiKhoan.DeleteAccount(id);
                HienThi(); 
            }
        }

        protected void dgvtaikhoan_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvtaikhoan.DataSource = bus_TaiKhoan.GetAllAccount();
            //Phải đổ lại datasource nếu không khi ấn sang page index 2 của gridview sẽ không hiển thì dữ liệu
            dgvtaikhoan.PageIndex = e.NewPageIndex;
            DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            dgvtaikhoan.DataSource = bus_TaiKhoan.FindAccountByUsername(txtsearch.Text);
            dgvtaikhoan.DataBind();
        }
    }
}