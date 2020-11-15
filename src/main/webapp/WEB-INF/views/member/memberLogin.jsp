<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>

<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
	<div class="row">
		<div class="col-12 member-Login">
		<h3>Member Login Page</h3>
			<form action="./memberLogin" method="post">
			    <div class="member-form">
			      <label for="id">Id:</label>
			      <input type="text" value="${cookie.remember.value}" class="form-control" id="id" placeholder="Enter Id" name="id">
			    </div>
			    <div class="member-form">
			      <label for="pw">Password:</label>
			      <input type="password" class="form-control" id="pw" placeholder="Enter password" name="pw">
			    </div>
			    <div class="checkbox member-form">
			      <label><input type="checkbox" name="remember" value="check"> Remember me</label>
			      <button type="submit" class="btn btn-default">Submit</button>
			    </div>
		  </form>
	  </div>
  </div>
</div>


</body>
</html>