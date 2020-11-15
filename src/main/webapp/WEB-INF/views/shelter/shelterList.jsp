<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>

<style type="text/css">
	
	#wrbtn{
		font-weight: 700;
		margin: 100px 0px 30px 0px;
		color: white;
		float: right;
	}
	.listbox{
		width: 100%;
		height: 250px;
		line-height: inherit;
		border: 6px dashed #e6ffcc;
		padding: 8px;
		border-radius: 10px;
		margin: 30px 0;
		box-sizing: border-box;
		display: flex;
		cursor: pointer;
	}
	.list-contents{
		font-size: 1.4em;
		font-weight:400;
		margin-left: 30px;
	}
	.new{
		float: right;
	}
	#text_new{
		display: none;
	}

</style>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>	

	
	<div class="container">
	
	<div style="margin-left: 20px;">
		<h2 style="margin: 100px 0 0 20px">보호소</h2>
		<hr width="50%" align="left">
    </div>
    
  <a href="./shelterWrite"><input type="button" class="btn btn-warning" id="wrbtn" value="글쓰기"></a>
  
  
  	<c:forEach items="${list}" var="dto" varStatus="vs">  
		<div class="listbox" OnClick="location.href ='./shelterSelect?num=${dto.num}'">

			<div>
				<img class="img" alt="" src="../resources/upload/shelter/4cf45ff1-f7a9-46ed-a95f-812ba9e53ed7_11.jpg" width="350px" height="220px">
			</div>

			<div style="border-bottom-style: 5px solid black; width: 85%">
  				<p class="list-contents">·품   종 : [${dto.animal}] ${dto.animal_kind}</p>
  				<p class="list-contents" id="period_1">·등록일 : ${dto.period_1}</p>
  				<p class="list-contents">·지   역 : ${dto.center}</p>
  				<p class="list-contents">·구조장소 : ${dto.place_of_find}</p>
			</div>
			
			<div class="new" style="width: 20%; height: 20%">
			
			</div>
		</div>
		

		
		</c:forEach>
  
  
  	<c:if test="${pager.beforeCheck}">
  	<a href="./shelterList?curPage=${pager.startNum-1}">[이전]</a>
  	</c:if>
  
  	<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
  		<a href="./shelterList?curPage=${i}">${i}</a>
  	</c:forEach>
  	
  	<c:if test="${pager.nextCheck}">
  	<a href="./shelterList?curPage=${pager.lastNum+1}">[다음]</a>
  	</c:if>
  	
  	
  	<div id="text_new">
  		<h5 style="color: red; text-align: right; font-size: 1.5em; font-weight: bold;">new</h5>
  	</div>
  	
  	
  </div>
  
  

  

 <!-- **********Script*********************************************************************************** -->
 
 <script type="text/javascript">
 
 	
 
 
 
 </script>
  
  	
  
  
</body>
</html>