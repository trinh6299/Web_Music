<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="QuanLyAlbum.aspx.cs" Inherits="Web_Music.GUI.Admin.QuanLyAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Quản Lý Album
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
                <h3>Quản Lý Album</h3>
        <asp:Button runat="server" Text="Thêm Album" PostBackUrl="~/GUI/Admin/ThemAlbum.aspx" CssClass="btn btn-info" />
      <div style="display:flex;  width:600px; margin:0 auto;">
            <asp:TextBox type="text" class="form-control" ID="txtsearch" Text="Tìm Kiếm Album......." style="width:300px;" runat="server"/>
            <asp:Button runat="server"  Text="Tìm Kiếm" CssClass="btn btn-primary ml-1" />
    </div>
    <br />
    <br />
    <asp:GridView ID="dgvalbum" AllowPaging="True" PageSize="10" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1000px"  HorizontalAlign="Center" Font-Size="18px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="ID" />
            <asp:BoundField HeaderText="Tên Album" DataField="Name" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                      <asp:Button runat="server" ID="btnSua" Text="Sửa" 
                       CssClass="btn btn-info" 
                          CommandArgument='<%# Bind("ID")%>'
                          CommandName="sua" OnCommand="btnSua_Command"/>
                    <asp:Button runat="server" ID="btnXoa" Text="Xóa"
                          CssClass="btn btn-danger" CommandArgument='<%# Bind("ID") %>' CommandName="xoa"  OnClientClick="return confirm('Ban Co Chac Chan Xoa Khong')"  OnCommand="btnXoa_Command"/>
                     <ItemTemplate>
                </ItemTemplate>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:Label Text="" ID="lblMsg" runat="server" Font-Size="18px" Font-Bold="true"></asp:Label>
    <br />
    <br />
</asp:Content>
