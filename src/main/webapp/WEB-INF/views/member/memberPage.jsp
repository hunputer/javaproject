<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
	<div class="row">
		<div class="col-12 col-md-3">
			<ul class="myPage">
				<h1>마이 페이지</h1>
				<hr>
				<li>
					<h2>쇼핑정보</h2>
					<ul class="myPage-item">
						<li><a href="#">- 주문목록/배송조회</a></li>		
						<li><a href="#">- 취소/반품/교환 내역</a></li>		
						<li><a href="#">- 환불/입금 내역</a></li>		
						<li><a href="#">- 찜리스트</a></li>					
					</ul>
				</li>
				<li>
					<h2>혜택관리</h2>
					<ul class="myPage-item">
						<li><a href="#">- 쿠폰</a></li>		
						<li><a href="#">- 예치금</a></li>		
						<li><a href="#">- 마일리지</a></li>		
					</ul>
				</li>
				<li>
					<h2>회원정보</h2>
					<ul class="myPage-item">
						<li><a href="#">- 회원정보</a></li>		
						<li><a href="#">- 회원 탈퇴</a></li>			
					</ul>
				</li>
				<li>
					<h2>나의 상품문의/후기</h2>
					<ul class="myPage-item">
						<li><a href="#">- 나의 상품문의</a></li>		
						<li><a href="#">- 나의 상품후기</a></li>	
						<li><a href="#">- 1:1 문의</a></li>		
					</ul>
				</li>
			</ul>
		
		
		</div>
		<div class="col-12 col-md-9 member-info">
			<h1>나의 회원정보</h1>
			<hr>
			<h2>기본정보</h2>
			<div class="member-item">
				<table>
					<tr><th>아이디</th><td>***</td></tr>
					<tr><th>비밀번호</th><td>***</td></tr>
					<tr><th>이름</th><td>***</td></tr>
					<tr><th>이메일</th><td><input type="text" name="email" id="email value="***"/></td></tr>
					<tr><th>휴대폰번호</th><td><input type="text" name="phone" id="phone" placeholder="-없이  입력하세요" value="***"/></td></tr>
					<tr>
						<th>주소</th>
						<td>
						<a href="${pageContext.request.contextPath}/member/address">도로명주소</a>
						<input type="text" name="address" id="address" value="***"/></td>
					</tr>
				</table>
			</div>
		
		</div>
	</div>
</div>

</body>
</html>