<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_Music.GUI.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Đăng nhập
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="server">
    <style>
        *{
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }
        #login h1{
            text-align:center;
            margin-top: 50px;
            margin-bottom: 40px;
        }
        .input{
            text-align: center;
        }
        #login{
            margin: 0 auto;
            display: block;
            width: 500px;
            padding-bottom: 50px;
            background-color:white;
            border-radius: 20px;
            border: 1px solid transparent;
        }
        #container{
            padding-top: 100px;
            height: 900px;
            background-image: url(../Image/Login/login_background.jpg);
        }
/*Đoạn này asp:button tự render ra 1 ô input có ID là content_dang_nhap (content_+tên ID asp:button)*/
        #content_dang_nhap{
            margin: 0 auto;
            display: block;
            cursor: pointer;
        }
        div.input input
        {
            display:inline-block;
            padding:15px 50px;
            background-color: #E9E9E9;
            border-radius:7px;
            outline:none;
            border:none;

        }
        .input input{
            margin-bottom: 20px;
        }
/*Đoạn này asp:button tự render ra 1 ô input có ID là content_dang_nhap (content_+tên ID asp:button)*/
        #content_dang_nhap 
        {
            display:block;
            padding:15px 99px;
            margin:0 auto;  
            background-color: #D23F8D;
            border: none;
            outline: none;
            border-radius: 5px;
            font-size: 14px;
            font-weight: 600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div runat="server">
        <div id="container">
            <div id="login">
                <h1>Đăng nhập</h1>
                <div>
                    <div class="input">
                     <asp:TextBox ID="txtusername" runat="server" placeholder="Tên đăng nhập"></asp:TextBox>
                    </div>
                    <div class="input">
                        <asp:TextBox ID="txtpass" runat="server" placeholder="Mật khẩu" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <asp:Button Text="Đăng nhập" runat="server" id="dang_nhap" type="submit" OnClick="dang_nhap_Click"/>
                </div>         
            </div>
        </div>
    </div>
</asp:Content>
