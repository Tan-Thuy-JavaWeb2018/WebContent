<%@ page pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Trang chủ</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- icon cho trang -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">
	<!-- Toàn bộ link css -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
	<link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
	<link rel="stylesheet" href="lib/css/preview.css" type="text/css"
		media="screen" />
	<link rel="stylesheet" href="assets/css/animate.css">
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<link rel="stylesheet" href="assets/css/bundle.css">
	<link rel="stylesheet" href="assets/css/style.css">
	<link rel="stylesheet" href="assets/css/responsive.css">
	<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>

	<!-- Thêm phần tiêu đề trang -->
	<jsp:include page="layout/header.jsp"></jsp:include>
	<!-- Xong phần tiêu đề trang -->

	<!-- Bắt đầu slide -->
	<div class="slider-area">
		<div class="bend niceties preview-2">
			<div id="ensign-nivoslider" class="slides">
				<img src="assets/img/slider/2.png" alt=""
					title="#slider-direction-1" /> <img src="assets/img/slider/1.png"
					alt="" title="#slider-direction-2" />
			</div>
			<!-- Hình ảnh 1 -->
			<div id="slider-direction-1" class="t-cn slider-direction">
				<div class="container">
					<div class="slider-content t-lfl s-tb slider-1">
						<div class="title-container s-tb-c title-compress">
							<h1 class="title1">thế giới thư giản</h1>
							<h2 class="title2">Thiên đường bánh ngọt !</h2>
							<h3 class="title3">
								Đến với chúng tôi, thỏa sức chọn lựa những loại thức uống <br>hot
								nhất với giá rẻ hơn và khuyến mãi cực tốt
							</h3>
							<a class="btn-hover" href="shop-page.html">Mua ngay <i
								class="fa fa-angle-double-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!-- Hình ảnh 2 -->
			<div id="slider-direction-2" class="slider-direction">
				<div class="container">
					<div class="slider-content t-lfl s-tb slider-1">
						<div class="title-container s-tb-c title-compress">
							<h1 class="title1">mở cửa mọi ngày</h1>
							<h2 class="title2">6h đến 23h</h2>
							<h3 class="title3">
								Không gian đẹp, phù hợp cho mọi lứa tuổi <br> đặt biệt các
								bạn trẻ có sở thích chụp hình.
							</h3>
							<a class="btn-hover" href="shop-page.html">Mua ngay <i
								class="fa fa-angle-double-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Xong slider -->
	<!-- Bắt đầu dịch vụ - giao hàng  -->
	<div class="service-area pt-100">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-3">
					<div class="single-service addm">
						<div class="service-icon">
							<i class="fa fa-bus"></i>
						</div>
						<div class="service-text">
							<h3>Miển phí vận chuyển</h3>
							<p>Giao hàng đảm bảo</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-3">
					<div class="single-service addm">
						<div class="service-icon">
							<i class="fa fa-credit-card"></i>
						</div>
						<div class="service-text">
							<h3>Hoàn trả tiền</h3>
							<p>Hoàn tiền nếu quá 30 ngày</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-3">
					<div class="single-service addm">
						<div class="service-icon">
							<i class="pe-7s-headphones"></i>
						</div>
						<div class="service-text">
							<h3>Hổ trợ trượt tuyến</h3>
							<p>Liên hệ (+84) 977 583 016</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-3">
					<div class="single-service">
						<div class="service-icon">
							<i class="fa fa-briefcase"></i>
						</div>
						<div class="service-text">
							<h3>khuyến mãi</h3>
							<p>Tạo niềm vui mua sắm</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong dịch vụ - giao hàng -->
	<!-- Bắt đầu sản phẩm nỗi bật -->
	<div class="portfolio-area ptb-100">
		<div class="container">
			<div class="section-title text-center mb-50">
				<h2>
					Sản phẩm nỗi bật<i class="fa fa-shopping-cart"></i>
				</h2>
			</div>
			<div class="shop-menu portfolio-left-menu text-center mb-50">
				<button class="active" data-filter="*">Mọi thứ</button>
				<button data-filter=".mix1">Bánh ngọt</button>
				<button data-filter=".mix2">Bánh mặn</button>
				<button data-filter=".mix3">Trà sữa</button>
				<button data-filter=".mix4">Nước uống</button>
			</div>
			<div class="row portfolio-style-2">
				<!-- Hiển thị sản phẩm -->
				<div class="grid">
					<!--(Bánh ngọt)1  -->
					<div class="col-md-3 col-sm-6 col-xs-12 grid-item mix1 mb-50">
						<div class="single-shop">
							<div class="shop-img">
								<a href="#"><img src="assets/img/shop/product/BanhNgot1.png"
									alt="" /></a>
								<div class="price-up-down">
									<span class="sale-new">Giảm</span>
								</div>
								<div class="button-group">
									<a href="#" title="Add to Cart"> <i class="pe-7s-cart"></i>
									</a> <a class="wishlist" href="#" title="Wishlist"> <i
										class="pe-7s-like"></i>
									</a> <a href="#" data-toggle="modal" data-target="#quick-view"
										title="Quick View"> <i class="pe-7s-look"></i>
									</a>
								</div>
							</div>
							<div class="shop-text-all">
								<div class="title-color fix">
									<div class="shop-title f-left">
										<h3>
											<a href="#">Tên sản phẩm</a>
										</h3>
									</div>
									<div class="price f-right">
										<span class="new">120.000 đ</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- [Bánh mặn]2 -->
					<div class="col-md-3 col-sm-6 col-xs-12 grid-item mix2 mb-50">
						<div class="single-shop">
							<div class="shop-img">
								<a href="#"><img src="assets/img/shop/product/BanhMan1.png"
									alt="" /></a>
								<div class="price-up-down">
									<span class="sale-new">Giảm</span>
								</div>
								<div class="button-group">
									<a href="#" title="Add to Cart"> <i class="pe-7s-cart"></i>
									</a> <a class="wishlist" href="#" title="Wishlist"> <i
										class="pe-7s-like"></i>
									</a> <a href="#" data-toggle="modal" data-target="#quick-view"
										title="Quick View"> <i class="pe-7s-look"></i>
									</a>
								</div>
							</div>
							<div class="shop-text-all">
								<div class="title-color fix">
									<div class="shop-title f-left">
										<h3>
											<a href="#">Tên sản phẩm</a>
										</h3>
									</div>
									<div class="price f-right">
										<span class="new">150.000 đ</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--(Bánh ngọt)3 -->
					<div class="col-md-3 col-sm-6 col-xs-12 grid-item mix1 mb-50">
						<div class="single-shop">
							<div class="shop-img">
								<a href="#"><img src="assets/img/shop/product/BanhNgot2.png"
									alt="" /></a>
								<div class="price-up-down">
									<span class="sale-new">Mới</span>
								</div>
								<div class="button-group">
									<a href="#" title="Add to Cart"> <i class="pe-7s-cart"></i>
									</a> <a class="wishlist" href="#" title="Wishlist"> <i
										class="pe-7s-like"></i>
									</a> <a href="#" data-toggle="modal" data-target="#quick-view"
										title="Quick View"> <i class="pe-7s-look"></i>
									</a>
								</div>
							</div>
							<div class="shop-text-all">
								<div class="title-color fix">
									<div class="shop-title f-left">
										<h3>
											<a href="#">Tên sản phẩm</a>
										</h3>
									</div>
									<div class="price f-right">
										<span class="new">180.000 đ</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 4 nước uống -->
					<div class="col-md-3 col-sm-6 col-xs-12 grid-item mix4 mb-50">
						<div class="single-shop">
							<div class="shop-img">
								<a href="#"><img src="assets/img/shop/product/NuocUong.png"
									alt="" /></a>
								<div class="price-up-down">
									<span class="sale-new">Mới</span>
								</div>
								<div class="button-group">
									<a href="#" title="Add to Cart"> <i class="pe-7s-cart"></i>
									</a> <a class="wishlist" href="#" title="Wishlist"> <i
										class="pe-7s-like"></i>
									</a> <a href="#" data-toggle="modal" data-target="#quick-view"
										title="Quick View"> <i class="pe-7s-look"></i>
									</a>
								</div>
							</div>
							<div class="shop-text-all">
								<div class="title-color fix">
									<div class="shop-title f-left">
										<h3>
											<a href="#">Tên sản phẩm</a>
										</h3>
									</div>
									<div class="price f-right">
										<span class="new">220.000 đ</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--(Bánh ngọt) 5 -->
					<div class="col-md-3 col-sm-6 col-xs-12 grid-item mix1 mb-50">
						<div class="single-shop">
							<div class="shop-img">
								<a href="#"><img src="assets/img/shop/product/BanhNgot3.png"
									alt="" /></a>
								<div class="price-up-down">
									<span class="sale-new">Giảm</span>
								</div>
								<div class="button-group">
									<a href="#" title="Add to Cart"> <i class="pe-7s-cart"></i>
									</a> <a class="wishlist" href="#" title="Wishlist"> <i
										class="pe-7s-like"></i>
									</a> <a href="#" data-toggle="modal" data-target="#quick-view"
										title="Quick View"> <i class="pe-7s-look"></i>
									</a>
								</div>
							</div>
							<div class="shop-text-all">
								<div class="title-color fix">
									<div class="shop-title f-left">
										<h3>
											<a href="#">Tên sản phẩm</a>
										</h3>
									</div>
									<div class="price f-right">
										<span class="new">430.000 đ</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- {trà sữa} 6-->
					<div class="col-md-3 col-sm-6 col-xs-12 grid-item mix3 mb-50">
						<div class="single-shop">
							<div class="shop-img">
								<a href="#"><img src="assets/img/shop/product/TraSua1.png"
									alt="" /></a>
								<div class="price-up-down">
									<span class="sale-new">Giảm</span>
								</div>
								<div class="button-group">
									<a href="#" title="Add to Cart"> <i class="pe-7s-cart"></i>
									</a> <a class="wishlist" href="#" title="Wishlist"> <i
										class="pe-7s-like"></i>
									</a> <a href="#" data-toggle="modal" data-target="#quick-view"
										title="Quick View"> <i class="pe-7s-look"></i>
									</a>
								</div>
							</div>
							<div class="shop-text-all">
								<div class="title-color fix">
									<div class="shop-title f-left">
										<h3>
											<a href="#">Tên sản phẩm</a>
										</h3>
									</div>
									<div class="price f-right">
										<span class="new">380.00 đ</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 4 nước uống -->
					<div class="col-md-3 col-sm-6 col-xs-12 grid-item mix4 mb-50">
						<div class="single-shop">
							<div class="shop-img">
								<a href="#"><img src="assets/img/shop/product/NuocUong1.png"
									alt="" /></a>
								<div class="price-up-down">
									<span class="sale-new">Giảm</span>
								</div>
								<div class="button-group">
									<a href="#" title="Add to Cart"> <i class="pe-7s-cart"></i>
									</a> <a class="wishlist" href="#" title="Wishlist"> <i
										class="pe-7s-like"></i>
									</a> <a href="#" data-toggle="modal" data-target="#quick-view"
										title="Quick View"> <i class="pe-7s-look"></i>
									</a>
								</div>
							</div>
							<div class="shop-text-all">
								<div class="title-color fix">
									<div class="shop-title f-left">
										<h3>
											<a href="#">Tên sản phẩm</a>
										</h3>
									</div>
									<div class="price f-right">
										<span class="new">650.00 đ</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--(Bánh ngọt)8 -->
					<div class="col-md-3 col-sm-6 col-xs-12 grid-item mix1 mb-50">
						<div class="single-shop">
							<div class="shop-img">
								<a href="#"><img src="assets/img/shop/product/BanhNgot4.png"
									alt="" /></a>
								<div class="price-up-down">
									<span class="sale-new">Giảm</span>
								</div>
								<div class="button-group">
									<a href="#" title="Add to Cart"> <i class="pe-7s-cart"></i>
									</a> <a class="wishlist" href="#" title="Wishlist"> <i
										class="pe-7s-like"></i>
									</a> <a href="#" data-toggle="modal" data-target="#quick-view"
										title="Quick View"> <i class="pe-7s-look"></i>
									</a>
								</div>
							</div>
							<div class="shop-text-all">
								<div class="title-color fix">
									<div class="shop-title f-left">
										<h3>
											<a href="#">Tên sản phẩm</a>
										</h3>
									</div>
									<div class="price f-right">
										<span class="new">120.000 đ</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Xong hiển thị sản phẩm -->
			</div>
			<div class="text-center">
				<a class="hvr-shutter-out-horizontal" href="shop-page.jsp">Xem
					thêm <i class="fa fa-angle-double-right"></i>
				</a>
			</div>
		</div>
	</div>
	<!-- Xong sản phẩm nỗi bật -->
	<!-- Bắt đầu khu vực khuyến mãi -->
	<div class="offer-area shop-text bg-opacity-black-90">
		<div class="container">
			<div class="subscribe-bg ptb-80">
				<div class="row">
					<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 ">
						<div class="offer-text text-center">
							<h3>chương trình khuyến mãi</h3>
							<div class="text-center">
								<a class="hvr-shutter-out-horizontal" href="shop-page.html">mua
									ngay <i class="fa fa-angle-double-right"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong khu vực khuyến mãi -->
	<!-- Bắt đầu sản phẩm mới -->
	<div class="special-offer ptb-100">
		<div class="container">
			<div class="section-title text-center mb-50">
				<h2>
					Hàng mới về <i class="fa fa-shopping-cart"></i>
				</h2>
			</div>
			<div class="row">
				<div class="special-slider-active owl-carousel">
					<div class="single-special-slider">
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="single-shop">
								<div class="shop-img">
									<a href="#"><img src="assets/img/shop/product/BanhMan1.png"
										alt="" /></a>
									<div class="price-up-down">
										<span class="sale-new">Mới</span>
									</div>
									<div class="button-group">
										<a href="#" title="Add to Cart"> <i class="pe-7s-cart"></i>
										</a> <a class="wishlist" href="#" title="Wishlist"> <i
											class="pe-7s-like"></i>
										</a> <a href="#" data-toggle="modal" data-target="#quick-view"
											title="Quick View"> <i class="pe-7s-look"></i>
										</a>
									</div>
								</div>
								<div class="shop-text-all">
									<div class="title-color fix">
										<div class="shop-title f-left">
											<h3>
												<a href="#">Tên sản phẩm</a>
											</h3>
										</div>
										<div class="price f-right">
											<span class="new">120.000 đ</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="single-special-slider">
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="single-shop">
								<div class="shop-img">
									<a href="#"><img
										src="assets/img/shop/product/BanhNgot1.png" alt="" /></a>
									<div class="price-up-down">
										<span class="sale-new">Mới</span>
									</div>
									<div class="button-group">
										<a href="#" title="Add to Cart"> <i class="pe-7s-cart"></i>
										</a> <a class="wishlist" href="#" title="Wishlist"> <i
											class="pe-7s-like"></i>
										</a> <a href="#" data-toggle="modal" data-target="#quick-view"
											title="Quick View"> <i class="pe-7s-look"></i>
										</a>
									</div>
								</div>
								<div class="shop-text-all">
									<div class="title-color fix">
										<div class="shop-title f-left">
											<h3>
												<a href="#">Tên sản phẩm</a>
											</h3>
										</div>
										<div class="price f-right">
											<span class="new">670.000 đ</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="single-special-slider">
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="single-shop">
								<div class="shop-img">
									<a href="#"><img
										src="assets/img/shop/product/BanhNgot2.png" alt="" /></a>
									<div class="price-up-down">
										<span class="sale-new">Mới</span>
									</div>
									<div class="button-group">
										<a href="#" title="Add to Cart"> <i class="pe-7s-cart"></i>
										</a> <a class="wishlist" href="#" title="Wishlist"> <i
											class="pe-7s-like"></i>
										</a> <a href="#" data-toggle="modal" data-target="#quick-view"
											title="Quick View"> <i class="pe-7s-look"></i>
										</a>
									</div>
								</div>
								<div class="shop-text-all">
									<div class="title-color fix">
										<div class="shop-title f-left">
											<h3>
												<a href="#">Tên sản phẩm</a>
											</h3>
										</div>
										<div class="price f-right">
											<span class="new">340.000</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="single-special-slider">
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="single-shop">
								<div class="shop-img">
									<a href="#"><img
										src="assets/img/shop/product/BanhNgot3.png" alt="" /></a>
									<div class="price-up-down">
										<span class="sale-new">Mới</span>
									</div>
									<div class="button-group">
										<a href="#" title="Add to Cart"> <i class="pe-7s-cart"></i>
										</a> <a class="wishlist" href="#" title="Wishlist"> <i
											class="pe-7s-like"></i>
										</a> <a href="#" data-toggle="modal" data-target="#quick-view"
											title="Quick View"> <i class="pe-7s-look"></i>
										</a>
									</div>
								</div>
								<div class="shop-text-all">
									<div class="title-color fix">
										<div class="shop-title f-left">
											<h3>
												<a href="#">Tên sản phẩm</a>
											</h3>
										</div>
										<div class="price f-right">
											<span class="new">230.000 đ</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong sản phẩm mới -->
	<!-- Bắt đầu phần bài viết -->
	<div class="blog-area pb-70">
		<div class="container">
			<div class="section-title text-center mb-50">
				<h2>
					Bài đăng mới nhất <i class="fa fa-pencil"></i>
				</h2>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="blog-details mb-30">
						<div class="blog-img">
							<a href="blog-details.html"><img src="assets/img/blog/1.jpg"
								alt=""></a>
							<div class="blog-quick-view">
								<a href="blog-details.html"> <i class="pe-7s-link"></i>
								</a>
							</div>
						</div>
						<div class="blog-meta">
							<h4>
								<a href="blog-details.jsp">Công thức làm bánh</a>
							</h4>
							<ul class="meta">
								<li>08 tháng 8 năm 2018</li>
							</ul>
							<p>Lorem Ipsum is that it has a more-or-less normal of
								letters, as opposed to using 'Content here, distribution content
								here..</p>
							<a href="blog-details.jsp">Đọc tiếp <i class="pe-7s-next"></i></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="blog-details mb-30">
						<div class="blog-img">
							<a href="blog-details.jsp"><img src="assets/img/blog/2.jpg"
								alt=""></a>
							<div class="blog-quick-view">
								<a href="blog-details.jsp"> <i class="pe-7s-link"></i>
								</a>
							</div>
						</div>
						<div class="blog-meta">
							<h4>
								<a href="blog-details.jsp">Công thức pha trà sữa</a>
							</h4>
							<ul class="meta">
								<li>08 tháng 8 năm 2018</li>
							</ul>
							<p>Lorem Ipsum is that it has a more-or-less normal of
								letters, as opposed to using 'Content here, distribution content
								here..</p>
							<a href="blog-details.jsp">Đọc tiếp <i class="pe-7s-next"></i></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 hidden-sm">
					<div class="blog-details mb-30">
						<div class="blog-img">
							<a href="blog-details.html"><img src="assets/img/blog/3.jpg"
								alt=""></a>
							<div class="blog-quick-view">
								<a href="blog-details.html"> <i class="pe-7s-link"></i>
								</a>
							</div>
						</div>
						<div class="blog-meta">
							<h4>
								<a href="blog-details.jsp">Công thức pha nước uống</a>
							</h4>
							<ul class="meta">
								<li>08 tháng 8 năm 2018</li>
							</ul>
							<p>Lorem Ipsum is that it has a more-or-less normal of
								letters, as opposed to using 'Content here, distribution content
								here..</p>
							<a href="blog-details.jsp">Đọc tiếp <i class="pe-7s-next"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong phần bài viết -->

	<!-- Thêm chân trang -->
	<jsp:include page="layout/footer.jsp"></jsp:include>
	<!-- Xong thêm chân trang -->

	<!-- Thêm xem chi tiết sản phẩm -->
	<jsp:include page="layout/detail_product.jsp"></jsp:include>
	<!-- Xong xem chi tiết sản phẩm  -->


	<!-- Toàn bộ js -->
	<script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.meanmenu.js"></script>
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<script src="assets/js/isotope.pkgd.min.js"></script>
	<script src="assets/js/imagesloaded.pkgd.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/jquery.validate.min.js"></script>
	<script src="lib/js/jquery.nivo.slider.js"></script>
	<script src="lib/home.js"></script>
	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>
</body>

</html>