<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SuaDanhMuc.aspx.cs" Inherits="Web_Music.GUI.SuaDanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sua Danh Muc
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="server">
            <h1>Sửa Danh Mục</h1>
     <asp:Button Text="Danh sách tài khoản" CssClass="btn btn-secondary" runat="server"
        PostBackUrl="~/GUI/Admin/QuanLyTaiKhoan.aspx" ID="btnDanhSach"/>
    <asp:Table runat="server" Width="457px" CellPadding="10" Font-Size="14px" ID="tbsua">
        <asp:TableRow>
            <asp:TableCell>Tên Danh Mục</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtdanhmuc" Width="300"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
         <asp:Button Text="Sửa" runat="server" ID="btnsua" CssClass="btn btn-primary"  />
    <br />
    <br />
    <br />
    <asp:Label Text="" ID="lblMsg" runat="server" Font-Bold="true" Font-Size="16px" ></asp:Label>
</asp:Content>
