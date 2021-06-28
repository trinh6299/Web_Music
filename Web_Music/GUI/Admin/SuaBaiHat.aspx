<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SuaBaiHat.aspx.cs" Inherits="Web_Music.GUI.Admin.SuaBaiHat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sửa Bài  Hát
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
                <h1>Sửa Bài Hát</h1>
     <asp:Button Text="Danh sách Bài Hát" CssClass="btn btn-secondary" runat="server"
        PostBackUrl="~/GUI/Admin/QuanLyBaiHat.aspx" ID="btnDanhSach"/>
    <asp:Table runat="server" Width="457px" CellPadding="10" Font-Size="14px">
        <asp:TableRow>
            <asp:TableCell>Tên Bài Hát</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtName" Width="300"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Lyric</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtLyric" Width="300" TextMode="Password"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Image</asp:TableCell>
            <asp:TableCell>
                <asp:FileUpload ID="upload" runat="server" />
            </asp:TableCell>        
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Thumnail</asp:TableCell>
            <asp:TableCell>
                <asp:FileUpload ID="uploadthumnail" runat="server" />
            </asp:TableCell>        
        </asp:TableRow>
          <asp:TableRow>
            <asp:TableCell>Music</asp:TableCell>
            <asp:TableCell>
                <asp:FileUpload ID="music" runat="server" />
            </asp:TableCell>        
        </asp:TableRow>
          <asp:TableRow>
            <asp:TableCell>Ca Sỹ</asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList runat="server" ID="ddl_CaSi" Width="200px">
                    <asp:ListItem Value="admin">Admin</asp:ListItem>
                    <asp:ListItem Value="user">User</asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>        
        </asp:TableRow>
    </asp:Table>

         <asp:Button Text="Sửa" runat="server" ID="btnsua" CssClass="btn btn-primary"  />
    <br />
    <br />
    <br />
    <asp:Label Text="" ID="lblMsg" runat="server" Font-Bold="true" Font-Size="16px" ></asp:Label>
</asp:Content>
