<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Admin - Bán hàng</title>
<meta name="description" content="Admin - Bán hàng">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="../include/css.jsp"></jsp:include>
<link rel="stylesheet" href="../../../assets/css/bundle.css">
<link rel="stylesheet" href="../../../assets/css/style.css">
</head>
<body>
	<%
		Map<String, String> blog = (Map<String, String>) request.getAttribute("blog");
	%>
	<jsp:include page="../include/leftmenu.jsp"></jsp:include>

	<!-- Right Panel -->

	<div id="right-panel" class="right-panel">

		<jsp:include page="../include/header.jsp"></jsp:include>

		<div class="breadcrumbs">
			<div class="breadcrumbs-inner">
				<div class="row m-0">
					<div class="col-sm-4">
						<div class="page-header float-left">
							<div class="page-title">
								<h1>
									<b>BLOG</b>
								</h1>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="page-header float-right">
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="javascript:void(0)">Trang chủ</a></li>
									<li><a href="javascript:void(0)" class="active">Blog</a></li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="content">
			<div class="animated fadeIn">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong><%=blog.get("tieude")%></strong>
								<div class="pull-right">
									<a class="btn btn-success" href="edit?id=<%=blog.get("id")%>"><span><i
											class="fa fa-edit"></i></span> Sửa</a>
									<button class="btn btn-secondary"
										onclick="Delete(<%=blog.get("id")%>)">
										<span><i class="fa fa-trash-o"></i></span> Xóa
									</button>
								</div>
							</div>
							<div class="card-body card-block">
								<div class="row">
									<div class="col-md-12">
										<div class="blog-wrapper">
											<!-- div class="single-blog"> -->
											<div>
												<a href="#"><img
													src="../assets/img/blog/blog-details.html" alt=""></a>
												<div class="blog-details-text mt-20">
													<div class="post-info">
														<ul>
															<li><i class="fa fa-user"></i> <%=blog.get("tenhienthi")%></li>
															<li><i class="fa fa-calendar"></i> <%=blog.get("created_at")%></li>
															<li><a href="#"><i class="fa fa-comments-o"></i>20</a></li>
														</ul>
													</div>

													<div style="margin-top: 1em;">
														<%=blog.get("noidung")%>
													</div>
												</div>
												<div class="news-details-bottom mtb-60">
													<h3 class="leave-comment-text">Bình luận</h3>
													<div class="blog-top">
														<div class="news-allreply">
															<a href="#"><img
																src="../../../assets/img/testimonial/1.jpg" alt=""></a>
														</div>
														<div class="blog-img-details">
															<div class="blog-title">
																<div class="blog-title-1">
																	<h3>Hoàng Thị Hà</h3>
																	<span>ngày 12 tháng 9 năm 2018 lúc 8 : 00 pm</span>
																</div>
																<div class="nes-icon">
																	<a href="#"> trả lời </a>
																</div>
															</div>
															<p class="p-border">Lorem ipsum dolor sit amet,
																consectetur adipisicing elit, sed do eiusmod tempor
																incididunt ut labore et dolore i aliqua. Ut enim ad
																minim veniam, quis nostrud exercitation ullamco laboris
																nisi ut aliquip ex ea commodo cons. Duis aute irure
																dolor in reprehenderit in</p>
														</div>
													</div>
													<div class="blog-top mt-40 mb-40 margin-middle">
														<div class="news-allreply">
															<a href="#"><img
																src="../../../assets/img/testimonial/2.jpg" alt=""></a>
														</div>
														<div class="blog-img-details">
															<div class="blog-title">
																<div class="blog-title-1">
																	<h3>Nguyễn Hoàng Nam</h3>
																	<span>ngày 12 tháng 9 năm 2018 lúc 8 : 00 pm</span>
																</div>
																<div class="nes-icon">
																	<a href="#"> trả lời </a>
																</div>
															</div>
															<p class="p-border">Lorem ipsum dolor sit amet,
																consectetur adipisicing elit, sed do eiusmod tempor
																incididunt ut labore et dolore i aliqua. Ut enim ad
																minim veniam, quis nostrud exercitation ullamco laboris
																nisi ut aliquip ex ea commodo cons. Duis aute irure
																dolor in reprehenderit in</p>
														</div>
													</div>
													<div class="blog-top">
														<div class="news-allreply">
															<a href="#"><img
																src="../../../assets/img/testimonial/3.jpg" alt=""></a>
														</div>
														<div class="blog-img-details">
															<div class="blog-title">
																<div class="blog-title-1">
																	<h3>Hoàng Thị Hà</h3>
																	<span>ngày 12 tháng 9 năm 2018 lúc 8 : 00 pm</span>
																</div>
																<div class="nes-icon">
																	<a href="#"> trả lời </a>
																</div>
															</div>
															<p class="p-border">Lorem ipsum dolor sit amet,
																consectetur adipisicing elit, sed do eiusmod tempor
																incididunt ut labore et dolore i aliqua. Ut enim ad
																minim veniam, quis nostrud exercitation ullamco laboris
																nisi ut aliquip ex ea commodo cons. Duis aute irure
																dolor in reprehenderit in</p>
														</div>
													</div>
												</div>
												<div class="leave-comment">
													<h3 class="leave-comment-text">Viết bình luận</h3>
													<form action="#">
														<div class="row">
															<div class="col-md-12">
																<div class="text-leave">
																	<textarea placeholder="Nội dung*"></textarea>
																	<button class="submit" type="submit">Đăng bình
																		luận</button>
																</div>
															</div>
														</div>
													</form>
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
			<!-- .animated -->
		</div>
		<!-- .content -->

	</div>
	<!-- /#right-panel -->

	<!-- Right Panel -->

	<!-- Scripts -->
	<jsp:include page="../include/js.jsp"></jsp:include>
		<script>
    function Delete(id) {
    	swal({
  		  title: "Bạn có chắc chắn muốn xóa dữ liệu?",
  		  text: "Sau khi xóa, bạn sẽ không thể phục hồi dữ liệu này!",
  		  type: 'warning',
  		  showCancelButton: true,
  		  confirmButtonColor: '#3085d6',
  		  cancelButtonColor: '#d33',
  		  confirmButtonText: 'Yes'
  		}).then((result) => {
  		  if (result.value) {
  			  window.location.href = "delete?id=" + id;
  		  } else {
  			  swal("Dữ liệu của bạn không thay đổi!");
  		  }
  		});
    }
  </script>
</body>
</html>