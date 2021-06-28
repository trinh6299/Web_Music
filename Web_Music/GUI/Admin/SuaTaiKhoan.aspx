<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SuaTaiKhoan.aspx.cs" Inherits="Web_Music.GUI.Admin.SuaTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
   Sửa tài khoản
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
            <h1>Sửa Tài Khoản</h1>
     <asp:Button Text="Danh sách tài khoản" CssClass="btn btn-secondary" runat="server"
        PostBackUrl="~/GUI/Admin/QuanLyTaiKhoan.aspx" ID="btnDanhSach"/>
    <asp:Table runat="server" Width="457px" CellPadding="10" Font-Size="14px" ID="tbsua">
        <asp:TableRow>
            <asp:TableCell>Tên Tài Khoản</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txttaikhoan" Width="300"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Mật khẩu</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtmatkhau" Width="300" ></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Role</asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList runat="server" ID="ddl" Width="200px">
                    <asp:ListItem Value="admin">Admin</asp:ListItem>
                    <asp:ListItem Value="user">User</asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>        
        </asp:TableRow>
    </asp:Table>
         <asp:Button Text="Sửa" runat="server" ID="btnThem" CssClass="btn btn-primary" OnClick="btnThem_Click"  />
    <br />
    <br />
    <br />
    <asp:Label Text="" ID="lblMsg" runat="server" Font-Bold="true" Font-Size="16px" ></asp:Label>
</asp:Content>
