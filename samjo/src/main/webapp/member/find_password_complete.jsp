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
	<div class="member_wrap">
		<div class="member_tit">
			<h2>FIND PW</h2>
			<p class="copy">비밀번호가 정상적으로 변경되었습니다.</p>
		</div>
		<div class="member_cont">
			<div class="find_password_complete_box">
				<div class="btn_center_box">
					<button class="btn_member_id" onclick="loginBtn();">로그인</button>
				</div>
			</div>
			<!-- //find_password_complete_box -->
		</div>
		<!-- //member_cont -->
	</div>
	<!-- //member_wrap -->
</div>
<!-- //content_box -->
<script type="text/javascript">
	function loginBtn(){
		location.href="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=login";
	};
</script>
			</div>
			<!-- //sub_content -->
		</div>
		<!-- //본문 끝 contents -->
	</div>
	<!-- //container -->
	</div>
<!-- //wrap -->
