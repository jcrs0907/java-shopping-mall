<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String message=(String)session.getAttribute("message");
	if(message==null){
		message="";
	} else {
		session.removeAttribute("message");
	}

%>

<style type="text/css">
#container {margin-top: 120px;}

.received {
	position: relative;
	text-align: left;
	color: red;
}

</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

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
	<form name="formFind" id="formFindId" action="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=find_password_action" method="post">
		<div class="member_wrap">
			<div class="member_tit">
				<h2>FIND PW</h2>
				<p class="copy">아이디를 입력해주세요.</p>
			</div>
			<div class="member_cont">
				<div class="find_password_box">
					<div class="login_input">
						<div class="member_warning">
							<input type="text" id="memberId" name="memberId" placeholder="아이디">
							<div class="received"><%=message%></div>
						</div>
						

						<button type="submit" class="btn_member_id" style="">비밀번호찾기</button>

						<div class="member_warning2">
							아이디를 모르시나요? <a href="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=find_id" class="js_btn_find_id">아이디찾기</a>
						</div>
					</div>
				</div>
				<!-- //find_password_box -->
			</div>
			<!-- //member_cont -->
		</div>
		<!-- //member_wrap -->
	</form>
</div>
<!-- //content_box -->
<script type="text/javascript">
	
	$("#formFindId").submit(function(){
		var submitResult=true;
		if($("#memberId").val()==""){
			alert("아이디를 입력해주세요.");
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
