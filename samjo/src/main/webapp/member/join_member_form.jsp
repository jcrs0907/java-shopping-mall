<%@page import="web.data.dto.MemberDTO"%>
<%@page import="web.data.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 잘못된 접근방식 - url을 통해 올 경우(GET).
	if(request.getMethod().equals("GET") && request.getParameter("join")==null){
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=error&work=error400'");
		out.println("</script>");
		return;
	}
	
	MemberDTO returnedMember=(MemberDTO)session.getAttribute("returnedMember");
	if(session.getAttribute("returnedMember")!=null){
		session.removeAttribute("returnedMember");
	}
%>


<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	function phoneMsgShow(){
		$("#phoneRegMsg").css("display", "block");
	}
	
	function birthMsgShow(){
		$("#birthDtRegMsg").css("display", "block");
		$("#birthDtMsg").css("display", "none");
	}

</script>


<style>
	#container {
		margin-top: 150px;
	}
	
	.adverCont {
		margin: 12px 0 12px 0;
	}

	.adverBox {
		vertical-align: -2px !important;
		width: 16px !important;
		height: 16px !important;
	}
	
	.error {
		color: red;
		margin: 0 0 -16px 0;
	    position: relative;
	    padding-left: 7px;
	    min-height: 16px;
	    line-height: 21px;
	    display: none;
	}
	
	.numberInput {
		color: red;
		margin: 0 0 -16px 0;
	    position: relative;
	    padding-left: 7px;
	    min-height: 16px;
	    line-height: 21px;
	    display: none;
	}
	
	#cellPhone:focus {
		border-color: red;
	}
	

	#birthDt:focus {
		border-color: red;
	}
</style>


<div id="wrap">
<div class="gnb_allmenu_wrap">

<!-- //header -->
	</div>
	<!-- //header_warp -->
	
	<div id="container">
		<div id="contents">
		<!-- 본문 시작 -->

			<!-- //location_wrap -->

			<div class="sub_content">

				<!-- //side_cont -->
<div class="content_box">
	<div class="member_wrap memberJoin">
		<div class="member_tit">
			<h2>SIGN UP</h2>
			<ol>
				<li>약관동의</li>
				<li class="page_on">계정생성</li>
				<li>가입완료</li>
			</ol>
		</div>
		<!-- //member_tit -->
		<div class="member_cont">
			<form id="formJoin" name="formJoin" action="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=join_action" method="post" novalidate="novalidate">

				<!-- 회원가입/정보 기본정보 --><div class="base_info_box">
	<div class="base_info_sec">
		<table border="0" cellpadding="0" cellspacing="0">
			<colgroup>
				<col style="width:156px;">
				<col style="width:*;">
			</colgroup>
			<tbody>
			<tr>
				<th><span class="important">아이디</span></th>
				<td>
					<div class="member_warning">
						<input type="text" id="memId" name="memId" data-pattern="gdMemberId">
						<div id="idMsg" class="error">*필수항목입니다.</div>
						<div id="idRegMsg" class="error">*아이디는 영문자로 시작되는 영문자,숫자,_의 6~20범위의 문자로만 작성 가능합니다.</div>
					</div>
				</td>

			</tr>
			<tr class="">
				<th style="vertical-align:top">비밀번호</th>
				<td class="member_password">
					<div class="member_warning">
						<input type="password" id="newPassword" name="memPw" autocomplete="off" placeholder="">
						<div id="passwdMsg" class="error">*필수항목입니다.</div>
						<div id="passwdRegMsg" class="error">*비밀번호는 영문자,숫자,특수문자가 반드시 하나이상 포함된 6~20 범위의 문자로만 작성 가능합니다.</div>
					</div>
				</td>
			</tr>
			<tr class="">
				<th><span class="important">비밀번호 확인</span></th>
				<td>
					<div class="member_warning">
						<input type="password" id="repasswd" class="check-id" name="memPwRe" autocomplete="off">
						<div id="repasswdMsg" class="error">*필수항목입니다.</div>
						<div id="repasswdMatchMsg" class="error">*비밀번호와 비밀번호 확인이 서로 맞지 않습니다.</div>
					</div>
				</td>
			</tr>
			<tr>
				<th><span class="important">이름</span></th>
				<td>
					<div class="member_warning">
						<input type="text" id="dName" name="memNm" data-pattern="gdEngKor" maxlength="30"
							<% if(returnedMember!=null) {%> value="<%=returnedMember.getName()%> <%}%>">
						<div id="nameMsg" class="error">*필수항목입니다.</div>
					</div>
				</td>
			</tr>
			<tr>
				<th><span>이메일</span></th>
				<td class="member_email">
					<div class="member_warning">
						<input type="text" name="email" id="email"
							<% if(returnedMember!=null) {%> value="<%=returnedMember.getEmail()%>" <%}%>>
						<div id="emailRegMsg" class="error">*입력한 이메일이 형식에 맞지 않습니다.</div>
					</div>
					<div class="member_warning js_email"></div>
				</td>
			</tr>
			<tr>
				<th><span>휴대폰번호</span></th>
				<%-- <td class="member_address"> --%>
					<%-- <div class="address_postcode"> --%>
				<td class="member_phone">
					<div class="member_warning">
						<input type="text" id="cellPhone" name="cellPhone" onclick="phoneMsgShow();" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" autocomplete="off"
							<% if(returnedMember!=null) {%> value="<%=returnedMember.getMobile()%>" <%}%>>
						<div id="phoneRegMsg" class="numberInput">*- 없이 입력하세요  ->  예시) 01012341234</div>
					</div>
				</td>
			</tr>
			
			</tbody>
		</table>
	</div>
	<!-- //base_info_sec -->
</div>
<!-- //base_info_box --><!-- 회원가입/정보 기본정보 -->
				<!-- 회원가입/정보 사업자정보 --><!-- 회원가입/정보 사업자정보 -->
				<!-- 회원가입/정보 부가정보 -->
	<div class="addition_info_box">
    <!-- <h3>부가 정보</h3> -->
    <div class="base_info_sec">
        <table style="border: 0; cellpadding: 0; cellspacing: 0;">
			<colgroup>
				<col style="width:156px;">
				<col style="width:*;">
			</colgroup>
            <tbody>
            <tr>
                <th><span class="important">생년월일</span></th>
                <td class="member_birthday">
                    <div id="age_warning" class="member_warning">
                        <input type="text" id="birthDt" name="birthDt" onclick="birthMsgShow();" class="anniversary ages" maxlength="8" autocomplete="off" placeholder="예시) 20150903" data-pattern="gdNum"
                        	<% if(returnedMember!=null) {%> value="<%=returnedMember.getBirthday()%>" <%}%>>
                        <div id="birthDtMsg" class="error">*필수항목입니다.</div>
                        <div id="birthDtRegMsg" class="numberInput error">*- 없이 입력하세요  -> 예시) 20210810</div>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <!-- //addition_info_sec -->
</div>
<!-- //addition_info_box -->

<div class="base_info_box" style="margin-top:25px;position:relative;">
	<h3>마케팅 수신동의 [선택]</h3>
	<table class="agree">
		<thead>
			<tr>
				<th>목 적</th>
				<th style="width:110px;">항 목</th>
				<th style="width:72px;">보유기간</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>사은/판촉행사 등 각종 이벤트, 행사 관련 정보안내 및 제반 마케팅 활동, 당사 및 제휴사 상품/서비스 안내 및 권유</td>
				<td>이메일, 휴대폰 번호, 생년월일</td>
				<td>마케팅 동의 철회시</td>
			</tr>
		</tbody>
	</table>
	<div class="base_info_sec">
		<div class="adverCont">
			<input type="checkbox" class="adverBox" id="maillingFl" name="maillingFl" value="y">
			<label for="maillingFl" class="check_s ">정보/이벤트 메일 수신에 동의합니다.</label>
		</div>
		<div class="adverCont">
			<input type="checkbox" class="adverBox" id="smsFl" name="smsFl" value="y">
			<label for="smsFl" class="check_s ">정보/이벤트 SMS 수신에 동의합니다.</label>
		</div>
	</div>
	<!-- //base_info_sec -->
</div>
<!-- //base_info_box -->

<div class="info-toggle" id="infoToggle">
	<div class="inner joinAgreement">
		<button class="close" onclick="javascript:document.getElementById('infoToggle').style.display='none'; return false">닫기</button>
		<div class="agreeDiv01"><div class="agreeTitle">[선택] 마케팅 수신동의</div></div>
		<div class="agreeDiv02">
			<table style="border-spacing:0px;border-collapse:collapse;" class="agree">
				<thead>
					<tr>
						<th style="min-width:370px;">목 적</th>
						<th style="width:330px;">항 목</th>
						<th style="width:330px;">보유기간</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>사은/판촉행사 등 각종 이벤트, 행사 관련 정보안내 및 제반 마케팅 활동, 당사 및 제휴사 상품/서비스 안내 및 권유</td>
						<td>이메일, 휴대폰 번호, 생년월일</td>
						<td>마케팅 동의 철회시</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

<!-- 회원가입/정보 부가정보 -->

				<div style="border-top:1px solid #e8e8e8;padding-top:46px;color:#919191;font-size:14px;text-align:center;margin-top:78px;margin-bottom:-12px;">
					※ 자연물질연구소에서는 전자상거래에 의거하여<br>만 14세 미만의 어린이/ 학생의 회원가입을 제한합니다.
				</div>
				<div class="btn_center_box">
					<button type="submit" class="btn_comfirm js_btn_join" value="확인">
						확인
					</button>
				</div>
				<!-- //btn_center_box -->
			</form>
		</div>
		<!-- //member_cont -->
	</div>
	<!-- //join_base_wrap -->
</div>
<!-- //content_box -->


			</div>
			<!-- //sub_content -->
		</div>
		<!-- //본문 끝 contents -->
	</div>
	<!-- //container -->

	</div>
<!-- //wrap -->

<script type="text/javascript">
	$("#memId").focus();
	
	$("#formJoin").submit(function() {
		var submitResult=true;
		
		$(".error").css("display","none");
	
		var idReg=/^[a-zA-Z]\w{5,19}$/g;
		if($("#memId").val()=="") {
			$("#idMsg").css("display","block");
			submitResult=false;
		} else if(!idReg.test($("#memId").val())) {
			$("#idRegMsg").css("display","block");
			submitResult=false;
		}
			
		var passwdReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
		if($("#newPassword").val()=="") {
			$("#passwdMsg").css("display","block");
			submitResult=false;
		} else if(!passwdReg.test($("#newPassword").val())) {
			$("#passwdRegMsg").css("display","block");
			submitResult=false;
		} 
		
		if($("#repasswd").val()=="") {
			$("#repasswdMsg").css("display","block");
			submitResult=false;
		} else if($("#newPassword").val()!=$("#repasswd").val()) {
			$("#repasswdMatchMsg").css("display","block");
			submitResult=false;
		}
		
		if($("#dName").val()=="") {
			$("#nameMsg").css("display","block");
			submitResult=false;
		}
		
		var emailReg=/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+(\.[-a-zA-Z0-9]+)+)*$/g;
		if(!emailReg.test($("#email").val())) {
			$("#emailRegMsg").css("display","block");
			submitResult=false;
		}
		
		if($("#birthDt").val()=="") {
			$("#birthDtMsg").css("display","block");
			submitResult=false;
		}
		
		$('html, body').scrollTop(250);
		
		
		return submitResult;
	});


</script>
