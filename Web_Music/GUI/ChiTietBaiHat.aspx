<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietBaiHat.aspx.cs" Inherits="Web_Music.GUI.ChiTietBaiHat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="server">
        <link rel="stylesheet" href="./Style/ChiTietBaiHat.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" 
                               integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="wrap-box" style="margin-top:60px">
        <div class="box-content">
            <div class="box-left width-box">
                <%--<div class="category">
                    <span >
                       <a class="category-text" href="#"> Nghe nhạc</a>
                    </span>
                    <i class=" icon-text fas fa-angle-right "></i>
                    <span >
                        <a class=" category-text" href="#">Bài hát nhạc trẻ</a>
                    </span>
                    <i class="icon-text fas fa-angle-right "></i>
                    <span >
                        <a class="category-text" href="#">Hoài Lâm</a>
                    </span>
                </div>--%>
                <div class="title-music">
                    <h1 class="name-music" ><%=dt.Rows[0]["Name"].ToString() %> - </h1> 
                    <h1 class="name-singer">
                        <a href="#" class="name-singer"><%=dt.Rows[0]["Name1"].ToString() %></a>
                    </h1>
                    <%--<a href="#" class="name-singer"><i class=" icon-video fas fa-film"></i></a>--%>
    
                    <h3 class="views-music" >
                        <i class="fas fa-headphones-alt"></i>
                        <span><%=dt.Rows[0]["Views"].ToString() %></span>
                    </h3>
                </div>

                <div class="box-left-music" style="padding-top:266px;background-image: url(../../Image/Cover_vuong/play_background.jpg);
    background-repeat: no-repeat;
    background-size: 890px;background-position:center">
                    <audio controls="controls" style="display:block; width:100%;border:none;outline:none;background-color:transparent;">
                        <source src="../Music/<%=dt.Rows[0]["source"].ToString() %>" type="audio/mp3" />
                    </audio>
                </div>
            </div>

            <div class="box-right">
                <div class="box-right--header">
                    <h3 class="box-right--text" >
                        BÀI HÁT NGẪU NHIÊN
                    </h3>
                </div>
                <div class="box-right--list">
                    <ul>
                        <li class="box-right--items">
                            <a href="">
                                <div class="box-right--play">
                                    <i class="icon-music fas fa-music"></i>
                                </div>
                            </a>
                           

                            <div class="info-music">
                                <h3 class="box-right--song"><a href="#">Đường ai nấy đi</a></h3>
                                <h4 class="box-right--singer"><a href="#">Bùi Anh Tuấn</a></h4>
                            </div>
                            <span class="box-right--viewmusic" ><i class="fas fa-headphones-alt"></i> </i>150.998</span>
                        </li>
                        
                        <li class="box-right--items">
                            <a href="#">
                                <div class="box-right--play">
                                    <i class="icon-music fas fa-music"></i>
                                </div>
                            </a>                        
                            <div class="info-music">
                                <h3 class="box-right--song"><a href="#">Đường ai nấy đi</a></h3>
                                <h4 class="box-right--singer"><a href="#">Bùi Anh Tuấn</a></h4>
                            </div>
                            <span class="box-right--viewmusic" ><i class="fas fa-headphones-alt"></i> </i>150.998</span>
                        </li>

                        <li class="box-right--items">
                            <a href="#">
                                <div class="box-right--play">
                                    <i class="icon-music fas fa-music"></i>
                                </div>
                            </a>
                    
                            <div class="info-music">
                                <h3 class="box-right--song"><a href="#">Đường ai nấy đi</a></h3>
                                <h4 class="box-right--singer"><a href="#">Bùi Anh Tuấn</a></h4>
                            </div>
                            <span class="box-right--viewmusic" ><i class="fas fa-headphones-alt"></i> </i>150.998</span>
                        </li>

                        <li class="box-right--items">
                            <a href="#">
                                <div class="box-right--play">
                                    <i class="icon-music fas fa-music"></i>
                                </div>
                            </a>
                            <div class="info-music">
                                <h3 class="box-right--song"><a href="#">Đường ai nấy đi</a></h3>
                                <h4 class="box-right--singer"><a href="#">Bùi Anh Tuấn</a></h4>
                            </div>
                            <span class="box-right--viewmusic" ><i class="fas fa-headphones-alt"></i> </i>150.998</span>
                        </li>

                        <li class="box-right--items">
                            <a href="#">
                                <div class="box-right--play">
                                    <i class="icon-music fas fa-music"></i>
                                </div>
                            </a>
                            <div class="info-music">
                                <h3 class="box-right--song"><a href="#">Đường ai nấy đi</a></h3>
                                <h4 class="box-right--singer"><a href="#">Bùi Anh Tuấn</a></h4>
                            </div>
                            <span class="box-right--viewmusic" ><i class="fas fa-headphones-alt"></i> </i>150.998</span>
                        </li>

                        <li class="box-right--items">
                            <a href="#">
                                <div class="box-right--play">
                                    <i class="icon-music fas fa-music"></i>
                                </div>
                            </a>
                            <div class="info-music">
                                <h3 class="box-right--song"><a href="#">Đường ai nấy đi</a></h3>
                                <h4 class="box-right--singer"><a href="#">Bùi Anh Tuấn</a></h4>
                            </div>
                            <span class="box-right--viewmusic" ><i class="fas fa-headphones-alt"></i> </i>150.998</span>
                        </li>
                    </ul>
                    <p>

                    </p>
                </div>

            </div>
         </div>

         <div class="statusbar width-box">
                <div class="statusbar-provided">
                    <div class="statusbar--img">
                        <img class="provided--img" src="../Image/Cover_vuong/nct_logo.png" alt="">
                    </div>
                    <div class="provided--text">
                        <p class="provided--text__one">Cung cấp bởi : </p>   
                        <p class="provided--text__two">PTVA MUSIC DISTRIBUTION</p>
                    </div>
                    <ul class="statusbar-list" >
                        <li>
                            <a href="#"> 
                                <i class="far fa-plus-square"></i>
                                Thêm vào
                             </a>
                        </li>
                        <li>
                            <a href="#"> 
                                <i class="fas fa-download"></i>
                                Tải về
                             </a>
                        </li>
                        <li>
                            <a href="#"> 
                                <i class="fas fa-share-alt-square"></i>
                                Chia sẻ
                             </a>
                        </li>
                        <li>
                            <a href="#"> 
                                <i class="fas fa-mobile-alt"></i>
                                Nhạc chờ
                             </a>
                        </li>
                    </ul>
                </div>
         </div>

         <div class="lyric">
             <div class="lyric-box">
                 <div class="lyric-system">
                     <h2 class="lyric-system--song">LỜI BÀI HÁT: <%=dt.Rows[0]["Name"].ToString() %></h2>
                
                     <h4 class="lyric-system--text">Ca sĩ: <%=dt.Rows[0]["Name1"].ToString() %></h4>
                     <h4 class="lyric-system--text">Lời đăng bởi: <span>Admin</span></h4>
                     
                 </div>
                 <hr class="lyric-hr">
                    <%=dt.Rows[0]["Lyric"].ToString() %>
             </div>         
         </div>
<!--  -->
         <div class="comment width-box">
                <h3 class="reply">Phản Hồi</h3>
                <div class="box-reply">
                    <textarea  class="write-comment" name="" id="" cols="98" rows="5"></textarea>
                </div>
                <div class="button-comment">
                    <button>Bình Luận</button>
                </div>
         </div> 
        
         <!--  --> 
         <div class="list-album width-box">
            <a href="#">
                <h3 class="list-album--title">PLAYLIST | ANLBUM</h3> <i class=" list-album--icon fas fa-angle-right "></i>
            </a>

            <ul class="list-album--list">
                <li>
                    <div class="img-album">
                        <a href="#">
                            <img src="https://avatar-ex-swe.nixcdn.com/playlist/2019/08/15/1/0/d/3/1565850863565.jpg" alt="">
                        </a>
                    </div>
                    <div class="info-album">
                        <a href="#">Vì Sau Tất Cả</a>
                        <p><a href="#">V.A</a></p>
                    </div>
                </li>
                <li>
                    <div class="img-album">
                        <a href="#">
                            <img src="https://avatar-ex-swe.nixcdn.com/playlist/2019/08/15/1/0/d/3/1565850863565.jpg" alt="">
                        </a>
                    </div>
                    <div class="info-album">
                        <a href="#">Vì Sau Tất Cả</a>
                        <p><a href="#">V.A</a></p>
                    </div>
                </li>
                <li>
                    <div class="img-album">
                        <a href="#">
                            <img src="https://avatar-ex-swe.nixcdn.com/playlist/2019/08/15/1/0/d/3/1565850863565.jpg" alt="">
                        </a>
                    </div>
                    <div class="info-album">
                        <a href="#">Vì Sau Tất Cả</a>
                        <p><a href="#">V.A</a></p>
                    </div>
                </li>
                <li>
                    <div class="img-album">
                        <a href="#">
                            <img src="https://avatar-ex-swe.nixcdn.com/playlist/2019/08/15/1/0/d/3/1565850863565.jpg" alt="">
                        </a>
                    </div>
                    <div class="info-album">
                        <a href="#">Vì Sau Tất Cả</a>
                        <p><a href="#">V.A</a></p>
                    </div>
                </li>
                <li>
                    <div class="img-album">
                        <a href="#">
                            <img src="https://avatar-ex-swe.nixcdn.com/playlist/2019/08/15/1/0/d/3/1565850863565.jpg" alt="">
                        </a>
                    </div>
                    <div class="info-album">
                        <a href="#">Vì Sau Tất Cả</a>
                        <p><a href="#">V.A</a></p>
                    </div>
                </li>
            </ul>
         </div>
   </div>
</asp:Content>
