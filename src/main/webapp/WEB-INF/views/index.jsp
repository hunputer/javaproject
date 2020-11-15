<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!Doctype html>
<html>
<head>
<c:import url="./template/bootStrap.jsp"></c:import>	

<title>Project</title>
</head>
<body>
<c:import url="./template/header.jsp"></c:import>	


<section class="shelter">
	<div class="container">
		<div class="row">
			<div class="col-12 title">
				<h1>ADOPT!!</h1>
				<h2>입양해주세요</h2>
			</div>
			
			<div class="col-12 col-md-4 sl" >
				<a href="#">
					<img alt="pet image" src="${pageContext.request.contextPath}/resources/img/common/p1.jpg">
					<p>배수관에 빠져 울고있던 새끼 고양이 #양옹이</p>
				</a>
			</div>
			<div class="col-12 col-md-4 sl">
				<a href="#">
					<img alt="pet image" src="${pageContext.request.contextPath}/resources/img/common/p2.jpg">
					<p>차도에서 도망가지 못하던 새끼 고양이 #요미</p>
				</a>
			</div>
			<div class="col-12 col-md-4 sl">
				<a href="#" class="">
					<img alt="pet image" src="${pageContext.request.contextPath}/resources/img/common/p3.jpg">
					<p>보호자 건강악화로 새가족을 찾는 #쿠키</p>
				</a>
			</div>
			<div class="col-12 col-md-4 sl" >
				<a href="#">
					<img alt="pet image" src="${pageContext.request.contextPath}/resources/img/common/p4.jpg">
					<p>보호소의 외톨이 개 #클로버</p>
				</a>
			</div>
			<div class="col-12 col-md-4 sl">
				<a href="#">
					<img alt="pet image" src="${pageContext.request.contextPath}/resources/img/common/p5.jpg">
					<p>늘 기회에서 밀려나던 #바비</p>
				</a>
			</div>
			<div class="col-12 col-md-4 sl">
				<a href="#" class="">
					<img alt="pet image" src="${pageContext.request.contextPath}/resources/img/common/p6.jpg">
					<p>고양시 불법 번식장에서 구조한 26마리 개</p>
				</a>
			</div>
			</div>
	</div>	
</section>

  </body>
</html>
</body>
</html>

