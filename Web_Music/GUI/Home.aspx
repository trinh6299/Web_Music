<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web_Music.GUI.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Trang chủ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="container" id="main">
		<div id="content">
				<div id="hot-album">
					<div id="abc">
						<a href="#" id="slider1">
							<img src="https://avatar-nct.nixcdn.com/slideshow/2020/10/26/5/5/4/1/1603706636633_org.jpg" alt="" width="750px">
						</a>
						<a href="#" id="slider2">
							<img src="https://avatar-ex-swe.nixcdn.com/slideshow/2020/12/03/6/8/0/a/1606968672313_org.jpg" alt="" width="750px">
						</a>
						<a href="#" id="slider3">
							<img src="https://avatar-ex-swe.nixcdn.com/slideshow/2020/11/30/7/8/e/c/1606712738977_org.jpg" alt="" width="750px">
						</a>
						<a href="#" id="slider4">
							<img src="https://avatar-ex-swe.nixcdn.com/slideshow/2020/11/30/7/8/e/c/1606710663224_org.jpg" alt="" width="750px">
						</a>
						<a href="#" id="slider5">
							<img src="https://avatar-ex-swe.nixcdn.com/slideshow/2020/11/30/7/8/e/c/1606711496335_org.jpg" alt="" width="750px">
						</a>
					</div>
					<ul>
						<li id="child1"><a href="#"><img src="https://avatar-nct.nixcdn.com/slideshow/2020/10/23/9/3/4/9/1603425495964_org.jpg" alt="dsds"  ></a></li>
						<li id="child2"><a href="#"><img src="https://avatar-nct.nixcdn.com/slideshow/2020/10/23/9/3/4/9/1603448821599_org.jpg" alt="dsd" ></a></li>
						<li id="child3"><a href="#"><img src="https://avatar-nct.nixcdn.com/slideshow/2020/10/19/0/7/f/8/1603096833321_org.jpg" alt="dsd"  ></a></li>
						<li id="child4"><a href="#"><img src="https://avatar-nct.nixcdn.com/slideshow/2020/10/20/6/b/4/f/1603175823944_org.jpg" alt="dsd"  ></a></li>
						<li id="child5"><a href="#"><img src="https://avatar-nct.nixcdn.com/slideshow/2020/10/26/5/5/4/1/1603706636633_org.jpg" alt="dsd" ></a></li>

					</ul>
				</div>
				<div id="today-playlist">
					<h3><a href="#">Nghe gì hôm nay</a></h3>
					<div class="album-list">



						<%for (int i = 0; i < dt1.Rows.Count; i++)
                            { %>
								<div class="album-item">
							<div>
								<a href="ChiTietBaiHat.aspx?Song_ID=<% =dt1.Rows[i]["ID"].ToString() %>">
									<img src="../../Image/Cover_vuong/<% =dt1.Rows[i]["Thumbnail"].ToString() %>" alt="" width="100%">	
								</a>
							</div>
							<p> 
								<a href="ChiTietBaiHat.aspx?Song_ID=<% =dt1.Rows[i]["ID"].ToString() %>"><% =dt1.Rows[i]["Name"].ToString() %></a>
							</p>
							<span id="view">
								<span></span>
								<span><% =dt1.Rows[i]["Views"].ToString() %></span>
							</span>
						</div>
						<%} %>



					</div>
				</div>
				<div id="latest">
					<h3><a href="#">Mới phát hành</a></h3>
					<div class="album-list">


						<%for (int i = 0; i < dt2.Rows.Count; i++)
                            { %>
								
								<div class="album-item">
							<div>
								<a href="ChiTietBaiHat.aspx?Song_ID=<% =dt2.Rows[i]["ID"].ToString() %>">
									<img src="../../Image/Cover_vuong/<% =dt2.Rows[i]["Thumbnail"].ToString() %>" alt="img" width="100%">			
								</a>
							</div>
							<p>
								<a href="ChiTietBaiHat.aspx?Song_ID=<% =dt2.Rows[i]["ID"].ToString() %>"><% =dt2.Rows[i]["Name"].ToString() %></a>

							</p>
							<span id="view">
								<span></span>
								<span><% =dt2.Rows[i]["Views"].ToString() %></span>
							</span>
						</div>

						<%} %>


					
					</div>
				</div>
				<div id="mv-hot">
					<h3><a href="#">MC Hot</a></h3>
					<div id="mv-hot-list">
						<div class="mv-hot-item">
							<span id="view">
								<span></span>
								<span>13006</span>
							</span>
							<span class="view-time">8.100</span>
							<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/mv/2020/11/28/9/6/b/d/1606568594620_640.jpg" alt="mv" width="100%" height="100%"></a>
							<h4>Ngải Tình</h4>
							<p><a href="#">Thủy Tiên</a></p>
						</div>
						<div class="mv-hot-item">
							<span id="view">
								<span></span>
								<span>13006</span>
							</span>
							<span class="view-time">4:30</span>
							<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/mv/2020/11/27/f/b/3/2/1606462815125_640.jpg"alt="mv" width="100%" height="100%"></a>
							<h4>Người Đến Sau Sẽ Có Tất Cả	</h4>
							<p><a href="#">Hoài Lâm</a></p>
						</div>
						<div class="mv-hot-item">
							<span id="view">
								<span></span>
								<span>13006</span>
							</span>
							<span class="view-time">8.100</span>
							<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/mv/2020/11/25/0/6/7/f/1606286907066_268.jpg" alt="mv" width="100%" height="100%"></a>
							<h4>Cá cắn câu</h4>
							<p><a href="#">Issac</a></p>
						</div>
						<div class="mv-hot-item">
							<span id="view">
								<span></span>
								<span>13006</span>
							</span>
							<span class="view-time">8.100</span>
							<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/mv/2020/12/01/d/4/e/e/1606817906206_268.jpg" alt="mv" width="100%" height="100%"></a>
							<h4>Cá cắn câu</h4>
							<p><a href="#">Issac</a></p>
						</div>
						<div class="mv-hot-item">
							<span id="view">
								<span></span>
								<span>13006</span>
							</span>
							<span class="view-time">8.100</span>
							<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/mv/2020/11/27/3/0/5/4/1606464202019_268.jpg" alt="mv" width="100%" height="100%"></a>
							<h4>Cá cắn câu</h4>
							<p><a href="#">Issac</a></p>
						</div>
						<div class="mv-hot-item">
							<span id="view">
								<span></span>
								<span>13006</span>
							</span>
							<span class="view-time">8.100</span>
							<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/mv/2020/11/17/4/c/d/1/1605605288863_268.jpg" alt="mv" width="100%" height="100%"></a>
							<h4>Cá cắn câu</h4>
							<p><a href="#">Issac</a></p>
						</div>
						<div class="mv-hot-item">
							<span id="view">
								<span></span>
								<span>13006</span>
							</span>
							<span class="view-time">8.100</span>
							<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/mv/2020/11/25/0/6/7/f/1606270924748_268.jpg" alt="mv" width="100%" height="100%"></a>
							<h4>Cá cắn câu</h4>
							<p><a href="#">Issac</a></p>
						</div>
						<div class="mv-hot-item">
							<span id="view">
								<span></span>
								<span>13006</span>
							</span>
							<span class="view-time">8.100</span>
							<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/mv/2020/11/30/b/4/9/0/1606705018460_268.jpg" alt="mv" width="100%" height="100%"></a>
							<h4>Cá cắn câu</h4>
							<p><a href="#">Issac</a></p>
						</div>
						<div class="mv-hot-item">
							<span id="view">
								<span></span>
								<span>13006</span>
							</span>
							<span class="view-time">8.100</span>
							<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/mv/2020/11/26/e/5/d/6/1606378596059_268.jpg" alt="mv" width="100%" height="100%"></a>
							<h4>Cá cắn câu</h4>
							<p><a href="#">Issac</a></p>
						</div>
						<div class="mv-hot-item">
							<span id="view">
								<span></span>
								<span>13006</span>
							</span>
							<span class="view-time">8.100</span>
							<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/mv/2020/11/26/e/5/d/6/1606378596059_268.jpg" alt="mv" width="100%" height="100%"></a>
							<h4>Cá cắn câu</h4>
							<p><a href="#">Issac</a></p>
						</div>
					</div>
				</div>	
				<div id="songs">
					<h3><a href="#">Bài Hát</a></h3>
					<div class="container">
						<div class="item">
							<div class="item1">
									<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/song/2020/11/24/6/8/8/a/1606199992060.jpg" alt="" width="60px" height="60px"></a>
							</div>	
							<div class="item2">
									<a href="#">
										<span>Yêu Vội Vàng</span>
									</a>
							</div>	
							<div class="item3">
									<a href="#">
										<span>Trung Quân</span>
									</a>
							</div>	
							<div class="views">
								1020200
							</div>
						</div>
						<div class="item">
							<div class="item1">
									<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/song/2020/11/24/6/8/8/a/1606199992060.jpg" alt="" width="60px" height="60px"></a>
							</div>	
							<div class="item2">
									<a href="#">
										<span>Yêu Vội Vàng</span>
									</a>
							</div>	
							<div class="item3">
									<a href="#">
										<span>Trung Quân</span>
									</a>
							</div>	
							<div class="views">
								1020200
							</div>
						</div>
						<div class="item">
							<div class="item1">
									<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/song/2020/11/24/6/8/8/a/1606199992060.jpg" alt="" width="60px" height="60px"></a>
							</div>	
							<div class="item2">
									<a href="#">
										<span>Yêu Vội Vàng</span>
									</a>
							</div>	
							<div class="item3">
									<a href="#">
										<span>Trung Quân</span>
									</a>
							</div>	
							<div class="views">
								1020200
							</div>
						</div>
						<div class="item">
							<div class="item1">
									<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/song/2020/11/24/6/8/8/a/1606199992060.jpg" alt="" width="60px" height="60px"></a>
							</div>	
							<div class="item2">
									<a href="#">
										<span>Yêu Vội Vàng</span>
									</a>
							</div>	
							<div class="item3">
									<a href="#">
										<span>Trung Quân</span>
									</a>
							</div>	
							<div class="views">
								1020200
							</div>
						</div>
						<div class="item">
							<div class="item1">
									<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/song/2020/11/24/6/8/8/a/1606199992060.jpg" alt="" width="60px" height="60px"></a>
							</div>	
							<div class="item2">
									<a href="#">
										<span>Yêu Vội Vàng</span>
									</a>
							</div>	
							<div class="item3">
									<a href="#">
										<span>Trung Quân</span>
									</a>
							</div>
							<div class="views">
								1020200
							</div>	
						</div>
						<div class="item">
							<div class="item1">
									<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/song/2020/11/24/6/8/8/a/1606199992060.jpg" alt="" width="60px" height="60px"></a>
							</div>	
							<div class="item2">
									<a href="#">
										<span>Yêu Vội Vàng</span>
									</a>
							</div>	
							<div class="item3">
									<a href="#">
										<span>Trung Quân</span>
									</a>
							</div>	
							<div class="views">
								1020200
							</div>
						</div>
						<div class="item">
							<div class="item1">
									<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/song/2020/11/24/6/8/8/a/1606199992060.jpg" alt="" width="60px" height="60px"></a>
							</div>	
							<div class="item2">
									<a href="#">
										<span>Yêu Vội Vàng</span>
									</a>
							</div>	
							<div class="item3">
									<a href="#">
										<span>Trung Quân</span>
									</a>
							</div>	
							<div class="views">
								1020200
							</div>
						</div>
						<div class="item">
							<div class="item1">
									<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/song/2020/11/24/6/8/8/a/1606199992060.jpg" alt="" width="60px" height="60px"></a>
							</div>	
							<div class="item2">
									<a href="#">
										<span>Yêu Vội Vàng</span>
									</a>
							</div>	
							<div class="item3">
									<a href="#">
										<span>Trung Quân</span>
									</a>
							</div>
							<div class="views">
								1020200
							</div>	
						</div>
						<div class="item">
							<div class="item1">
									<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/song/2020/11/24/6/8/8/a/1606199992060.jpg" alt="" width="60px" height="60px"></a>
							</div>	
							<div class="item2">
									<a href="#">
										<span>Yêu Vội Vàng</span>
									</a>
							</div>	
							<div class="item3">
									<a href="#">
										<span>Trung Quân</span>
									</a>
							</div>	
							<div class="views">
								1020200
							</div>
						</div>
						<div class="item">
							<div class="item1">
									<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/song/2020/11/24/6/8/8/a/1606199992060.jpg" alt="" width="60px" height="60px"></a>
							</div>	
							<div class="item2">
									<a href="#">
										<span>Yêu Vội Vàng</span>
									</a>
							</div>	
							<div class="item3">
									<a href="#">
										<span>Trung Quân</span>
									</a>
							</div>	
							<div class="views">
								<p><i class="fas fa-headphones-alt"></i></p>
								
							</div>
						</div>
					</div>
				</div>		
		</div>
		<div id="sidebar">
			<div class="trending" >
					<div class="trending-item" id="td1">
						<img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/12/01/f/2/f/d/1606813178178_600.jpg"  alt="" width="100%" >
						<h3 style="text-align: center;" >Thủy Tiên</h3>
					</div>
					<div class="trending-item"  id="td2">
						<img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/05/27/6/9/5/0/1590568952971_600.jpg" alt="" width="100%"   >
						<h3 style="text-align: center; " >Hoài Lâm</h3>
					</div>
					<div class="trending-item"  id="td3" >
						<img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/07/03/e/9/8/c/1593758437383_600.jpg" alt="" width="100%"   >
						<h3 style="text-align: center;">Trung Quân</h3>
					</div>
					<div class="trending-item"  id="td4">
						<img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2019/06/14/d/8/d/a/1560481615550_600.jpg" alt="" width="100%"  >
						<h3 style="text-align: center;" >Mỹ Tâm</h3>
					</div>
					<div class="trending-item"  id="td5" >
						<img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/11/23/f/2/4/4/1606126912651_600.jpg" alt="" width="100%" >
							<h3 style="text-align: center;" >Binz</h3>
					</div>
					<div class="bot">
					<p>Top Nghệ Sĩ Trending Trong Tuần</p>				
					<ul>
						<li><a href="#"><img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/12/01/f/2/f/d/1606813178178_600.jpg" alt="" width="30px" open="toggle" target= "td1"></a></li>
						<li><a href="#"><img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/05/27/6/9/5/0/1590568952971_600.jpg" alt="" width="30px" open="toggle" target= "td2"></a></li>
						<li><a href="#"><img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/07/03/e/9/8/c/1593758437383_600.jpg" alt="" width="30px" open="toggle" target= "td3"></a></li>
						<li><a href="#"><img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2019/06/14/d/8/d/a/1560481615550_600.jpg" alt="" width="30px" open="toggle" target= "td4"></a></li>
						<li><a href="#"><img src="https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/11/23/f/2/4/4/1606126912651_600.jpg" alt="" width="30px" open="toggle" target= "td5"></a></li>
						

					</ul>
					</div>
				
			</div>
			<div class="theme-hot">
					<h3><a href="#">CHỦ ĐỀ HOT</a></h3>
					<ul>
						<li>
							<a href="#">
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/09/03/4/5/9/8/1599120670684_org.jpg" alt="" width="300px">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/12/04/5/e/f/9/1607076279751_org.jpg" alt="" width="300px">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/06/17/7/d/8/9/1592361651958_org.jpg" alt="" width="300px">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/11/04/c/1/3/4/1604476818537_org.jpg" alt="" width="300px">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="https://avatar-ex-swe.nixcdn.com/topic/thumb/2020/06/11/9/5/9/3/1591856761476_org.jpg" alt="" width="300px">
							</a>
						</li>
					</ul>
				</div>
			<div class="ranking">
				<h3><a href="#">BXH Bài Hát</a></h3>
				<div class="top-rank">
                        <a href="#"  id="bxh1">Việt Nam</a>
                        <a href="#" id="bxh2">Âu Mỹ</a>
                        <a href="#" id="bxh3">Hàn Quốc</a>                          
                </div>
                <div class="list_chart_music" id="top20-viet">     
                        <ul>
                             <li>
                             	<span>1</span>
                             	<div>
                             		<h3>Trên tình bạn dưới tình yêu</h3>
                             		<h5>Min</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>2</span>
                             	<div>
                             		<h3>Thế Thái</h3>
                             		<h5>Hương Ly</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>3</span>
                             	<div>
                             		<h3>Anh Không Tha Thứ</h3>
                             		<h5>Đình Dũng</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>4</span>
                             	<div>
                             		<h3>Tình Yêu Khủng Long</h3>
                             		<h5>Hương Ly</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>5</span>
                             	<div>
                             		<h3>Thế Thái</h3>
                             		<h5>Tùng Viu</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>6</span>
                             	<div>
                             		<h3>Nàng Thơ</h3>
                             		<h5>Đình Dũng</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>7</span>
                             	<div>
                             		<h3>Thế Thái</h3>
                             		<h5>Hương Ly</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>8</span>
                             	<div>
                             		<h3>Anh Không Tha Thứ</h3>
                             		<h5>Đình Dũng</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>9</span>
                             	<div>
                             		<h3>Tình Yêu Khủng Long</h3>
                             		<h5>Hương Ly</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>10</span>
                             	<div>
                             		<h3>Thế Thái</h3>
                             		<h5>Tùng Viu</h5>
                             	</div>
                             </li>
                            
                        </ul>
                </div>
                <div class="list_chart_music" id="top20-au-my" style="display: none;">     
                        <ul>
                             <li>
                             	<span>1</span>
                             	<div>
                             		<h3>Mad At Disney</h3>
                             		<h5>salem ilese</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>2</span>
                             	<div>
                             		<h3>That's Girl</h3>
                             		<h5>Taylor Swift</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>3</span>
                             	<div>
                             		<h3>Sugar</h3>
                             		<h5>Marron 5</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>4</span>
                             	<div>
                             		<h3>Reality</h3>
                             		<h5>4P's</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>5</span>
                             	<div>
                             		<h3>Night King</h3>
                             		<h5>Flexible</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>6</span>
                             	<div>
                             		<h3>I love you</h3>
                             		<h5>Redicet</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>7</span>
                             	<div>
                             		<h3>Night King</h3>
                             		<h5>Flexible</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>8</span>
                             	<div>
                             		<h3>I love you</h3>
                             		<h5>Redicet</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>9</span>
                             	<div>
                             		<h3>Sugar</h3>
                             		<h5>Marron 5</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>10</span>
                             	<div>
                             		<h3>Reality</h3>
                             		<h5>4P's</h5>
                             	</div>
                             </li>
                            
                        </ul>
                </div>
                <div class="list_chart_music" id="top20-han-quoc"  style="display: none;">     
                        <ul>
                             <li>
                             	<span>1</span>
                             	<div>
                             		<h3>Daniel Jamse</h3>
                             		<h5>Hương Ly</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>2</span>
                             	<div>
                             		<h3>Love Girl</h3>
                             		<h5>Blackpink</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>3</span>
                             	<div>
                             		<h3>Thế Thái</h3>
                             		<h5>Hương Ly</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>4</span>
                             	<div>
                             		<h3>I can't Stop Me</h3>
                             		<h5>Twice</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>5</span>
                             	<div>
                             		<h3>MaGo</h3>
                             		<h5>GFriend</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>6</span>
                             	<div>
                             		<h3>Maria</h3>
                             		<h5>MAMABO</h5>
                             	</div>
                             </li>
                               <li>
                             	<span>7</span>
                             	<div>
                             		<h3>MaGo</h3>
                             		<h5>GFriend</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>8</span>
                             	<div>
                             		<h3>Maria</h3>
                             		<h5>MAMABO</h5>
                             	</div>
                             </li>
                               <li>
                             	<span>9</span>
                             	<div>
                             		<h3>MaGo</h3>
                             		<h5>GFriend</h5>
                             	</div>
                             </li>
                              <li>
                             	<span>10</span>
                             	<div>
                             		<h3>Maria</h3>
                             		<h5>MAMABO</h5>
                             	</div>
                             </li>
                        </ul>
                </div>

			</div>	
			
			<div class="top100" >
				<div class="top-100-top" style="text-align: center;">
					<h1></h1>			
					<h3>TOP 100 BÀI HÁT</h3>
				</div>
				<div class="box-content">
					<div class="box">
						<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/playlist/2020/09/16/e/1/f/f/1600239305553.jpg" alt="" width="50px"></a>
						<a href="#">Top 100 bài hát hay nhất Việt Nam</a>
					</div>
					<div class="box">
						<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/playlist/2020/09/16/e/1/f/f/1600239305553.jpg" alt="" width="50px"></a>
						<a href="#">Top 100 bài hát hay nhất Hàn Quốc</a>
					</div>
					<div class="box">
						<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/playlist/2020/09/16/e/1/f/f/1600239305553.jpg" alt="" width="50px"></a>
						<a href="#">Top 100 bài hát hay nhất US</a>
					</div>
					<div class="box">
						<a href="#"><img src="https://avatar-ex-swe.nixcdn.com/playlist/2020/09/16/e/1/f/f/1600239305553.jpg" alt="" width="50px"></a>
						<a href="#">Top 100 bài hát hay nhất mọi thời đại</a>
					</div>
			
				</div>
				<img src="https://stc-id.nixcdn.com/v11/images/flower.png" alt="">
			</div>
		</div>
		
	</div>
<script src="./Script/Home_Script.js"></script>
</asp:Content>
