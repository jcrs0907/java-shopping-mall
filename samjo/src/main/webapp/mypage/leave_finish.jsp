<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	if(session.getAttribute("name")==null){
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=error&work=error400'");
		out.println("</script>");
		return;
	}
	String name=(String)session.getAttribute("name");
	session.removeAttribute("name");
%>
    
<style type="text/css">
#container {margin-top: 140px;}

.leaveMsg {
	margin-top: 10px;
	font-size: 14px;
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
	<div class="member_wrap memberOk">
		<div class="member_tit">
			<h2>감사합니다.</h2>
			<p class="leaveMsg"><span style="color: #00BFFF; font-weight: bold;"><%= name %></span>님의 탈퇴처리가 정상적으로 이루어졌습니다.<p>
		</div>
		<!-- //member_tit -->
		<div class="member_cont">
			
			
		</div>
		<!-- //member_cont -->
	</div>
	<!-- //member_wrap -->
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

