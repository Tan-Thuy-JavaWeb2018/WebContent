<%@ page pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Chia sẽ công thức</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- icon cho trang -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- Toàn bộ link css -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
    <link rel="stylesheet" href="lib/css/preview.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/meanmenu.min.css">
    <link rel="stylesheet" href="assets/css/bundle.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    
    <!-- Thêm phần tiêu đề trang -->
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<!-- Xong phần tiêu đề trang -->

    <!-- Bắt đầu tiêu đề trang con -->
    <div class="breadcrumbs-area breadcrumb-bg ptb-100">
        <div class="container">
            <div class="breadcrumbs text-center">
                <h2 class="breadcrumb-title">DANH MỤC CÔNG THỨC</h2>
                <ul>
                    <li>
                        <a class="active" href="index.jsp">Trang chủ</a>
                    </li>
                    <li>Công thức</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Xong tiêu đề trang con -->
    <!-- Bắt đầu nội dung bài viết -->
    <div class="blog-sidebar-area blog-rt-sidebar ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-3">
                    <div class="blog-sidebar mrg-for-btm">
                        <div class="single-sidebar blog-search-deff">
                            <h3 class="sidebar-title">Tìm kiếm</h3>
                            <form action="#">
                                <input value="" placeholder="Nhập tên bài viết" type="text">
                                <button class="blog-submit" type="submit">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </button>
                            </form>
                        </div>
                        <div class="single-sidebar">
                            <h3 class="sidebar-title">Loại bài viết</h3>
                            <div class="sidebar-list">
                                <ul>
                                    <li><input type="checkbox"> <a href="#"> Công thức bánh ngọt (7)</a></li>
                                    <li><input type="checkbox"> <a href="#">Công thức bánh mặn (9)</a></li>
                                    <li><input type="checkbox"> <a href="#">Công thức Trà sữa (3)</a></li>
                                    <li><input type="checkbox"> <a href="#">Công thức nước ngọt(1)</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="single-sidebar">
                            <h3 class="sidebar-title">Bài đăng xem nhiều</h3>
                            <div class="recent-all">
                                <div class="recent-img-text mb-20">
                                    <div class="recent-img">
                                        <a href="#"><img src="assets/img/blog/1.jpg" alt=""></a>
                                    </div>
                                    <div class="recent-text">
                                        <h4>
                                            <a href="#">Tiêu đề bài viết</a>
                                        </h4>
                                        <div class="post-info">
                                            <ul>
                                                <li>
                                                    <i class="fa fa-calendar"></i>ngày 28 tháng 8 năm 2018
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent-img-text mb-20">
                                    <div class="recent-img">
                                        <a href="#"><img src="assets/img/blog/2.jpg" alt=""></a>
                                    </div>
                                    <div class="recent-text">
                                        <h4>
                                            <a href="#">Tiêu đề bài viết</a>
                                        </h4>
                                        <div class="post-info">
                                            <ul>
                                                <li>
                                                    <i class="fa fa-calendar"></i>ngày 28 tháng 8 năm 2018
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent-img-text">
                                    <div class="recent-img">
                                        <a href="#"><img src="assets/img/blog/3.jpg" alt=""></a>
                                    </div>
                                    <div class="recent-text">
                                        <h4>
                                            <a href="#">Tiêu đề bài viết</a>
                                        </h4>
                                        <div class="post-info">
                                            <ul>
                                                <li>
                                                    <i class="fa fa-calendar"></i>ngày 28 tháng 8 năm 2018
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-sidebar">
                            <div class="sidebar-img-text">
                                <div class="sidebar-img">
                                    <a href="#">
                                        <img src="assets/img/shop/2.jpg" alt="">
                                    </a>
                                    <div class="sidebar-text">
                                        <h3>save up to </h3>
                                        <h2>40% off</h2>
                                        <h3>cap</h3>
                                        <a href="#">shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-lg-9">
                    <div class="blog-wrapper">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="blog-details mb-30">
                                    <div class="blog-img">
                                        <a href="blog-details.jsp"><img src="assets/img/blog/1.jpg" alt=""></a>
                                        <div class="blog-quick-view">
                                            <a href="blog-details.jsp">
                                                <i class="pe-7s-link"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="blog-meta">
                                        <h4><a href="blog-details.jsp">Tiêu đề bài viết</a></h4>
                                        <ul class="meta">
                                            <li>ngày 25 tháng 8 năm 2018</li>
                                        </ul>
                                        <p>Lorem Ipsum is that it has a more-or-less normal of letters, as opposed to
                                            using
                                            'Content here, distribution content here..</p>
                                        <a href="blog-details.jsp">Chi tiết <i class="fa fa-long-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="blog-details mb-30">
                                    <div class="blog-img">
                                        <a href="blog-details.jsp"><img src="assets/img/blog/2.jpg" alt=""></a>
                                        <div class="blog-quick-view">
                                            <a href="blog-details.jsp">
                                                <i class="pe-7s-link"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="blog-meta">
                                        <h4><a href="blog-details.jsp">Tiêu đề bài viết</a></h4>
                                        <ul class="meta">
                                            <li>ngày 25 tháng 8 năm 2018</li>
                                        </ul>
                                        <p>Lorem Ipsum is that it has a more-or-less normal of letters, as opposed to
                                            using
                                            'Content here, distribution content here..</p>
                                        <a href="blog-details.jsp">Chi tiết <i class="fa fa-long-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="blog-details mb-30">
                                    <div class="blog-img">
                                        <a href="blog-details.jsp"><img src="assets/img/blog/3.jpg" alt=""></a>
                                        <div class="blog-quick-view">
                                            <a href="blog-details.jsp">
                                                <i class="pe-7s-link"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="blog-meta">
                                        <h4><a href="blog-details.jsp">Tiêu đề bài viết</a></h4>
                                        <ul class="meta">
                                            <li>ngày 25 tháng 8 năm 2018</li>
                                        </ul>
                                        <p>Lorem Ipsum is that it has a more-or-less normal of letters, as opposed to
                                            using
                                            'Content here, distribution content here..</p>
                                        <a href="blog-details.jsp">Chi tiết <i class="fa fa-long-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="blog-details mb-30">
                                    <div class="blog-img">
                                        <a href="blog-details.jsp"><img src="assets/img/blog/4.jpg" alt=""></a>
                                        <div class="blog-quick-view">
                                            <a href="blog-details.jsp">
                                                <i class="pe-7s-link"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="blog-meta">
                                        <h4><a href="blog-details.jsp">Tiêu đề bài viết</a></h4>
                                        <ul class="meta">
                                            <li>ngày 25 tháng 8 năm 2018</li>
                                        </ul>
                                        <p>Lorem Ipsum is that it has a more-or-less normal of letters, as opposed to
                                            using
                                            'Content here, distribution content here..</p>
                                        <a href="blog-details.jsp">Chi tiết <i class="fa fa-long-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="blog-details mb-30">
                                    <div class="blog-img">
                                        <a href="blog-details.jsp"><img src="assets/img/blog/5.jpg" alt=""></a>
                                        <div class="blog-quick-view">
                                            <a href="blog-details.jsp">
                                                <i class="pe-7s-link"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="blog-meta">
                                        <h4><a href="blog-details.jsp">Tiêu đề bài viết</a></h4>
                                        <ul class="meta">
                                            <li>ngày 25 tháng 8 năm 2018</li>
                                        </ul>
                                        <p>Lorem Ipsum is that it has a more-or-less normal of letters, as opposed to
                                            using
                                            'Content here, distribution content here..</p>
                                        <a href="blog-details.jsp">Chi tiết <i class="fa fa-long-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="blog-details mb-30">
                                    <div class="blog-img">
                                        <a href="blog-details.jsp"><img src="assets/img/blog/6.jpg" alt=""></a>
                                        <div class="blog-quick-view">
                                            <a href="blog-details.jsp">
                                                <i class="pe-7s-link"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="blog-meta">
                                        <h4><a href="blog-details.jsp">Tiêu đề bài viết</a></h4>
                                        <ul class="meta">
                                            <li>ngày 25 tháng 8 năm 2018</li>
                                        </ul>
                                        <p>Lorem Ipsum is that it has a more-or-less normal of letters, as opposed to
                                            using
                                            'Content here, distribution content here..</p>
                                        <a href="blog-details.jsp">Chi tiết <i class="fa fa-long-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="blog-details mb-30">
                                    <div class="blog-img">
                                        <a href="blog-details.jsp"><img src="assets/img/blog/1.jpg" alt=""></a>
                                        <div class="blog-quick-view">
                                            <a href="blog-details.jsp">
                                                <i class="pe-7s-link"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="blog-meta">
                                        <h4><a href="blog-details.jsp">Tiêu đề bài viết</a></h4>
                                        <ul class="meta">
                                            <li>ngày 25 tháng 8 năm 2018</li>
                                        </ul>
                                        <p>Lorem Ipsum is that it has a more-or-less normal of letters, as opposed to
                                            using
                                            'Content here, distribution content here..</p>
                                        <a href="blog-details.jsp">Chi tiết <i class="fa fa-long-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="blog-details mb-30">
                                    <div class="blog-img">
                                        <a href="blog-details.jsp"><img src="assets/img/blog/2.jpg" alt=""></a>
                                        <div class="blog-quick-view">
                                            <a href="blog-details.jsp">
                                                <i class="pe-7s-link"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="blog-meta">
                                        <h4><a href="blog-details.jsp">Tiêu đề bài viết</a></h4>
                                        <ul class="meta">
                                            <li>ngày 25 tháng 8 năm 2018</li>
                                        </ul>
                                        <p>Lorem Ipsum is that it has a more-or-less normal of letters, as opposed to
                                            using
                                            'Content here, distribution content here..</p>
                                        <a href="blog-details.jsp">Chi tiết <i class="fa fa-long-arrow-right"></i></a>
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
                                <li><a href="#"><i class="fa fa-angle-double-right"></i>
                                    </a></li>
                            </ul>
                        </div>
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