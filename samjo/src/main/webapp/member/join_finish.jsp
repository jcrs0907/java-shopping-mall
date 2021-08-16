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
			<h2>SIGN UP</h2>
			<ol>
				<li>약관동의</li>
				<li>계정생성</li>
				<li class="page_on">가입완료</li>
			</ol>
		</div>
		<!-- //member_tit -->
		<div class="member_cont">
			<div class="join_ok_box">

				<div class="join_ok_tit">
					<p class="tit"><img src="https://www.demar3.com/data/skin/front/mime/img/imgN/join_ok_tit.jpg" alt="디마르3 공식몰 회원가입을 축하드립니다."></p>
					<p class="txt"><span><%=name%></span>님의 회원가입이 완료되었습니다.<br>로그인 하시면 지금부터 디마르3의 모든 거래 및 서비스를 이용하실 수 있습니다.</p>
				</div>
				<!-- //join_ok_tit -->
				<div class="btn_member_sec">
					<ul>
						<li><button id="btnHome" onclick="goHome();">홈으로</button></li>
						<li><button class="btn_login" onclick="logIn();">로그인</button></li>
					</ul>
				</div>
				<!-- //btn_member_sec -->
			</div>
			<!-- //join_ok_box -->
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
<script type="text/javascript">
	function logIn() {
		location.href="<%= request.getContextPath() %>/index.jsp?workgroup=member&work=login";
	}
	
	function goHome() {
		location.href="<%= request.getContextPath() %>/index.jsp";
	}

</script>

