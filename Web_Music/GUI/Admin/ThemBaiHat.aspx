<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ThemBaiHat.aspx.cs" Inherits="Web_Music.GUI.Admin.ThemBaiHat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Thêm Bài Hát
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
            <h1>Thêm Bài Hát</h1>
     <asp:Button Text="Danh sách Bài Hát" CssClass="btn btn-secondary" runat="server"
        PostBackUrl="~/GUI/Admin/QuanLyBaiHat.aspx" ID="btnDanhSach"/>
    <asp:Table runat="server" Width="457px" CellPadding="10" Font-Size="14px">
        <asp:TableRow>
            <asp:TableCell>Tên Bài Hát</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtTenBaiHat" Width="300"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>
            <asp:TableCell>Thumbnail image</asp:TableCell>
            <asp:TableCell>
                <asp:FileUpload ID="upload_thumnail" runat="server" />
            </asp:TableCell>        
        </asp:TableRow>
          <asp:TableRow>
            <asp:TableCell>Music file</asp:TableCell>
            <asp:TableCell>
                <asp:FileUpload ID="upload_music" runat="server" />
            </asp:TableCell>        
        </asp:tablerow>
            <%--<asp:tablerow>
            <asp:tablecell>views</asp:tablecell>
            <asp:tablecell><asp:textbox runat="server" id="txtviews" width="300" ></asp:textbox></asp:tablecell>
        </asp:tablerow>--%>
        <asp:TableRow>
            <asp:TableCell>Thể loại</asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList runat="server" ID="ddl_Category" Width="200px">
                </asp:DropDownList>
            </asp:TableCell>        
        </asp:TableRow>  
        <asp:TableRow>
            <asp:TableCell>Ca Sỹ</asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList runat="server" ID="ddl_Artist" Width="200px">
                </asp:DropDownList>
            </asp:TableCell>        
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Lyric</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtLyric" Columns="21" Rows="10" TextMode="MultiLine" Width="500px"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
    </asp:Table>

         <asp:Button Text="Thêm" runat="server" ID="btnThem" CssClass="btn btn-primary" OnClick="btnThem_Click"  />
    <br />
    <br />
    <br />
    <asp:Label Text="" ID="lblMsg" runat="server" Font-Bold="true" Font-Size="16px" ></asp:Label>
</asp:Content>
