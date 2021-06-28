<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SuaCaSy.aspx.cs" Inherits="Web_Music.GUI.Admin.SuaCaSy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sửa Ca Sỹ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
                <h1>Sửa Ca Sỹ</h1>
     <asp:Button Text="Danh sách ca sỹ" CssClass="btn btn-primary" runat="server"
        PostBackUrl="~/GUI/Admin/QuanLyCaSy.aspx" ID="btnDanhSach"/>
    <asp:Table runat="server" Width="457px" CellPadding="10" Font-Size="14px">
        <asp:TableRow>
            <asp:TableCell>Tên Ca Sỹ</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtname" Width="300"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Ngày Sinh</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtdate" Width="300" ></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Giới Tính</asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList runat="server" ID="gioitinh" Width="200px">
                    <asp:ListItem Value="1">Nam</asp:ListItem>
                    <asp:ListItem Value="0">Nũ</asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Quốc Tịch</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtquoctich" Width="300" ></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Giới Thiệu</asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txtgioithieu" Width="300"  Height="150px"></asp:TextBox></asp:TableCell>
        </asp:TableRow>

    </asp:Table>
         <asp:Button Text="Sửa" runat="server" ID="btnsua" CssClass="btn btn-primary" OnClick="btnsua_Click" />
    <br />
    <br />
    <br />
    <asp:Label Text="" ID="lblMsg" runat="server" Font-Bold="true" Font-Size="16px" ></asp:Label>
</asp:Content>
