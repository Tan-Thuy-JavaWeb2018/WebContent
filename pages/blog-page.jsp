<%@ page pageEncoding="utf-8"%>
<%@ page import="Control.BlogsControl"%>
<%@ page import="Objects.Blogs"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Bài viết - công thức</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- icon cho trang -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

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
<link rel="stylesheet" href="../assets/css/meanmenu.min.css">
<link rel="stylesheet" href="../assets/css/bundle.css">
<link rel="stylesheet" href="../assets/css/style.css">
<link rel="stylesheet" href="../assets/css/responsive.css">
<script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>

	<!-- Thêm phần tiêu đề trang -->
	<jsp:include page="../layout/headerpage.jsp"></jsp:include>
	<!-- Xong phần tiêu đề trang -->

	<!-- Bắt đầu tiêu đề trang con -->
	<div class="breadcrumbs-area breadcrumb-bg ptb-100">
		<div class="container">
			<div class="breadcrumbs text-center">
				<h2 class="breadcrumb-title">DANH MỤC CÔNG THỨC</h2>
				<ul>
					<li><a class="active" href="index.jsp">Trang chủ</a></li>
					<li>Công thức</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Xong tiêu đề trang con -->
	<!-- Bắt đầu nội dung bài viết -->
	<div class="blog-fullwidth-area pt-100 pb-70">
		<div class="container">
			<div class="row">
				<%
					BlogsControl blogs = new BlogsControl();
					for (Blogs ls : blogs.getListBlogs()) {
				%>
				<div class="col-md-4 col-sm-6">
					<div class="blog-details mb-30">
						<div class="blog-img">
							<a href="blog-details.jsp?id_blog=<%=ls.getId()%>"><img
								src="../assets/img/blog/<%=ls.getHinhanh()%>" alt=""></a>
							<div class="blog-quick-view">
								<a href="blog-details.jsp?id_blog=<%=ls.getId()%>"> <i class="pe-7s-link"></i>
								</a>
							</div>
						</div>
						<div class="blog-meta">
							<%
								//xử lý độ dài tiêu đề
									String tieude;
									if (ls.getTieude().length() > 20) {
										tieude = ls.getTieude().substring(0, 20) + "...";
									} else {
										tieude = ls.getTieude();
									}
							%>
							<h4>
								<a href="blog-details.jsp?id_blog=<%=ls.getId()%>"><%=tieude%></a>
							</h4>
							<ul class="meta">
								<li>25 tháng 8 năm 2018</li>
							</ul>
							<a href="blog-details.jsp?id_blog=<%=ls.getId()%>">Chi tiết <i
								class="fa fa-long-arrow-right"></i></a>
						</div>
					</div>
				</div>
				<%
					}
				%>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="page-pagination text-center">
						<ul>
							<li><a class="active" href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#"><i class="fa fa-angle-double-right"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong nội dung bài viết-->

	<!-- Thêm chân trang -->
	<jsp:include page="../layout/footer.jsp"></jsp:include>
	<!-- Xong thêm chân trang -->

	<!-- Toàn bộ js -->
	<script src="../assets/js/vendor/jquery-1.12.0.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/jquery.meanmenu.js"></script>
	<script src="../assets/js/jquery.magnific-popup.min.js"></script>
	<script src="../assets/js/isotope.pkgd.min.js"></script>
	<script src="../assets/js/imagesloaded.pkgd.min.js"></script>
	<script src="../assets/js/owl.carousel.min.js"></script>
	<script src="../assets/js/jquery.validate.min.js"></script>
	<script src="../lib/js/jquery.nivo.slider.js"></script>
	<script src="../lib/home.js"></script>
	<script src="../assets/js/plugins.js"></script>
	<script src="../assets/js/main.js"></script>
</body>

</html>