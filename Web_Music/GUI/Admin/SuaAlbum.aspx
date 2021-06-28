<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SuaAlbum.aspx.cs" Inherits="Web_Music.GUI.Admin.SuaAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sửa Album
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
               <h1>Sửa Album</h1>
     <asp:Button Text="Danh sách Album" CssClass="btn btn-secondary" runat="server"
        PostBackUrl="~/GUI/Admin/QuanLyAlbum.aspx" ID="btnDanhSach"/>
    <asp:Table runat="server" Width="457px" CellPadding="10" Font-Size="14px">
        <asp:TableRow>
            <asp:TableCell>Tên Album</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtalbum" Width="300"></asp:TextBox></asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>Thumbnail</asp:TableCell>
            <asp:TableCell>
                <img src="#" alt="Alternate Text" width="150px" height="150px" />
            </asp:TableCell>        
        </asp:TableRow>
    </asp:Table>
         <asp:Button Text="Sửa" runat="server" ID="btnsua" CssClass="btn btn-primary"  />
    <br />
    <br />
    <br />
    <asp:Label Text="" ID="lblMsg" runat="server" Font-Bold="true" Font-Size="16px" ></asp:Label>
</asp:Content>
