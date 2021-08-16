<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 잘못된 접근
	if(session.getAttribute("member")==null){
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=error&work=error400'");
		out.println("</script>");
		return;
	}
	
%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style type="text/css">
#container {margin-top: 100px;}

.error {
	color: red;
	margin: 0 0 0 0;
	text-align: left;
    position: relative;
    padding-left: 7px;
    min-height: 16px;
    line-height: 21px;
    display: none;
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

			<div class="sub_content">

				<!-- //side_cont -->
<div class="content_box">
	<div class="member_wrap">
		<div class="member_tit">
			<h2>FIND PW</h2>
			<p class="copy">영문 대/소문자, 숫자 특수문자 중 2가지를 조합하세요.</p>
		</div>
		<div class="member_cont">
			<form name="formReset" id="resetForm" action="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=password_reset_action" method="post">
				<div class="find_password_box">
					<div class="login_input">
							<div class="member_warning">
								<input type="password" id="newPw" name="memPw" autocomplete="off" placeholder="영문대/소문자, 숫자, 특수문자 중 2가지 이상 조합하세요" data-min-length="10" data-max-length="16">
								<input type="password" id="newPwRe" name="memPwRe" autocomplete="off" placeholder="새 비밀번호 확인">
								<div id="passwdRegMsg" class="error">*비밀번호는 영문자,숫자,특수문자가 반드시 하나이상 포함된 6~20 범위의 문자로만 작성 가능합니다.</div>
								<div id="repasswdMatchMsg" class="error">*비밀번호와 비밀번호 확인이 서로 맞지 않습니다.</div>
							</div>
							<button type="submit" id="btnConfirm" class="btn_member_id">확인</button>

					</div>
				</div>
				<!-- //find_password_reset_box -->
			</form></div>
		
		<!-- //member_cont -->
	</div>
	<!-- //member_wrap -->
</div>
<!-- //content_box -->
<script type="text/javascript">
	$("#resetForm").submit(function(){
		var submitResult=true;
		
		var passwdReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
		if(!passwdReg.test($("#newPw").val())) {
			$("#passwdRegMsg").css("display","block");
			submitResult=false;
		} 

		if($("#newPw").val()!=$("#newPwRe").val()) {
			$("#repasswdMatchMsg").css("display","block");
			submitResult=false;
		}
		
		return submitResult;
	});

</script>
			</div>
			<!-- //sub_content -->
		</div>
		<!-- //본문 끝 contents -->
	</div>
	<!-- //container -->

</div>
<!-- //wrap -->