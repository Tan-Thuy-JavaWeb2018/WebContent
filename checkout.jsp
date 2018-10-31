<%@ page pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Đăng nhập</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- icon hình ảnh -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- Toàn bộ css -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
    <link rel="stylesheet" href="lib/css/preview.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/jquery-ui.css">
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
	
    <!-- Bắt đầu tiêu đề trang con -->
    <div class="breadcrumbs-area breadcrumb-bg ptb-100">
        <div class="container">
            <div class="breadcrumbs text-center">
                <h2 class="breadcrumb-title">thanh toán hóa đơn</h2>
                <ul>
                    <li>
                        <a class="active" href="index.jsp">Trang chủ</a>
                    </li>
                    <li>thanh toán</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Xong tiêu đề trang con -->


    <!-- Bắt đầu phần thanh toán -->
    <div class="checkout-area ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="returning-customer">
                        <h3><i class="fa fa-user"></i><span id="customer"> Đăng nhập tài khoản</span></h3>
                        <div id="customer-login" class="coupon-content">
                            <div class="coupon-info">
                                <p class="coupon-text">Nếu bạn là thành viên vui lòng đăng nhập tài khoản hoặc vui lòng
                                    cung cấp thông tin nếu bạn chưa là thành viên. Cảm ơn!</p>
                                <form action="#">
                                    <p class="form-row-first">
                                        <label>Tài khoản hoặc email <span class="required">*</span></label>
                                        <input type="text" />
                                    </p>
                                    <p class="form-row-last">
                                        <label>Mật khẩu <span class="required">*</span></label>
                                        <input type="text" />
                                    </p>
                                    <p class="lost-password">
                                        <a href="#">Quên mật khẩu?</a>
                                    </p>
                                    <input class="coupon-submit" type="submit" value="Đăng nhập" />
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="customer-coupon">
                        <h3><i class="fa fa-square-o"></i><span id="coupon"> Nhấp chọn nếu bạn có phiếu giảm giá!</span></h3>
                        <div id="have-coupon" class="coupon-checkout-content">
                            <div class="coupon-info">
                                <form action="#">
                                    <p class="checkout-coupon">
                                        <label>
                                            Nhập mã giảm giá
                                            <span class="required">*</span>
                                        </label>
                                        <input type="text" />
                                        <input class="coupon-submit" type="submit" value="Xác nhận" />
                                    </p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-7">
                    <div class="billing-details-area">
                        <h2>Chi tiết thanh toán</h2>
                        <form action="#">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="billing-input">
                                        <label>
                                            Họ tên
                                            <span class="required">*</span>
                                        </label>
                                        <input placeholder="" type="text">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="billing-input">
                                        <label>
                                            Tỉnh thành
                                            <span class="required">*</span>
                                        </label>
                                        <select>
                                            <option value="1">Tỉnh</option>
                                            <option value="2">thành phố</option>
                                            <option value="3">quận</option>
                                            <option value="4">huyện</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="billing-input">
                                        <label>
                                            Địa chỉ
                                            <span class="required">*</span>
                                        </label>
                                        <input placeholder="Street address" type="text">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="billing-input">
                                        <label>
                                            Số điện thoại
                                            <span class="required">*</span>
                                        </label>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="billing-input">
                                        <label>
                                            Email
                                            <span class="required">*</span>
                                        </label>
                                        <input type="email">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="billing-input">
                                        <label>
                                            Ghi chú
                                            <span class="required">*</span>
                                        </label>
                                        <textarea id="checkout-mess" placeholder="Nội dung ghi chú."></textarea>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="your-order-payment">
                        <div class="your-order">
                            <h2>Đơn hàng của bạn</h2>
                            <ul>
                                <li>Bánh ngọt (10) <span>799.00 đ</span></li>
                                <li>Bánh mặn (2) <span>299.00 đ</span></li>
                                <li>Trà sữa (1) <span>100.000 đ</span></li>
                                <li class="order-total">Tổng hóa đơn<span>1.499.000 đ</span></li>
                            </ul>
                        </div>
                        <div class="your-payment">
                            <h2>Hình thức thanh toán</h2>
                            <div class="payment-method">
                                <div class="payment-accordion">
                                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingOne">
                                                <h4 class="panel-title">
                                                    <a role="button" data-toggle="collapse" data-parent="#accordion"
                                                        href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                        Thanh toán trả sau
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel"
                                                aria-labelledby="headingOne">
                                                <div class="panel-body">
                                                    <p>
                                                        Sau khi nhân viên bên chúng tôi xác nhận đơn hàng sẽ có người
                                                        giao hàng
                                                        và nhận thanh toán theo địa chỉ bạn cung cấp.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingTwo">
                                                <h4 class="panel-title">
                                                    <a class="collapsed" role="button" data-toggle="collapse"
                                                        data-parent="#accordion" href="#collapseTwo" aria-expanded="false"
                                                        aria-controls="collapseTwo"> 
                                                        Chuyển tiền trực tiếp
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel"
                                                aria-labelledby="headingTwo">
                                                <div class="panel-body">
                                                    <p>
                                                        Hiện chúng tôi cung cấp hình thức thanh toán trực tiếp bằng
                                                        cách: <br>
                                                        Các bạn chuyển tiền vào tài khoản bên dưới sau khi được nhân
                                                        viên xác nhận đơn hàng <br>
                                                        Số tài khoản: 0911038494 <br>
                                                        Chủ tài khoản: Trần Quang Tân
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingThree">
                                                <h4 class="panel-title">
                                                    <a class="collapsed" role="button" data-toggle="collapse"
                                                        data-parent="#accordion" href="#collapseThree" aria-expanded="false"
                                                        aria-controls="collapseThree">
                                                        Thanh toán quốc tế
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel"
                                                aria-labelledby="headingThree">
                                                <div class="panel-body">
                                                    <p>Hiện tại chúng tôi chưa cung cấp hình thức này.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="order-button-payment">
                                        <input type="submit" value="Mua hàng" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Xong phần thanh toán -->

    <!-- Thêm chân trang -->
	<jsp:include page="layout/footer.jsp"></jsp:include>
	<!-- Xong thêm chân trang --> 
    
    <!-- Toàn bộ js -->
    <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.meanmenu.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/isotope.pkgd.min.js"></script>
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="assets/js/jquery.validate.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="lib/js/jquery.nivo.slider.js"></script>
    <script src="lib/home.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
</body>

</html>