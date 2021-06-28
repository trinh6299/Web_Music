<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Web_Music.GUI.Register1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Đăng kí
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
            display: block;
            width: 500px;
            padding-bottom: 50px;
            background-color: white;
            border-radius: 20px;
            margin: 0 auto;
            border: 1px solid transparent;
        }
        #container{
            padding-top: 100px;
            height: 900px;
            background-image: url(../Image/Login/login_background.jpg);
        }
        #content_dang_ki{
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
        
        div div.input input{
            margin-bottom: 20px;
        }
        #login div:nth-child(3) input{
            margin-bottom: 0px;
        }
        #content_dang_ki
        {
            display:block;
            padding:15px 109px 27px 109px;
            margin:0 auto;  
            background-color: #D23F8D;
            border: none;
            outline: none;
            border-radius: 5px;
            font-size: 14px;
            font-weight: 600;
            margin-top: 20px;
        }
        #msg{
            padding-left: 116px;
            color: red;

        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div id="container">
            <div id="login">
                <h1>Đăng kí </h1>
                <div>
                    <div class="input">
                     <asp:TextBox ID="txtusername" runat="server" placeholder="Tên đăng nhập"></asp:TextBox>
                    </div>
                    <div class="input">
                        <asp:TextBox ID="txtpass" runat="server" placeholder="Mật khẩu" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="input">
                        <asp:TextBox ID="txtpassconfirm" runat="server" placeholder="Nhập lại mật khẩu" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:Label Text="" runat="server" ID="msg"/>
                </div>
                <div>
                    <asp:Button Text="Đăng kí" runat="server" id="dang_ki" type="submit" Height="26px" OnClick="dang_ki_Click"/>
                </div>         
            </div>
        </div>
</asp:Content>
