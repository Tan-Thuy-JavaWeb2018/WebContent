<%@ page pageEncoding="utf-8"%>
<%@ page import="Model.dao_Cart"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="java.util.Map.Entry"%>
<%@ page import="Objects.Items"%>
<%@ page import="Objects.Users"%>
<%@ page import="Control.AddressControl"%>
<%@ page import="Objects.Citys_Provinces"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Thanh toán</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- icon hình ảnh -->
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

<body onload="initialize()">
	<%
		dao_Cart cart = (dao_Cart) session.getAttribute("cart");
	%>
	<!-- Thêm phần tiêu đề trang -->
	<jsp:include page="../layout/headerpage.jsp"></jsp:include>
	<!-- Xong phần tiêu đề trang -->

	<!-- Bắt đầu tiêu đề trang con -->
	<div class="breadcrumbs-area breadcrumb-bg ptb-100">
		<div class="container">
			<div class="breadcrumbs text-center">
				<h2 class="breadcrumb-title">thanh toán hóa đơn</h2>
				<ul>
					<li><a class="active" href="index.jsp">Trang chủ</a></li>
					<li>thanh toán</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Xong tiêu đề trang con -->


	<!-- Bắt đầu phần thanh toán -->
	<div class="checkout-area ptb-100">
		<div class="container">
			<div class="col-md-7">
				<div class="billing-details-area">
					<h2>Chi tiết thanh toán</h2>
					<form action="" <%if (cart.countItems() < 1) {%> hidden="true"
						<%}%>>
						<div class="row">
							<div class="col-md-12">
								<div class="billing-input">
									<label> Họ tên <span class="required">*</span></label>
									<%
										if (session.getAttribute("uslogin") != null) {
											// Giá trị session tồn tại 2 giờ
											session.setMaxInactiveInterval(2 * 60 * 60);
											Users us = (Users) session.getAttribute("uslogin");
									%>
									<input placeholder="" type="text"
										value="<%=us.getTenhienthi()%>" required>
									<%
										} else {
									%>
									<input placeholder="" type="text">
									<%
										}
									%>
								</div>
							</div>

							<div class="col-md-12">
								<div class="billing-input">
									<label> Tỉnh - Thành phố <span class="required">*</span>
									</label> <select onchange="loadDistrict(this.value);" id="city" required">
										<%
											AddressControl address = new AddressControl();
											for (Citys_Provinces list : address.getListAddress()) {
										%>
										<option value="<%=list.getId()%>" title="<%=list.getTendaydu()%>"><%=list.getTen()%></option>
										<%
											}
										%>
									</select>
								</div>
							</div>

							<div class="col-md-12">
								<div class="billing-input">
									<label> Quận - Huyện <span class="required">*</span>
									</label>
									<div id="district">
										<select>
										</select>
									</div>
								</div>

							</div>

							<div class="col-md-12">
								<div class="billing-input">
									<label> Xã - Phường - Thị Trấn <span class="required">*</span>
									</label>
									<div id="town_ward">
										<select required id="town_ward_select">
										</select>
									</div>

								</div>
							</div>

							<div class="col-md-12">
								<div class="billing-input">
									<label> Địa chỉ <span class="required">*</span>
									</label> <input placeholder="Street address" type="text">
								</div>
							</div>
							<div class="col-md-6">
								<div class="billing-input">
									<label> Số điện thoại <span class="required">*</span>
									</label> <input type="text" onkeypress="return keyPhone(event);"
										required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="billing-input">
									<label> Email <span class="required">*</span></label>
									<%
										if (session.getAttribute("uslogin") != null) {
											// Giá trị session tồn tại 2 giờ
											session.setMaxInactiveInterval(2 * 60 * 60);
											Users us = (Users) session.getAttribute("uslogin");
									%>
									<input type="email" value="<%=us.getEmail()%>" required>
									<%
										} else {
									%>
									</label> <input type="email" required>
									<%
										}
									%>
								</div>
							</div>
							<div class="col-md-12">
								<div class="billing-input">
									<label> Ghi chú <span class="required">*</span>
									</label>
									<textarea id="checkout-mess" placeholder="Nội dung ghi chú."></textarea>
								</div>
							</div>
							<div class="order-button-payment">
								<input type="submit" value="Mua hàng" />
							</div>
						</div>
					</form>
				</div>

				<%
					if (cart.countItems() < 1) {
				%>
				<div class="alert alert-info">
					<center>
						<strong>Giỏ hàng trống! Mời bạn tiếp tục mua sắm.</strong>
					</center>
				</div>
				<%
					}
				%>

			</div>
			<div class="col-md-5">
				<div class="your-order-payment">
					<div class="your-order">
						<h2>Đơn hàng của bạn</h2>
						<ul>
							<%
								if (cart.countItems() > 0) {
									for (Entry<Long, Items> list : cart.getCartItems().entrySet()) {
										//xử lý giá bán
										DecimalFormat numformat = new DecimalFormat("#,###,###");
										double cost = list.getValue().getProducts().getGiagoc();
										int discount = list.getValue().getProducts().getKhuyenmai();
										double total = cost - (cost * discount) / 100;
										double sum_price = total * (int) list.getValue().getQuantity();
										String price_nb = numformat.format(total);
							%>
							<li><%=list.getValue().getProducts().getTensanpham()%> (<%=list.getValue().getQuantity()%>)
								<span><%=price_nb%> đ</span></li>

							<%
								}
								}
							%>
							<li id="ship" hidden="true">Phí vận chuyển<span id="shiptext"></span></li>
							<li class="order-total">Tổng hóa đơn<span><%=cart.totalCart()%>
									đ</span></li>
						</ul>
					</div>
					<div class="your-payment">
						<h2>Hình thức thanh toán</h2>
						<div class="payment-method">
							<div class="payment-accordion">
								<div class="panel-group" id="accordion" role="tablist"
									aria-multiselectable="true">
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingOne">
											<h4 class="panel-title">
												<a role="button" data-toggle="collapse"
													data-parent="#accordion" href="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne"> Thanh
													toán trả sau </a>
											</h4>
										</div>
										<div id="collapseOne" class="panel-collapse collapse in"
											role="tabpanel" aria-labelledby="headingOne">
											<div class="panel-body">
												<p>Sau khi nhân viên bên chúng tôi xác nhận đơn hàng sẽ
													có người giao hàng và nhận thanh toán theo địa chỉ bạn cung
													cấp.</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingTwo">
											<h4 class="panel-title">
												<a class="collapsed" role="button" data-toggle="collapse"
													data-parent="#accordion" href="#collapseTwo"
													aria-expanded="false" aria-controls="collapseTwo">
													Chuyển tiền trực tiếp </a>
											</h4>
										</div>
										<div id="collapseTwo" class="panel-collapse collapse"
											role="tabpanel" aria-labelledby="headingTwo">
											<div class="panel-body">
												<p>
													Hiện chúng tôi cung cấp hình thức thanh toán trực tiếp bằng
													cách: <br> Các bạn chuyển tiền vào tài khoản bên dưới
													sau khi được nhân viên xác nhận đơn hàng <br> Số tài
													khoản: 0911038494 <br> Chủ tài khoản: Trần Quang Tân
												</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingThree">
											<h4 class="panel-title">
												<a class="collapsed" role="button" data-toggle="collapse"
													data-parent="#accordion" href="#collapseThree"
													aria-expanded="false" aria-controls="collapseThree">
													Thanh toán quốc tế </a>
											</h4>
										</div>
										<div id="collapseThree" class="panel-collapse collapse"
											role="tabpanel" aria-labelledby="headingThree">
											<div class="panel-body">
												<p>Hiện tại chúng tôi chưa cung cấp hình thức này.</p>
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
	<!-- Xong phần thanh toán -->

	<!-- Thêm chân trang -->
	<jsp:include page="../layout/footer.jsp"></jsp:include>
	<!-- Xong thêm chân trang -->

	<!-- Toàn bộ js -->
	<script src="http://maps.google.com/maps?file=api&v=2&key=ABQIAAAA7j_Q-rshuWkc8HyFI4V2HxQYPm-xtd00hTQOC0OXpAMO40FHAxT29dNBGfxqMPq5zwdeiDSHEPL89A"
        type="text/javascript"></script> 
	<script>
		function loadDistrict(id) {
			closeship();
			if (id != "" && id != 0) {
				//Thực hiện ajax
				if (window.XMLHttpRequest) {
					var xhttp = new XMLHttpRequest();
				} else {
					var xhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				xhttp.onreadystatechange = function() {
					if (this.readyState == 4 && this.status == 200) {
						document.getElementById('district').innerHTML = this.responseText;
						document.getElementById('town_ward').innerHTML = '<select required id="town_ward_select"></select>';
					}
				};
				xhttp.open("GET", "address?status=district&id_city=" + id + "",
						true);
				xhttp.send();
			} else {
				document.getElementById('district').innerHTML = '<select></select>';
				document.getElementById('town_ward').innerHTML = '<select required id="town_ward_select"></select>';
			}

		}

		function load_town_ward(id) {
			closeship();
			if (id != "" && id != 0) {
				//Thực hiện ajax
				if (window.XMLHttpRequest) {
					var xhttp = new XMLHttpRequest();
				} else {
					var xhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				xhttp.onreadystatechange = function() {
					if (this.readyState == 4 && this.status == 200) {
						document.getElementById('town_ward').innerHTML = this.responseText;
					}
				};
				xhttp.open("GET", "address?status=town_ward&id_dictricst=" + id
						+ "", true);
				xhttp.send();
			}

		}
		var ship = document.getElementById("ship");
		function showship(text) {
			showLocation();
			ship.hidden = false;
		}
		function closeship() {
			ship.hidden = true;
		}

		//Xự kiện chỉ nhập số
		function keyPhone(e) {
			var keyword = null;
			if (window.event) {
				keyword = window.event.keyCode;
			} else {
				keyword = e.which;
			}

			if (keyword<48 || keyword>57) {
				if (keyword == 8 || keyword == 48 || keyword == 127) {
					return true;
				}
				return false;
			}
		}
		 
		// Xử lý tính tiền ship 
        var geocoder, location1, location2;
		
        function initialize() {
            geocoder = new GClientGeocoder();
        } 
        
        function showLocation() {  
            var addressship = document.getElementById("idtown_ward").value;  
            var addressshop = "96 Trần Phú, Quận Hải Châu, Đà Nẵng";  
            geocoder.getLocations(addressship, function (response) {
                if (!response || response.Status.code != 200) {
                    alert("Không tìm thấy địa chỉ "+addressship +" trên bản đồ");
                }
                else {
                    location1 = { lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address };
                    geocoder.getLocations(addressshop, function (response) {
                        if (!response || response.Status.code != 200) {
                            alert("Không tìm thấy địa chỉ "+addressshop +" trên bản đồ");
                        }
                        else {
                            location2 = { lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address };
                            try {
                                var glatlng1 = new GLatLng(location1.lat, location1.lon);
                                var glatlng2 = new GLatLng(location2.lat, location2.lon);
                                var miledistance = glatlng1.distanceFrom(glatlng2, 3959).toFixed(1);
                                var kmdistance = (miledistance * 1.609344).toFixed(1); 
                                document.getElementById('shiptext').innerHTML = kmdistance;
                                console.log(document.getElementById('shiptext').innerHTML);
                            }
                            catch (error) {
                                alert("Lỗi hệ thống");
                            }
                        }
                    });
                }
            });
        } 

        function calculateDistance() {
            try {
                var glatlng1 = new GLatLng(location1.lat, location1.lon);
                var glatlng2 = new GLatLng(location2.lat, location2.lon);
                var miledistance = glatlng1.distanceFrom(glatlng2, 3959).toFixed(1);
                var kmdistance = (miledistance * 1.609344).toFixed(1); 
                document.getElementById('results').innerHTML = '<strong>Địa chỉ 1: </strong>' + location1.address + '<br /><strong>Địa chỉ 2: </strong>' + location2.address + '<br /><strong>Khoảng cánh: </strong>' + miledistance + ' miles (or ' + kmdistance + ' km)';
            }
            catch (error) {
                alert(error);
            }
        } 
		
	</script>
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