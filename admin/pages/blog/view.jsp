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

<link rel="stylesheet" href="../../../assets/css/style.css">

<!-- <link -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" -->
<!-- 	rel="stylesheet"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> -->
<!-- <link href="https://nightly.datatables.net/css/jquery.dataTables.css" -->
<!-- 	rel="stylesheet" type="text/css" /> -->
<link rel="stylesheet" href="../../lib/css/jquery.dataTables.css">
<link rel="stylesheet"
	href="../../lib/bower_components/alertifyjs/css/alertify.css">
<link rel="stylesheet"
	href="../../lib/bower_components/alertifyjs/css/themes/default.css">
<style type="text/css">
td.details-control {
	text-align: center;
	color: forestgreen;
	cursor: pointer;
}

tr.shown td.details-control {
	text-align: center;
	color: red;
}
</style>
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
													<div class="card">
														<div class="card-header">
															<strong class="card-title">BÌNH LUẬN</strong>
														</div>
														<div class="card-body" style="font-size: 14px;"
															id="loadajax">
															<p><%=blog.get("id")%></p>
															<table width="100%" class="display" id="example"
																cellspacing="0" style="font-size: 16px">
																<thead>
																	<tr>
																		<th></th>
																		<th>ID</th>
																		<th>Tên</th>
																		<th>Nội dung</th>
																		<th>Ngày bình luận</th>
																		<th>Tùy chọn</th>
																	</tr>
																</thead>
																<tfoot>
																	<tr>
																		<th></th>
																		<th>ID</th>
																		<th>Tên</th>
																		<th>Nội dung</th>
																		<th>Ngày bình luận</th>
																		<th>Tùy chọn</th>
																	</tr>
																</tfoot>
															</table>
														</div>
													</div>
												</div>
												<div class="leave-comment">
													<h3 class="leave-comment-text">Viết bình luận</h3>
													<form action="addComment" method="post"
														enctype="application/x-www-form-urlencoded">
														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<textarea class="form-control" rows="2"
																		placeholder="Nhập bình luận" name="noidungbinhluan"
																		id="noidungbinhluan"></textarea>
																</div>
																<div class="form-group">
																	<input type="button" class="btn btn-primary"
																		value="Đăng bình luận"
																		onclick="DangBinhLuan(<%=blog.get("id")%>)">
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
	<script src="../../lib/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="../../lib/js/jquery.dataTables.js"></script>
	<script src="../../lib/js/dataTables.select.min.js"></script>
	<script src="../../lib/bower_components/alertifyjs/alertify.js"></script>
	<script type="text/javascript">
	var datatable = null; var idBaiViet = 0;
	$(document).ready(function () {
		idBaiViet = document.getElementById("loadajax").childNodes[1].innerText;
// 		console.log(idBlog);
		$.ajax({
            url: '../comment/loaddata',
            type: 'GET',
            contentType: "application/json",
            dataType:'json',
            data: {
                idBaiViet: idBaiViet
            }
        }).done(function(ketqua) {
// 			console.log(ketqua.data[0].chitiet);
			datatable = ketqua;
// 			console.log(ketqua.data);
			//load dữ liệu bình luận
			var table = $('#example').DataTable({
	             "data": datatable.data,
	             select:"single",
	             "columns": [
	                 {
	                     "className": 'details-control',
	                     "orderable": false,
	                     "data": null,
	                     "defaultContent": '',
	                     "render": function () {
	                         return '<i class="fa fa-plus-square" aria-hidden="true"></i>';
	                     },
	                     width:"15px"
	                 },
	                 { "data": "id" },
	                 { "data": "tenhienthi" },
	                 { "data": "noidung" },
	                 { "data": "created_at" },
	                 { "data": "opition" },
	             ],
	             "order": [[1, 'asc']]
			
	         });
			
			// event listener cho đóng, mở chi tiết
	         $('#example tbody').on('click', 'td.details-control', function () {
	             var tr = $(this).closest('tr');
	             var tdi = tr.find("i.fa");
	             var row = table.row(tr);
	             
	             if (row.child.isShown()) {
	                 row.child.hide();
	                 tr.removeClass('shown');
	                 tdi.first().removeClass('fa-minus-square');
	                 tdi.first().addClass('fa-plus-square');
	             }
	             else {
	                 row.child(format(row.data())).show();
	                 tr.addClass('shown');
	                 tdi.first().removeClass('fa-plus-square');
	                 tdi.first().addClass('fa-minus-square');
// 	                 console.log(row.data());
	             }
	         });
	         
	         table.on("user-select", function (e, dt, type, cell, originalEvent) {
	             if ($(cell.node()).hasClass("details-control")) {
	                 e.preventDefault();
	             }
	         });
	         
        });
	});
	
	function format(d){
        
        // dữ liệu cho chi tiết bình luận
//         if(d.chitiet[0] == null) return "";
        var str = "";
        str += '<div class="container"><div class="row"><div class="col-md-1"></div><div class="col-md-10">'
        +'<table class="table table-bordered" style="padding-left:50px;" '+"id=\"tableDetailComment" + d.id +"\"" + '>' +
            '<tr>' +
                '<th>ID</th>' +
                '<th>Tên</th>' +
                '<th>Nội dung</th>' +
                '<th>Ngày bình luận</th>' +
                '<th>Tùy chọn</th>' +
            '</tr>';
            	for (var i = 0; i < d.chitiet.length; i++) {
            		if(d.chitiet[i] != undefined){
            			 str +=  "<tr id=\"detailComment" + d.chitiet[i]['id'] + "\">" +
                         '<td>' + d.chitiet[i]['id'] + '</td>' +
                         '<td>' + d.chitiet[i]['tenhienthict'] + '</td>' +
                        '<td>' + d.chitiet[i]['noidungchitiet'] + '</td>' +
                        '<td>' + d.chitiet[i]['created_at'] + '</td>' +
                        '<td>' + d.chitiet[i]['opitionDetail'] + '</td>' +
                     '</tr>';
            		}
                   
                }

            str +=
        '</table>' + 
        '</div><div class="col-md-1"></div>'+ '<div class="col-md-1"></div><div class="col-md-8">' +
		'<div class="form-group">' +
		'<textarea class="form-control" rows="1"' +
			'placeholder="Nhập bình luận" name="noidungbinhluan"></textarea>' +
	'</div></div><div class="col-md-2"><button class="btn btn-primary btn-sm" onclick="addDetailComment('+ d.id +')"> <span><i class="fa fa-plus-square"></i></span> OK</button></div><div class="col-md-1"></div>' + 
        '</div></div>';
        return str; 
   }

</script>

	<script>
function DangBinhLuan(idBaiViet){
	var noidungbinhluan = document.getElementById("noidungbinhluan").value;
	
	$("#loadajax").html('<table width="100%" class="display" id="example" cellspacing="0" style="font-size: 16px"> <thead><tr><th></th><th>ID</th><th>Tên</th><th>Nội dung</th><th>Ngày bình luận</th><th>Tùy chọn</th></tr></thead><tfoot><tr><th></th><th>ID</th><th>Tên</th><th>Nội dung</th><th>Ngày bình luận</th><th>Tùy chọn</th></tr></tfoot></table>');
	$.ajax({
        url: '../comment/add',
        type: 'GET',
        contentType: "application/json",
        dataType:'json',
        data: {
            idBaiViet: idBaiViet, noidung: noidungbinhluan
        }
    }).done(function(ketqua) {
    	datatable = ketqua;
		//load dữ liệu bình luận
		var table = $('#example').DataTable({
             "data": datatable.data,
             select:"single",
             "columns": [
                 {
                     "className": 'details-control',
                     "orderable": false,
                     "data": null,
                     "defaultContent": '',
                     "render": function () {
                         return '<i class="fa fa-plus-square" aria-hidden="true"></i>';
                     },
                     width:"15px"
                 },
                 { "data": "id" },
                 { "data": "tenhienthi" },
                 { "data": "noidung" },
                 { "data": "created_at" },
                 { "data": "opition" },
             ],
             "order": [[1, 'asc']]
		
         });
		
		// event listener cho đóng, mở chi tiết
        $('#example tbody').on('click', 'td.details-control', function () {
            var tr = $(this).closest('tr');
            var tdi = tr.find("i.fa");
            var row = table.row(tr);
            
            if (row.child.isShown()) {
                row.child.hide();
                tr.removeClass('shown');
                tdi.first().removeClass('fa-minus-square');
                tdi.first().addClass('fa-plus-square');
            }
            else {
                row.child(format(row.data())).show();
                tr.addClass('shown');
                tdi.first().removeClass('fa-plus-square');
                tdi.first().addClass('fa-minus-square');
            }
        });
        
        table.on("user-select", function (e, dt, type, cell, originalEvent) {
            if ($(cell.node()).hasClass("details-control")) {
                e.preventDefault();
            }
        });
       
        alertify.success('Đăng bình luận thành công!');
        
    });
	document.getElementById("noidungbinhluan").value = "";
}
</script>


	<script>
function DeleteComment(idComment){
// 	console.log(idBaiViet)
	alertify.defaults.glossary.title = 'Xóa bình luận';
	alertify.confirm("Bạn muốn xóa dữ liệu?",
	  function(){
		$.ajax({
	        url: '../comment/delete',
	        type: 'GET',
	        contentType: "application/json",
	        dataType:'json',
	        data: {
	        	idComment: idComment, idBaiViet: idBaiViet
	        }
	    }).done(function(ketqua) {
	    	datatable = ketqua;
			//load dữ liệu bình luận
	    	var hang = $("#example tbody tr");
			for (var i = 0; i < hang.length; i++) {
				if(hang[i].innerHTML != "" &&  hang[i].childNodes[1].innerHTML == idComment){
					hang[i].innerHTML = "";
				}
			}
			alertify.success('Xóa bình luận thành công');
	    });
	    
	  },
	  function(){
	    alertify.error('Dữ liệu không thay đổi');
	  });
}
</script>

	<script>
function EditComment(idComment, content){
	alertify.defaults.glossary.title = 'Chỉnh sửa';
	alertify.prompt("Nhập nội dung bình luận", content,
	  function(evt, content){
		$.ajax({
	        url: '../comment/edit',
	        type: 'GET',
	        contentType: "application/json",
	        dataType:'json',
	        data: {
	        	idComment: idComment, idBaiViet: idBaiViet, content: content
	        }
	    }).done(function(ketqua) {
	    	datatable = ketqua;
			var hang = $("#example tbody tr");
	// 		console.log(hang);
			for(var i = 0; i < hang.length; i++) {
				if(hang[i].cells[1] != undefined){
					if(hang[i].cells[1].childNodes[0].nodeValue == idComment){
						hang[i].cells[3].childNodes[0].nodeValue = content;
						hang[i].cells[5].childNodes[2].attributes[1].value = "EditComment(" + idComment + ",'" + content + "')";
					}
				}
			}

			alertify.success('Sửa bình luận thành công');
	    });
	    
	  },
	  function(){
	    alertify.error('Dữ liệu không thay đổi');
	  });
}

</script>


	<script>
function addDetailComment(idComment){
	console.log(idComment);
	
	var tbody = $("#tableDetailComment" + idComment + " tbody");
	var createRow = document.createElement("tr");
	for(var i = 0; i < 5; i++){
		var createColumn = document.createElement("td");
		switch(i){
			case 0: var textNode = document.createTextNode("id"); break;
			case 1: var textNode = document.createTextNode("ten"); break;
			case 2: var textNode = document.createTextNode("noidung"); break;
			case 3: var textNode = document.createTextNode("ngay"); break;
			case 4: var textNode = document.createTextNode("tuychon"); break;
		}
		
		createColumn.appendChild(textNode);
		createRow.appendChild(createColumn);
		
	}
	tbody.append(createRow);
	console.log(tbody);
}
</script>


	<script>
function DeleteDetailComment(idDetailComment){
// 	console.log(datatable.data);
	for(var i = 0; i < datatable.data.length; i++){
		for(var j = 0; j < datatable.data[i].chitiet.length; j++){
			if(datatable.data[i].chitiet[j].id == idDetailComment){
// 				console.log(datatable.data[i].chitiet[j].id)
				delete datatable.data[i].chitiet[j]; 
// 				console.log(datatable.data[i].chitiet[j]);
				break;
				
			}
		}
	}
	$("#detailComment" + idDetailComment).html("");
}
</script>



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