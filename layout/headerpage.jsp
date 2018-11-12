<%@ page pageEncoding="utf-8"%>
<%@ page import="Objects.Category"%>
<%@ page import="Control.CategoryControl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tiêu đề</title>
</head>
<body>
	<%
		CategoryControl category = new CategoryControl();
	%>
	<!-- Bắt đầu tiêu đề -->
	<header class="header-area home-style-2">
		<div class="header-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-3 col-xs-6">
						<div class="logo">
							<a href="../index.jsp"> <img src="../assets/img/logo/logo.png"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-md-8 col-sm-9 col-xs-6">
						<div class="cart-menu">
							<div class="search-style-2 f-right">
								<a class="icon-search-2" href="javascript:void(0)"> <i class="pe-7s-search"></i></a>
								<div class="search2-content">
									<form action="#">
										<div class="search-input-button2">
											<input class="" placeholder="Tìm kiếm" type="search">
											<button class="search-button2" type="submit">
												<i class="pe-7s-search"></i>
											</button>
										</div>
									</form>
								</div>
							</div>
							<div class="user user-style-3 f-right">
								<a href="#"> <i class="pe-7s-add-user"></i>
								</a>
								<div class="currence-user-page">
									<div class="user-page">
										<ul>
											<li><a href="../pages/checkout.jsp"><i class="pe-7s-check"></i>Thanh
													toán</a></li>
											<li><a href="../pages/login.jsp"><i class="pe-7s-next-2"></i>Đăng
													nhập</a></li>
											<li><a href="../pages/register.jsp"><i class="pe-7s-add-user"></i>Tạo
													tài khoản mới</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="user user-style-3 f-right hidden-xs">
								<a href="#"> <i class="pe-7s-global"></i>
								</a>
								<div class="currence-user-page">
									<div class="user-page">
										<ul>
											<li><a href="#"><i class="pe-7s-flag"></i> Ngôn ngữ</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="shopping-cart f-right">
								<a class="top-cart" href="../pages/cart.html"><i class="pe-7s-cart"></i></a>
								<span>10</span>
								<ul>
									<li>
										<div class="cart-img-price">
											<div class="cart-img">
												<a href="#"><img
													src="../assets/img/shop/product/BanhNgot1.png" alt="" /></a>
											</div>
											<div class="cart-content">
												<h3>
													<a href="#">Sản phẩm 1</a>
												</h3>
												<span class="cart-price">299.000 (3)</span>
											</div>
											<div class="cart-del">
												<i class="pe-7s-close-circle"></i>
											</div>
										</div>
									</li>
									<li>
										<div class="cart-img-price">
											<div class="cart-img">
												<a href="#"><img
													src="../assets/img/shop/product/BanhNgot3.png" alt="" /></a>
											</div>
											<div class="cart-content">
												<h3>
													<a href="#">Sản phẩm 2</a>
												</h3>
												<span class="cart-price">200.000 (7)</span>
											</div>
											<div class="cart-del">
												<i class="pe-7s-close-circle"></i>
											</div>
										</div>
									</li>
									<li>
										<p class="total">
											Tổng: <span class="total-price">499.000 đ</span>
										</p>
									</li>
									<li>
										<p class="buttons">
											<a class="my-cart" href="../pages/cart.jsp">Xem giỏ hàng</a> <a
												class="checkout" href="../pages/checkout.jsp">Thanh toán</a>
										</p>
									</li>
								</ul>
							</div>
							<div class="main-menu f-right">
								<nav>
									<ul>
										<li><a href="../index.jsp">Trang chủ</a>
										<li><a href="../pages/shop-page.jsp?id_product=0">Sản phẩm</a>
											<ul class="dropdown">
												<!-- ** Đổ thể loại từ dữ liệu ra ** -->
												<%
													for (Category ds : category.getListCategory()) {
												%>
												<li><a href="../pages/shop-page.jsp?id_product=<%=ds.getId()%>"><%=ds.getTenloai()%>
												</a></li>
												<%
													}
												%>
											</ul></li>
										<li><a href="../pages/blog-page.jsp">Bài viết</a>
											<ul class="dropdown">
												<li><a href="../pages/blog-page.jsp">Giao diện phân trang</a></li>
												<li><a href="../pages/blog-sidebar.jsp">Giao diện menu trái</a></li>
											</ul></li>
										<li><a href="../pages/contact.jsp">Liên hệ</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Xong tiêu đề -->
	<!-- Cài đặt xem trên thiết bị di động -->
	<div class="mobile-menu-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="mobile-menu">
						<nav id="dropdown">
							<ul>
								<li><a class="active1" href="./index.jsp">Trang chủ</a></li>
								<li class="active1"><a class="active1" href="./pages/shop-page.jsp?id_product=0">Sản
										phẩm</a>
									<ul>
										<!-- ** Đổ thể loại từ dữ liệu ra ** -->
										<%
											for (Category ds : category.getListCategory()) {
										%>
										<li><a href="../pages/shop-page.jsp?id_product=<%=ds.getId()%>"><%=ds.getTenloai()%>
										</a></li>
										<%
											}
										%>
									</ul></li>
								<li class="active1"><a class="active1" href="#">Bài
										viết</a>
									<ul>
										<li><a href="../pages/blog-page.jsp">Giao diện phân trang</a></li>
										<li><a href="../pages/blog-sidebar.jsp">Giao diện menu</a></li>
									</ul></li>
								<li><a href="../pages/contact.jsp">Liên hệ</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong cài đặt xem trên thiết bị di động -->

</body>
</html>