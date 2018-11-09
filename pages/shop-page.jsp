<%@ page pageEncoding="utf-8"%>
<%@ page import="Objects.Products"%>
<%@ page import="Control.ProductsControl"%>
<%@ page import="Objects.Category"%>
<%@ page import="Control.CategoryControl"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Sản phẩm</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- icon hiển thị -->
<link rel="shortcut icon" type="image/x-icon"
	href="../assets/img/favicon.ico">

<!-- Toàn bộ css -->
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/css/magnific-popup.css">
<link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="../assets/css/font-awesome.min.css">
<link rel="stylesheet" href="../assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="../lib/css/nivo-slider.css" type="text/css" />
<link rel="stylesheet" href="../lib/css/preview.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="../assets/css/animate.css">
<link rel="stylesheet" href="../assets/css/jquery-ui.css">
<link rel="stylesheet" href="../assets/css/meanmenu.min.css">
<link rel="stylesheet" href="../assets/css/bundle.css">
<link rel="stylesheet" href="../assets/css/style.css">
<link rel="stylesheet" href="../assets/css/responsive.css">
<script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>

	<!-- Thêm phần tiêu đề trang -->
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<!-- Xong phần tiêu đề trang -->

	<!-- Bắt đầu tiêu đề trang con -->
	<div class="breadcrumbs-area breadcrumb-bg ptb-100">
		<div class="container">
			<div class="breadcrumbs text-center">
				<h2 class="breadcrumb-title">DANH MỤC SẢN PHẨM</h2>
				<ul>
					<li><a class="active" href="index.jsp">Trang chủ</a></li>
					<li>Sản phẩm</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Xong tiêu đề trang con -->
	<!-- Bắt đầu nội dung trang danh sách sản phẩm -->
	<div class="shop-page-area ptb-100">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="blog-sidebar">
						<div class="single-sidebar">
							<h3 class="sidebar-title">Các sản phẩm chỉ với giá</h3>
							<div class="price-filter">
								<div id="slider-range"></div>
								<div class="price-slider-amount">
									<input type="text" id="amount" name="price" />
								</div>
							</div>
						</div>
						<div class="single-sidebar">
							<h3 class="sidebar-title">Loại sản phẩm</h3>
							<div class="sidebar-list">
								<ul>
									<%
										CategoryControl category = new CategoryControl();
										for (Category ls : category.getListCategory()) {
									%>
									<li><input type="checkbox"> <a href="#"><%=ls.getTenloai()%></a></li>
									<%
										}
									%>
								</ul>
							</div>
						</div>
						<div class="single-sidebar">
							<h3 class="sidebar-title">Lựa chọn theo màu</h3>
							<div class="sidebar-list">
								<ul>
									<li><input type="checkbox"> <a href="#">Màu
											hồng (8)</a></li>
									<li><input type="checkbox"> <a href="#">Màu
											xanh (5)</a></li>
									<li><input type="checkbox"> <a href="#">Màu
											vàng (2)</a></li>
									<li><input type="checkbox"> <a href="#">Màu
											cam (6)</a></li>
									<li><input type="checkbox"> <a href="#">Màu
											trắng (7)</a></li>
								</ul>
							</div>
						</div>
						<div class="single-sidebar">
							<h3 class="sidebar-title">Lựa chọn theo vị</h3>
							<div class="sidebar-list">
								<ul>
									<li><input type="checkbox"> <a href="#">Dâu
											(8)</a></li>
									<li><input type="checkbox"> <a href="#">Cam
											(2)</a></li>
									<li><input type="checkbox"> <a href="#">Kiwi
											(5)</a></li>
									<li><input type="checkbox"> <a href="#">Chanh
											(8)</a></li>
									<li><input type="checkbox"> <a href="#">Xoài
											(7)</a></li>
									<li><input type="checkbox"> <a href="#">Socola
											(8)</a></li>
									<li><input type="checkbox"> <a href="#">Xí
											muội (7)</a></li>
								</ul>
							</div>
						</div>
						<div class="single-sidebar">
							<h3 class="sidebar-title">Hàng bán chạy</h3>
							<div class="tag">
								<ul>
									<li><a href="#">Bánh ngọt 1</a></li>
									<li><a href="#">Trà sữa 3</a></li>
									<li><a href="#">Bánh mặn 4</a></li>
									<li><a href="#">Nước chang nguyên chất</a></li>
									<li><a href="#">Nước cam</a></li>
									<li><a href="#">Bánh ngọt 4</a></li>
									<li><a href="#">Trà tắc</a></li>
									<li><a href="#">Trà sữa Đài Loan</a></li>
								</ul>
							</div>
						</div>
						<div class="single-sidebar">
							<div class="sidebar-img-text">
								<div class="sidebar-img">
									<a href="#"> <img src="../assets/img/shop/2.jpg" alt="">
									</a>
									<div class="sidebar-text">
										<h3>Khuyến mãi</h3>
										<h2>hơn 40%</h2>
										<h3>Tại đây</h3>
										<a href="#">mua ngay</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<div class="blog-wrapper shop-page-mrg">
						<div class="tab-menu-product">
							<div class="tab-menu-sort">
								<div class="tab-menu">
									<ul role="tablist">
										<li class="active"><a href="#grid" data-toggle="tab">
												<i class="fa fa-th-large"></i> Grid
										</a></li>
										<li><a href="#list" data-toggle="tab"> <i
												class="fa fa-align-justify"></i> List
										</a></li>
									</ul>
								</div>
								<div class="tab-sort">
									<label>Sắp xếp : </label> <select>
										<option value="">Mới nhất</option>
										<option value="">Củ hơn</option>
										<option value="">Giá rẻ</option>
										<option value="">Chất lượng</option>
									</select>
								</div>
							</div>
							<div class="tab-product">
								<div class="tab-content">
									<div class="tab-pane active" id="grid">
										<div class="row">
											<%
												ProductsControl product = new ProductsControl();
												int id_type = Integer.parseInt(request.getParameter("id_product")); 
												for (Products ls : product.getListProductsType(id_type)) {
											%>
											<div class="col-md-6 col-lg-4 col-sm-6">
												<div class="single-shop mb-40">
													<div class="shop-img">
														<a href="#"><img
															src="../assets/img/shop/product/<%=ls.getAnhchinh() %>" alt="" /></a>
														<div class="price-up-down">
															<span class="sale-new">Giảm</span>
														</div>
														<div class="button-group">
															<a href="#" title="Add to Cart" data-toggle="modal"
																data-target="#quick-view"> <i class="pe-7s-cart"></i>
															</a> <a class="wishlist" href="#" title="Wishlist"
																data-toggle="modal" data-target="#quick-view"> <i
																class="pe-7s-like"></i>
															</a> <a href="#" data-toggle="modal"
																data-target="#quick-view" title="Quick View"> <i
																class="pe-7s-look"></i>
															</a>
														</div>
													</div>
													<div class="shop-text-all">
														<div class="title-color fix">
															<div class="shop-title f-left">
																<h3>
																	<a href="#"><%=ls.getGiagoc() %></a>
																</h3>
															</div>
															<div class="price f-right">
																<span class="new">120.000 đ</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<%
												}
											%>
										</div>
									</div>
									<div class="tab-pane mb-10" id="list">
										<div class="row">
											<div class="col-md-12">
												<div class="row">
													<div class="single-shop mb-30">
														<div class="col-md-4 col-sm-4 col-xs-12">
															<div class="shop-list-left">
																<div class="shop-img">
																	<a href="#"><img
																		src="../assets/img/shop/product/NuocUong1.png" alt="" />
																	</a>
																	<div class="shop-quick-view">
																		<a href="#" data-toggle="modal"
																			data-target="#quick-view" title="Quick View"> <i
																			class="pe-7s-look"></i>
																		</a>
																	</div>
																	<div class="price-up-down">
																		<span class="sale-new">Mới</span>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-md-8 col-sm-8 col-xs-12">
															<div class="shop-list-right">
																<div class="shop-list-all">
																	<div class="shop-list-name">
																		<h3>
																			<a href="#">Tên sản phẩm</a>
																		</h3>
																	</div>
																	<div class="shop-list-rating">
																		<span class="ratting"> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i>
																		</span>
																	</div>
																	<p>Lorem ipsum dolor sit amet, adipiscing elit. Nam
																		fringilla augue nec est auctor. Donec non est at
																		libero vulputate rutrum. Morbi ornare lectus quis
																		justo gravida semper. Nulla tellus mi, vulputate
																		adipiscing cursus eu, odio...</p>
																	<div class="shop-list-price">
																		<span class="list-price"> <span class="new">120.000
																				đ</span> <span class="old">110.000 đ</span>
																		</span>
																	</div>
																	<div class="shop-list-cart">
																		<div class="shop-group">
																			<a href="#" title="Add to Cart"> <i
																				class="pe-7s-cart"></i> Mua ngay
																			</a> <a class="wishlist" href="#" title="Wishlist"> <i
																				class="pe-7s-like"></i> Yêu thích
																			</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="single-shop mb-30">
														<div class="col-md-4 col-sm-4 col-xs-12">
															<div class="shop-list-left">
																<div class="shop-img">
																	<a href="#"><img
																		src="../assets/img/shop/product/BanhNgot2.png" alt="" /></a>
																	<div class="shop-quick-view">
																		<a href="#" data-toggle="modal"
																			data-target="#quick-view" title="Quick View"> <i
																			class="pe-7s-look"></i>
																		</a>
																	</div>
																	<div class="price-up-down">
																		<span class="sale-new">Mới</span>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-md-8 col-sm-8 col-xs-12">
															<div class="shop-list-right">
																<div class="shop-list-all">
																	<div class="shop-list-name">
																		<h3>
																			<a href="#">Tên sản phẩm</a>
																		</h3>
																	</div>
																	<div class="shop-list-rating">
																		<span class="ratting"> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i>
																		</span>
																	</div>
																	<p>Lorem ipsum dolor sit amet, adipiscing elit. Nam
																		fringilla augue nec est auctor. Donec non est at
																		libero vulputate rutrum. Morbi ornare lectus quis
																		justo gravida semper. Nulla tellus mi, vulputate
																		adipiscing cursus eu, odio...</p>
																	<div class="shop-list-price">
																		<span class="list-price"> <span class="new">160.000
																				đ</span>
																		</span>
																	</div>
																	<div class="shop-list-cart">
																		<div class="shop-group">
																			<a href="#" title="Add to Cart"> <i
																				class="pe-7s-cart"></i> Mua ngay
																			</a> <a class="wishlist" href="#" title="Wishlist"> <i
																				class="pe-7s-like"></i> Yêu thích
																			</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="single-shop mb-30">
														<div class="col-md-4 col-sm-4 col-xs-12">
															<div class="shop-list-left">
																<div class="shop-img">
																	<a href="#"><img
																		src="../assets/img/shop/product/BanhNgot4.png" alt="" /></a>
																	<div class="shop-quick-view">
																		<a href="#" data-toggle="modal"
																			data-target="#quick-view" title="Quick View"> <i
																			class="pe-7s-look"></i>
																		</a>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-md-8 col-sm-8 col-xs-12">
															<div class="shop-list-right">
																<div class="shop-list-all">
																	<div class="shop-list-name">
																		<h3>
																			<a href="#">Tên sản phẩm</a>
																		</h3>
																	</div>
																	<div class="shop-list-rating">
																		<span class="ratting"> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i>
																		</span>
																	</div>
																	<p>Lorem ipsum dolor sit amet, adipiscing elit. Nam
																		fringilla augue nec est auctor. Donec non est at
																		libero vulputate rutrum. Morbi ornare lectus quis
																		justo gravida semper. Nulla tellus mi, vulputate
																		adipiscing cursus eu, odio...</p>
																	<div class="shop-list-price">
																		<span class="list-price"> <span class="new">170.000
																				đ</span> <span class="old">190.000 đ</span>
																		</span>
																	</div>
																	<div class="shop-list-cart">
																		<div class="shop-group">
																			<a href="#" title="Add to Cart"> <i
																				class="pe-7s-cart"></i> Mua ngay
																			</a> <a class="wishlist" href="#" title="Wishlist"> <i
																				class="pe-7s-like"></i> Yêu thích
																			</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="single-shop mb-30">
														<div class="col-md-4 col-sm-4 col-xs-12">
															<div class="shop-list-left">
																<div class="shop-img">
																	<a href="#"><img
																		src="../assets/img/shop/product/BanhNgot1.png" alt="" /></a>
																	<div class="shop-quick-view">
																		<a href="#" data-toggle="modal"
																			data-target="#quick-view" title="Quick View"> <i
																			class="pe-7s-look"></i>
																		</a>
																	</div>
																	<div class="price-up-down">
																		<span class="sale-new">Giảm</span>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-md-8 col-sm-8 col-xs-12">
															<div class="shop-list-right">
																<div class="shop-list-all">
																	<div class="shop-list-name">
																		<h3>
																			<a href="#">Tên sản phẩm</a>
																		</h3>
																	</div>
																	<div class="shop-list-rating">
																		<span class="ratting"> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i>
																		</span>
																	</div>
																	<p>Lorem ipsum dolor sit amet, adipiscing elit. Nam
																		fringilla augue nec est auctor. Donec non est at
																		libero vulputate rutrum. Morbi ornare lectus quis
																		justo gravida semper. Nulla tellus mi, vulputate
																		adipiscing cursus eu, odio...</p>
																	<div class="shop-list-price">
																		<span class="list-price"> <span class="new">150.000
																				đ</span>
																		</span>
																	</div>
																	<div class="shop-list-cart">
																		<div class="shop-group">
																			<a href="#" title="Add to Cart"> <i
																				class="pe-7s-cart"></i> Mua ngay
																			</a> <a class="wishlist" href="#" title="Wishlist"> <i
																				class="pe-7s-like"></i> Yêu thích
																			</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="single-shop mb-30">
														<div class="col-md-4 col-sm-4 col-xs-12">
															<div class="shop-list-left">
																<div class="shop-img">
																	<a href="#"><img
																		src="../assets/img/shop/product/NuocUong.png" alt="" /></a>
																	<div class="shop-quick-view">
																		<a href="#" data-toggle="modal"
																			data-target="#quick-view" title="Quick View"> <i
																			class="pe-7s-look"></i>
																		</a>
																	</div>
																	<div class="price-up-down">
																		<span class="sale-new">Giảm</span>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-md-8 col-sm-8 col-xs-12">
															<div class="shop-list-right">
																<div class="shop-list-all">
																	<div class="shop-list-name">
																		<h3>
																			<a href="#">Tên sản phẩm</a>
																		</h3>
																	</div>
																	<div class="shop-list-rating">
																		<span class="ratting"> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i> <i
																			class="fa fa-star active"></i>
																		</span>
																	</div>
																	<p>Lorem ipsum dolor sit amet, adipiscing elit. Nam
																		fringilla augue nec est auctor. Donec non est at
																		libero vulputate rutrum. Morbi ornare lectus quis
																		justo gravida semper. Nulla tellus mi, vulputate
																		adipiscing cursus eu, odio...</p>
																	<div class="shop-list-price">
																		<span class="list-price"> <span class="new">120.000
																				đ</span> <span class="old">110.000 đ</span>
																		</span>
																	</div>
																	<div class="shop-list-cart">
																		<div class="shop-group">
																			<a href="#" title="Add to Cart"> <i
																				class="pe-7s-cart"></i> Mua ngay
																			</a> <a class="wishlist" href="#" title="Wishlist"> <i
																				class="pe-7s-like"></i> Yêu thích
																			</a>
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
									<div class="page-pagination text-center">
										<ul>
											<li><a class="active" href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong nội dung trang danh sách sản phẩm -->

	<!-- Thêm chân trang -->
	<jsp:include page="../layout/footer.jsp"></jsp:include>
	<!-- Xong thêm chân trang -->

	<!-- Thêm xem chi tiết sản phẩm -->
	<jsp:include page="../layout/detail_product.jsp"></jsp:include>
	<!-- Xong xem chi tiết sản phẩm  -->

	<!-- Bắt đầu xem nhanh chi tiết -->
	<div class="quick-view modal fade in" id="quick-view">
		<div class="container">
			<div class="row">
				<div id="view-gallery">
					<div class="col-xs-12">
						<div class="d-table">
							<div class="d-tablecell">
								<div class="modal-dialog">
									<div class="main-view modal-content">
										<div class="modal-footer" data-dismiss="modal">
											<span>x</span>
										</div>
										<div class="row">
											<div class="col-xs-12 col-sm-5">
												<div class="quick-image">
													<div class="single-quick-image tab-content text-center">

														<div class="tab-pane  fade in active" id="sin-pro-1">
															<img
																src="../assets/img/shop/DetailProduct/Ct1BanhMan1.jpg"
																alt="" />
														</div>
														<div class="tab-pane fade in" id="sin-pro-2">
															<img
																src="../assets/img/shop/DetailProduct/Ct2BanhMan1.jpg"
																alt="" />
														</div>
														<div class="tab-pane fade in" id="sin-pro-3">
															<img
																src="../assets/img/shop/DetailProduct/Ct3BanhMan1.jpg"
																alt="" />
														</div>
														<div class="tab-pane fade in" id="sin-pro-4">
															<img
																src="../assets/img/shop/DetailProduct/Ct4BanhMan1.jpg"
																alt="" />
														</div>

													</div>
													<div class="quick-thumb">
														<div class="nav nav-tabs">
															<ul>
																<li><a data-toggle="tab" href="#sin-pro-1"> <img
																		src="../assets/img/shop/DetailProduct/Ct1BanhMan1.jpg"
																		alt="quick view" />
																</a></li>
																<li><a data-toggle="tab" href="#sin-pro-2"> <img
																		src="../assets/img/shop/DetailProduct/Ct2BanhMan1.jpg"
																		alt="quick view" />
																</a></li>
																<li><a data-toggle="tab" href="#sin-pro-3"> <img
																		src="../assets/img/shop/DetailProduct/Ct3BanhMan1.jpg"
																		alt="quick view" />
																</a></li>
																<li><a data-toggle="tab" href="#sin-pro-4"> <img
																		src="../assets/img/shop/DetailProduct/Ct4BanhMan1.jpg"
																		alt="quick view" />
																</a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<div class="col-xs-12 col-sm-7">
												<div class="quick-right">
													<div class="quick-right-text">
														<h3>
															<strong>Tên sản phẩm</strong>
														</h3>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star-half-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="amount">
															<h4>650.000 đ</h4>
														</div>
														<p>Lorem Ipsum is simply dummy text of the printing
															and typesetting industry. Lorem Ipsum has beenin the
															stand ard dummy text ever since the 1500s, when an
															unknown printer took a galley of type and scrames bled it
															make a type specimen book.</p>
														<div class="row m-p-b">
															<div class="col-sm-12 col-md-6">
																<div class="por-dse color">
																	<ul>
																		<li><span>Màu sắc</span><strong>:</strong> <a
																			href="#">Đỏ</a> <a href="#">Xanh</a> <a href="#">Trắng</a>
																			<a href="#">Vàng</a></li>
																		<li><span>Các vị</span><strong>:</strong> <a
																			href="#">Dâu</a> <a href="#">Xâm dứa</a> <a href="#">Cam</a>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
														<div class="dse-btn">
															<div class="row">
																<div class="col-sm-12 col-md-6">
																	<div class="por-dse clearfix">
																		<ul>
																			<li class="share-btn clearfix"><span>Số
																					lượng</span> <input class="input-text qty" name="qty"
																				maxlength="12" value="1" title="Qty" type="text">
																			</li>
																			<li class="share-btn clearfix"><span>Chia
																					sẻ</span> <a href="#"><i class="fa fa-facebook"></i></a> <a
																				href="#"><i class="fa fa-twitter"></i></a> <a
																				href="#"><i class="fa fa-google-plus"></i></a> <a
																				href="#"><i class="fa fa-linkedin"></i></a> <a
																				href="#"><i class="fa fa-instagram"></i></a></li>
																		</ul>
																	</div>
																</div>
																<div class="col-sm-12 col-md-6">
																	<div class="por-dse clearfix responsive-othre">
																		<ul class="other-btn">
																			<li><a href="#"><i class="fa fa-heart"></i></a></li>
																			<li><a href="#"><i class="fa fa-refresh"></i></a></li>
																			<li><a href="#"><i class="fa fa-envelope-o"></i></a></li>
																		</ul>
																	</div>
																	<div class="por-dse add-to">
																		<a href="#">Mua ngay >></a>
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong xem nhanh chi tiết -->


	<!-- Toàn bộ js -->
	<script src="../assets/js/vendor/jquery-1.12.0.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/jquery.meanmenu.js"></script>
	<script src="../assets/js/jquery.magnific-popup.min.js"></script>
	<script src="../assets/js/isotope.pkgd.min.js"></script>
	<script src="../assets/js/imagesloaded.pkgd.min.js"></script>
	<script src="../assets/js/jquery.validate.min.js"></script>
	<script src="../assets/js/owl.carousel.min.js"></script>
	<script src="../lib/js/jquery.nivo.slider.js"></script>
	<script src="../lib/home.js"></script>
	<script src="../assets/js/plugins.js"></script>
	<script src="../assets/js/main.js"></script>
</body>


</html>