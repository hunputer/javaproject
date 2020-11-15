<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<c:import url="../template/address.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
	<div class="row">
		
		<div class="col-12">
		<h1 class="join-title">개인 회원가입</h1>
		<form action="#" method="post" class="join-form">
		<div class="p1">
			<div class="panel-group" id="accordion">
		    <div class="panel panel-first">
		    	<label for="fname"></label>
		    		<p><input type="checkbox" class="chk">   
		    		<strong>필수동의 항목 및 개인정보 수집 및 이용 동의(선택), 업무 위탁 동의(선택),<br>    알바뉴스레터 이메일/SMS 수신 동의(선택)에 일괄 동의합니다.</strong></p>
		    </div>
		    
		     <div class="panel panel-default">
		      <div class="panel-heading">
		       <p><input type="checkbox" name="join-chk1" value="yyy" class="chk">
		    	   서비스 이용약관 동의 (필수)
		       <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">내용</a>
		       </p>
		      </div>
		      
		      <div id="collapse1" class="panel-collapse collapse in">
		        <div class="panel-body">
					<textarea cols="80" rows="10">
개정일자 : 2020년 9월 3일
					
제1조 (목적)
본 약관은 포인핸드가 운영하는 "서비스"를 이용함에 있어 "회사"와 회원간의 이용 조건 및 제반 절차, 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 한다.
제2조 (용어의 정의)
이 약관에서 사용하는 용어의 정의는 아래와 같다.
① "사이트"라 함은 회사가 서비스를 "회원"에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 설정한 가상의 영업장 또는 회사가 운영하는 웹사이트, 모바일웹, 앱 등의 서비스를 제공하는 모든 매체를 통칭하며, 통합된 하나의 회원 계정(아이디 및 비밀번호)을 이용하여 서비스를 제공받을 수 있는 아래의 사이트를 말한다.
- www.pawinhand.com
② "서비스"라 함은 회사가 운영하는 사이트를 통해 기업(단체, 사업자, 교육기관)이 직원채용을 목적으로 등록하는 자료를 DB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사이트에서 제공하는 모든 부대 서비스를 말한다.
③ 회원이라 함은 기업의 필요한 인재를 고용할 것을 목적으로 약관에 동의하고 아이디를 부여받아 회사의 서비스를 이용하는 자를 말하며, 아웃 소싱(도급), 인재파견, 채용대행 기업을 포함한다. 또한, 회원은 각 사업자 별로 아이디를 부여 받아 회사의 서비스를 이용하여야 한다.
④ "아이디"라 함은 회원가입시 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 "회사"가 부여하는 문자와 숫자의 조합을 말한다.
⑤ "비밀번호"라 함은 위 제4항에 따라 회원이 회원가입시 아이디를 설정하면서 아이디를 부여받은 자와 동일인임을 확인하고 "회원"의 권익을 보호하기 위하여 "회원"이 선정한 문자와 숫자의 조합을 말한다.
⑥ "비회원"이라 함은 회원가입절차를 거치지 않고 "회사"가 제공하는 서비스를 이용하거나 하려는 자를 말한다.
제3조 (약관의 명시와 개정)
① "회사"는 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처 등을 이용자가 알 수 있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지해야 한다.
② "회사"는 약관의 규제에 관한 법률, 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련법을 위반하지 않는 범위에서 이 약관을 개정할 수 있다.
③ "회사"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 그 개정약관의 적용일자 7일 전부터 적용일자 전일까지 공지한다. 단 "회원"의 권리, 의무에 중대한 영향을 주는 변경의 경우에는 적용일자 30일 전부터 공지하도록 한다.
④ "회원"은 변경된 약관에 대해 거부할 권리가 있다. "회원"은 변경된 약관이 공지된 지 15일이내에 거부의사를 표명할 수 있다. "회원"이 거부하는 경우 본 서비스 제공자인 "회사"는 15일의 기간을 정하여 "회원"에게 사전 통지 후 당해 "회원"과의 계약을 해지할 수 있다. 만약, "회원"이 거부의사를 표시하지 않거나, 전항에 따라 시행일 이후에 "서비스"를 이용하는 경우에는 동의한 것으로 간주한다.
제4조 (약관의 해석)
① 이 약관에서 규정하지 않은 사항에 관해서는 약관의 규제에 관한 법률, 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등의 관계법령에 따른다.
② 각 사이트 및 서비스 이용약관이 있는 경우에는 서비스 이용약관이 우선한다.
③ "회원"이 "회사"와 개별 계약을 체결하여 서비스를 이용하는 경우에는 개별 계약이 우선한다.
제5조 (이용계약의 성립)
① "회사"의 서비스 이용계약(이하 '이용계약')은 서비스를 이용하고자 하는 자가 본 약관과 개인정보처리방침을 읽고 "동의" 또는 "확인" 버튼을 누른 경우 본 약관에 동의한 것으로 간주한다.
② 제1항 신청에 있어 "회사"는 "회원"의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 있으며, "회원"은 본인인증에 필요한 이름, 생년월일, 연락처 등을 제공하여야 한다, 또한 서비스 이용을 위해 회사명과 사업자등록번호를 제공하여야 하며 "회사"는 기업인증을 위해 사업자정보를 확인할 수 있는 증명서(사업자등록증)를 별도로 요구할 수 있다. 회사명과 사업자등록번호를 허위로 등록한 경우, 휴·폐업 사업자등록번호로 등록한 경우에 "회원"은 일체의 권리를 주장할 수 없다.
③ 이용신청자가 이용신청(회원가입 신청) 작성 후에 "회사"가 웹상의 안내 및 전자메일로 "회원"에게 통지함으로써 이용계약이 성립된다.
④ 사업자등록번호가 없는 기관이나 단체는 "회사"가 정한 별도의 절차에 따라 이용계약을 할 수 있다.
이 약관은 2020년 9월 3일부터 시행한다.
					</textarea>
				</div>
		      </div>
		    </div>
		    </div>
		    <div class="panel panel-default">
		      <div class="panel-heading">
		        <p><input type="checkbox" name="join-chk2" value="yyy" class="chk">
		      	개인정보 수집 및 이용 동의 (필수)
		        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">내용</a></p>
		      </div>
		      <div id="collapse2" class="panel-collapse collapse">
		        <div class="panel-body"><textarea cols="80" rows="10">
개정일자 : 2020년 9월 3일

제1조 (목적)
본 약관은 포인핸드가 운영하는 "서비스"를 이용함에 있어 "회사"와 회원간의 이용 조건 및 제반 절차, 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 한다.
제2조 (용어의 정의)
이 약관에서 사용하는 용어의 정의는 아래와 같다.
① "사이트"라 함은 회사가 서비스를 "회원"에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 설정한 가상의 영업장 또는 회사가 운영하는 웹사이트, 모바일웹, 앱 등의 서비스를 제공하는 모든 매체를 통칭하며, 통합된 하나의 회원 계정(아이디 및 비밀번호)을 이용하여 서비스를 제공받을 수 있는 아래의 사이트를 말한다.
- www.pawinhand.com
② "서비스"라 함은 회사가 운영하는 사이트를 통해 기업(단체, 사업자, 교육기관)이 직원채용을 목적으로 등록하는 자료를 DB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사이트에서 제공하는 모든 부대 서비스를 말한다.
③ 회원이라 함은 기업의 필요한 인재를 고용할 것을 목적으로 약관에 동의하고 아이디를 부여받아 회사의 서비스를 이용하는 자를 말하며, 아웃 소싱(도급), 인재파견, 채용대행 기업을 포함한다. 또한, 회원은 각 사업자 별로 아이디를 부여 받아 회사의 서비스를 이용하여야 한다.
④ "아이디"라 함은 회원가입시 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 "회사"가 부여하는 문자와 숫자의 조합을 말한다.
⑤ "비밀번호"라 함은 위 제4항에 따라 회원이 회원가입시 아이디를 설정하면서 아이디를 부여받은 자와 동일인임을 확인하고 "회원"의 권익을 보호하기 위하여 "회원"이 선정한 문자와 숫자의 조합을 말한다.
⑥ "비회원"이라 함은 회원가입절차를 거치지 않고 "회사"가 제공하는 서비스를 이용하거나 하려는 자를 말한다.
					</textarea></div>
		      </div>
		    </div>
		    <div class="panel panel-default">
		      <div class="panel-heading">
		        <p><input type="checkbox" name="join-chk3" value="yyy" class="chk">
		        개인정보 수집 및 이용 동의 (선택)
		        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">내용</a></p>
		      </div>
		      <div id="collapse3" class="panel-collapse collapse">
		        <div class="panel-body"><textarea cols="80" rows="10">
개정일자 : 2020년 9월 3일

제1조 (목적)
본 약관은 포인핸드가 운영하는 "서비스"를 이용함에 있어 "회사"와 회원간의 이용 조건 및 제반 절차, 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 한다.
제2조 (용어의 정의)
이 약관에서 사용하는 용어의 정의는 아래와 같다.
① "사이트"라 함은 회사가 서비스를 "회원"에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 설정한 가상의 영업장 또는 회사가 운영하는 웹사이트, 모바일웹, 앱 등의 서비스를 제공하는 모든 매체를 통칭하며, 통합된 하나의 회원 계정(아이디 및 비밀번호)을 이용하여 서비스를 제공받을 수 있는 아래의 사이트를 말한다.
- www.pawinhand.com
② "서비스"라 함은 회사가 운영하는 사이트를 통해 기업(단체, 사업자, 교육기관)이 직원채용을 목적으로 등록하는 자료를 DB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사이트에서 제공하는 모든 부대 서비스를 말한다.
③ 회원이라 함은 기업의 필요한 인재를 고용할 것을 목적으로 약관에 동의하고 아이디를 부여받아 회사의 서비스를 이용하는 자를 말하며, 아웃 소싱(도급), 인재파견, 채용대행 기업을 포함한다. 또한, 회원은 각 사업자 별로 아이디를 부여 받아 회사의 서비스를 이용하여야 한다.
④ "아이디"라 함은 회원가입시 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 "회사"가 부여하는 문자와 숫자의 조합을 말한다.
⑤ "비밀번호"라 함은 위 제4항에 따라 회원이 회원가입시 아이디를 설정하면서 아이디를 부여받은 자와 동일인임을 확인하고 "회원"의 권익을 보호하기 위하여 "회원"이 선정한 문자와 숫자의 조합을 말한다.
⑥ "비회원"이라 함은 회원가입절차를 거치지 않고 "회사"가 제공하는 서비스를 이용하거나 하려는 자를 말한다.

					</textarea></div>
		      </div>
		    </div>
		  </div>
	<div class="p2">	  
		<div class="form-group">
			<label for="lname">아이디</label>
	 		<input type="text" class="form-control" id="id" name="id" required="required">
 		</div>
 		
 		<div class="form-group">
			<label for="lname">비밀번호</label>
	  		<input type="text" class="form-control" id="pw" name="pw" required="required">
  		</div>
  		

  		<div class="form-group">
	  		<label for="lname">비밀번호확인</label>
	  		<input type="text" class="form-control" id="pw2" name="pw2" required="required">
  		</div>
  		
		<div id="pwResult"></div>
  		
  		<div class="form-group">
	  		<label for="lname">이름</label>
	  		<input type="text" class="form-control empty" id="name" name="name" required="required">
  		</div>
  		
  		<div class="form-group">
	  		<label for="lname">전화번호</label>
	  		<div class="form-items">
				 <select name="phone1">
				     <option value="010">010</option>
				     <option value="011">011</option>
				     <option value="016">016</option>
				     <option value="017">017</option>
				     <option value="018">018</option>
				     <option value="019">019</option>
				 </select>-
		  		<input type="text" class="form-control empty" id="phone2" name="phone2" required="required">-
		  		<input type="text" class="form-control empty" id="phone3" name="phone3" required="required">
  			</div>
  		</div>
  		
  		<div class="form-group">
	  		<label for="lname">이메일</label>
	  		<div class="form-items">
		  		<input type="text" class="form-control empty" id="email1" name="email1" required="required">@
		  		<input type="text" class="form-control empty" id="email2" name="email2" required="required">
		  		<select id="email3">
		  				 <option value="직접입력">직접입력</option>
					     <option value="naver.com">naver.com</option>
					     <option value="hanmail.net">hanmail.net</option>
					     <option value="nate.com">nate.com</option>
					     <option value="daum.net">daum.net</option>
					     <option value="gmail.com">gmail.com</option>
				</select>
			</div>	
  		</div>
  		
  		<div class="form-group">
	  		<label for="lname">주소</label><br>
	  		<div class="address-items">
		  		<input type="text" id="sample6_postcode" placeholder="우편번호" name="zipcode">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" id="sample6_address" placeholder="주소" name="address1" class="text"><br>
				<input type="text" id="sample6_detailAddress" placeholder="상세주소" name="address2" class="text"><br>
				<input type="text" id="sample6_extraAddress" placeholder="참고항목" name="address3" class="text">
			</div>
  		</div>
  		<hr>
  		
  		<div class="member-jb">
  			<input type="submit" value="회원가입" id="member-jb1">
  			<input type="submit" value="취소" id="member-jb2">
  		</div>
		</div>
		
		
		</form>
		
		</div>
		</div>
		</div>
	</div>
<script type="text/javascript">
var emptyCheckResult = true;

//**********  pw check   **********
var str= "패스워드가 일치하지 않습니다";

$("#pw2").blur(function() {
	var pw = $("#pw").val();
	var pw2 = $(this).val();
	pwCheck=false;
	
	if(pw == pw2){
		str= "패스워드가 일치합니다";
		$("#pwResult").removeClass("idCheck1").addClass("idCheck0");
		pwCheck=true;
	}else {
		str= "패스워드가 일치하지 않습니다";
		$("#pwResult").removeClass("idCheck0").addClass("idCheck1");
	}
	
	$("#pwResult").html(str);
});


</script>
</body>
</html>