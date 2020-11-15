<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>

<style type="text/css">
.Volcontainer {
	width: 702px;
	margin: 50px auto 0px;
}

#btnDiv {
	width: 700px;
	height: 30px;
	text-align: right;
	margin-bottom: 10px;
	color: aqua;
}

#btn {
	width: 60px;
	background-color: #FFE4B5;
	border: 2px solid #FFE4B5;
	font-size: 11px;
	border-radius: 5px;
	padding: 5px;
}

.volUl img {
	width: 120px;
	height: 120px;
}

.volUl {
	width: 700px;
	padding: 0px;
}

.volUl li {
	width: 700px;
	height: 150px;
	border: 2px solid #FFE4B5;
	margin-bottom: 15px;
	border-radius: 5px;
	font-size: 8px;
}

.volUl li #volDiv1 {
	float: left;
	width: 120px;
	height: 120px;
	margin-left: 20px;
	text-align: center;
	margin-top: 15px;
	color: #D3D3D3;
}

.volUl li #volDiv2 {
	float: left;
	width: 400px;
	height: 120px;
	margin-left: 20px;
	text-align: left;
	margin-top: 15px;
}

#volDiv2 a {
	font-weight: bold;
	font-size: 17px;
	color: #FFA500;
}

.volUl li #volDiv3 {
	float: left;
	width: 100px;
	height: 120px;
	margin-left: 20px;
	margin-top: 15px;
}

#volDiv2 #a{
	width: 300px;
	height: 40px;
	overflow: hidden;
	word-wrap: break-word;
	text-overflow: ellipsis;
	margin-top : 20px;
	
}
#volDiv2 #a > pre{
	font-family: "Noto Sans KR", sans-serif;
  	letter-spacing: -0.01em;
	font-size: 11px;
	color: gray;
}
.pageDiv {
	text-align: center;
}
</style>
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>
	<div class="Volcontainer">
		<div id="btnDiv">
			<input type="button" value="글쓰기" id="btn">
		</div>
		<ul class="volUl">
			<c:forEach items="${dto}" var="dto" varStatus="vs">
				<li>
					<div id="volDiv1">
						<c:choose>
							<c:when test="${not empty dto.voluntaryFileDTO.fileName}">
								<img
									src="../resources/upload/voluntary/${dto.voluntaryFileDTO.fileName}">
							</c:when>
							<c:otherwise>사진없음</c:otherwise>
						</c:choose>
					</div>

					<div id="volDiv2">
						<a href="./voluntarySelect?num=${dto.num}">${dto.title}</a>
						<div id="a"><pre>${dto.contents}<pre></div>
					</div>
					<div id="volDiv3">
						${dto.regDate} · 조회수 ${dto.hit}<br> ${dto.writer}
					</div>
				</li>
			</c:forEach>
		</ul>


		<div class="pageDiv">
			<c:if test="${pager.beforeCheck}">
				<a
					href="./voluntaryList?curPage=${pager.startNum-1}&kind=${pager.kind}&search=${search}">[이전]</a>
			</c:if>

			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<a
					href="./voluntaryList?curPage=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a>
			</c:forEach>

			<c:if test="${pager.nextCheck}">
				<a
					href="./voluntaryList?curPage=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">[다음]</a>
			</c:if>
		</div>


		<script type="text/javascript">
			$("#btn").click(function() {
				location.href="./voluntaryWrite";
			});
		</script>

	</div>
</body>
</html>