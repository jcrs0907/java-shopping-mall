<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/security/login_check.jspf" %>

<%
	
	String message=(String)session.getAttribute("message");
	if(message==null){
		message="";
	} else {
		session.removeAttribute("message");		
	}
	
%>

<style type="text/css">
#container {margin-top: 80px;}

.accessWarning {
	display: block;
	color: red;
	text-align: center;
	padding: 40px;
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

				<div class="side_cont">
	
	
<%-- 페이지 이동 링크 - MY PAGE --%>
<%@ include file="/mypage/mypage_transition.jspf" %>
	


				</div>
				<!-- //side_cont -->

<div class="content">
	<div class="mypage_cont">

		<div class="my_page_password" style="margin-top:25px">




			<form id="formFind" method="post" action="<%=request.getContextPath()%>/index.jsp?workgroup=mypage&work=mypage_password_action">
				<div class="id_pw_cont">
					<div class="member_warning">
						<input type="password" name="findPassword" id="findPassword" placeholder="비밀번호 입력">
					</div>
					<div class="btn_center_box">
						<button type="submit" class="btn_member_id">확인</button>
					</div>
					<div class="accessWarning" name="accessWarning">
						<%= message %>
					</div>
					<div class="notice01">
						<ol>
							<li>-  고객님의 개인정보 보호를 위한 본인 확인 절차이오니, 로그인 시 사용하시는 비밀번호를 입력해주세요.</li>
							<li>- 공공장소에서 PC를 사용 중인 경우, 비밀번호가 타인에게 노출되지 않도록 주의해 주시기 바랍니다.</li>
						</ol>
					</div>
				</div>
			</form>

		</div>
		<!-- //my_page_password -->

	</div>
	<!-- //mypage_cont -->
</div>
<!-- //content -->
<script>

</script>

			</div>
			<!-- //sub_content -->
		</div>
		<!-- //본문 끝 contents -->
	</div>
	<!-- //container -->

</div>
<!-- //wrap -->