<%@page import="web.data.dto.MemberDTO"%>
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
	
	MemberDTO member=(MemberDTO)session.getAttribute("member");
%>

<style type="text/css">
#container {margin-top: 100px;}
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
	<div class="member_wrap memberOk">
		<div class="member_tit">
			<!-- <h2>비밀번호 찾기</h2> -->
			
			<h2>FIND PW</h2>
			<p class="copy">본인인증 방법을 선택해 주세요.</p>
		</div>
		<!-- //member_tit -->
		<div class="member_cont">
			<div class="user_certify_box">
				<form name="formAuth" id="formAuth" method="post" action="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=password_reset" novalidate="novalidate">

					<!-- //user_certify_tit -->
					<div class="login_input" style="border-top-width: 0px;">
						<div class="form_element">
							<ul class="user_certify_list">
								<!--   -->
								<li>
									<input type="radio" id="authSms" name="authType" value="authSms" class="radio">
									<label id="smsChoose" class="choice" for="authSms">SMS 인증</label>
									<strong>( <%=member.getMobile()%> )</strong>
									<p>휴대폰으로 인증번호가 발송됩니다.</p>
								</li>
								<!--  -->
								<!--   -->
								<li>
									<input type="radio" id="authEmail" name="authType" value="authEmail">
									<label id="emailChoose" class="choice" for="authEmail">이메일 인증</label>
									<strong>( <%=member.getEmail()%> )</strong>
									<p>이메일로 인증번호가 발송됩니다.</p>
								</li>
							</ul>
						</div>
					</div>
					<!-- //user_certify_list -->
					<div class="btn_member_sec">
						<ul>
							<li><button type="submit">다음</button></li>
						</ul>
						<p id="errorMessage" class="dn error_txt"></p>
					</div>
					<!-- //btn_member_sec -->
				</form>
			</div>
			<!-- //user_certify_box -->
		</div>
		<!-- //member_cont -->
	</div>
	<!-- //member_wrap -->
</div>
<!-- //content_box -->
<script type="text/javascript">
$('input[name="authType"]').on('click', function(){
	if($(this).val() == 'authSms'){
		$("#smsChoose").addClass("on");
		$("#emailChoose").removeClass("on");
	} else if ($(this).val() == 'authEmail') {
		$("#emailChoose").addClass("on");
		$("#smsChoose").removeClass("on");
	}
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