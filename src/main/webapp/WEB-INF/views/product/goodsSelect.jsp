<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!Doctype html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
	.picture{
		display: inline-block;
	}
	
	.thumbnail{
		display:inline-block;
		height: 50px;
		cursor: pointer;
	}
	
	.thumbnailImg{
		width: 50px;
		height: 50px;
		float: left;
		margin-top: 5px;
	}
	
	.menu{
		margin-top: 300px;
		
	}
	
	.on{
		width: 350px;
		height: 50px;
		margin-top: 0;
	    padding-top: 0;
	    color: #333;
	    font-weight: 400;
	    border: 1px solid #eee;
	    border-bottom: 1px solid #eee;
	    border-top: 1px solid #333;
	    float: left;
	    text-align: center;
	    line-height: 50px;
	}
	
	.menuul{
		width: 1200px;
		height: 50px;
		margin-bottom: 50px;
	}
	
	#menu_list{
		margin-top: 50px;
		height : 600px;
	}
	
	.c1{
		cursor: pointer;
	}
	
	.menuSelected{
		background-color: black;
		color: white;
	}
	
	.qnatr{
		text-align: center;
	}
	
	.qnacon{
		font-size: 12px;
		color: black;
	}
</style>

<title>Project</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>	
<div class="container">
	<div class="row">
		<div class="col-12 goods-nav">
			<nav class="navbar navbar-expand-sm">
			  <!-- Links -->
			  <ul class="navbar-nav">
			    <li class="goods-nav-item">
			      <a class="nav-link" href="#">패션</a>
			    </li>
			    <li class="goods-nav-item">
			      <a class="nav-link" href="#">악세사리</a>
			    </li>
			    <li class="goods-nav-item">
			      <a class="nav-link" href="#">반려용품</a>
			    </li>
			    <li class="goods-nav-item">
			      <a class="nav-link" href="#">매거진</a>
			    </li>
			  </ul>
			</nav>
		</div>
	</div>
</div>


<div class="container">
	<div class="row">	
		<div class="col-12 col-md-6 sl goods-detail1">
			<div class="picture">
				<img id="mainImg" alt="pet image" src="${pageContext.request.contextPath}/resources/img/common/${files[0].fileName}" width="500px" height="500px">
				<ul style="padding-left: 5px">
					<c:forEach items="${files}" var="file">
						<li class="thumbnail">
							<img style="width:50px; height:50px" class="thumbnailImg" alt="pet image" src="${pageContext.request.contextPath}/resources/img/common/${file.fileName}" width="50px" height="50px">
						</li>
					</c:forEach>
				</ul>
						
			</div>
		</div>
		<div class="col-12 col-md-6 sl goods-detail2">
			<table class="goods-t">
				<tr><th colspan="2" class="goods-sname" style="width:480px">${dto.name}</th></tr>
				<tr class="goods-items"><th>정가</th><td>${dto.price}원</td></tr>
				<tr class="goods-items"><th>판매가</th><td>${dto.price}원</td></tr>
				<tr class="goods-items"><th>구매제한</th><td>옵션당 최소1개</td></tr>
				<tr class="goods-items"><th>배송비</th><td>3,000원</td></tr>
				<tr class="goods-items"><th>상품코드</th><td>${dto.product_num}</td></tr>
				<tr class="goods-items"><th>카테고리</th><td>악세사리</td></tr>
				<tr class="goods-items"><th>상품재고</th><td>${dto.stock}개</td></tr>
				<tr class="goods-items"><th>색상</th><td>${dto.color}</td></tr>
			</table>

		<div class="goods-detail3">	
			<button class="b1">장바구니</button>
			<button class="b2">구매하기</button>
		</div>	
		</div>
		
	</div>
	<div class="menu">
		<ul class="menuul" style="padding-left: 0px">
			<li id="detailMenu" class="on">Detail</li>
			<li id="ReviewMenu" class="on">Review</li>
			<li id="QNAMenu" class="on">Q&A</li>
		</ul>
		<div id="menu_list">
			
		</div>
	</div>
</div>

<script type="text/javascript">
	var curPage = 1;
	reviewList();

	$(".thumbnailImg").click(function(){
		var src = $(this).attr("src");
		$("#mainImg").attr("src",src);
	});
	
	$("#ReviewMenu").click(function(){
		curPage = 1;
		reviewList();
	});
	
	$("#menu_list").on("click","#reviewbnt",function(){
		$("#reviewform").submit();
		reviewList();
	})
	
	function reviewList(){
		$("#ReviewMenu").addClass("menuSelected");
		$("#detailMenu").removeClass("menuSelected");
		$("#QNAMenu").removeClass("menuSelected");
		$.get("../review/reviewList?product_num=${dto.product_num}&curPage="+curPage, function(data) {
			$("#menu_list").html(data);
		});
	}
	
	$("#QNAMenu").click(function(){
		curPage = 1;
		qnaList();
	});
	
	$("#menu_list").on("click", ".c1", function(){
    	curPage = $(this).attr("title");
    	var table = $("#tableName").val();
    	alert(table);
    	if(table == 'review'){
    		reviewList();
    	}else{
    		qnaList();
    	}
	});
	
	function qnaList(){
		$("#ReviewMenu").removeClass("menuSelected");
		$("#detailMenu").removeClass("menuSelected");
		$("#QNAMenu").addClass("menuSelected");
		$.get("../productQna/productQnaList?product_num=${dto.product_num}&curPage="+curPage, function(data) {
			$("#menu_list").html(data);
		});
	}
	
	$("#menu_list").on("click",".qnatitle",function(){
		var num = $(this).attr("title");
		var contents = $("#qnacontent"+num).attr("title");
		var qnacontentResult = $("#qnacontent"+num).html().trim();
		console.log(qnacontentResult);
		var qnacontent = '';
		if(qnacontentResult == ''){
			qnacontent += "<td style='padding-left : 100px' class='qnacon' colspan='5'>"+contents+"<br>";
			qnacontent += "<a style='font-size:12px' href='../productQna/productQnaDelete?qna_num="+num+"'>삭제</a>"
			qnacontent += "</td>";
		}
		$("#qnacontent"+num).html(qnacontent);
	});
</script>
</body>
</html>