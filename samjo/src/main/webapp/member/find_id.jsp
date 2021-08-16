<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String message=(String)session.getAttribute("message");
	if(message==null){
		message="";
	} else {
		session.removeAttribute("message");
	}
	
	String memberId=(String)session.getAttribute("memberId");
	if(memberId==null){
		memberId="";
	} else {
		session.removeAttribute("memberId");
	}
%>
<style type="text/css">
#container {margin-top: 120px;}

.form_element label.choice_s {
    min-width: 20px;
    padding: 0 0 0 31px;
    background: url('https://www.demar3.com/data/skin/front/mime/img/common/input/radio_off_small.png') no-repeat 1px 50%;
}

.form_element label.choice_s.on {
    background: url('https://www.demar3.com/data/skin/front/mime/img/common/input/radio_on_small.png') no-repeat 1px 50%;
}

.btn_member_sec{text-align: center;}

.findPwdBtn {
	display: inline-block;
	border: 1px solid black;
	width: 150px;
	height: 50px;
	text-align: center;
	padding-top: 12px;
	margin-right: 10px;
}

.loginBtn {
	display: inline-block;
	width: 150px;
	height: 50px;
	background-color: black;
	color: white;
	text-align: center;
	padding-top: 12px;
	
}


.error {
	color: red;
	position: relative;
	display: none;
}

.received {
	color: red;
	position: relative;
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
	<div class="member_wrap">
		<div class="member_tit">
			<h2>FIND ID</h2>
			<p class="copy findId">이름과 가입시 등록한 이메일을 입력해주세요.</p>
			<p class="copy ok findSuccess" style="display:none;">디마르3 공식몰 아이디를 찾았습니다.</p>
		</div>
		<form id="formFindId" method="post" action="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=find_id_action">
			<div class="form_element radio_find_type">
				<label id="emailLabel" for="findIdEmail" class="choice_s on" >
					<input type="radio" id="findIdEmail" name="findIdFl" value="email" checked="checked">
					이메일
				</label>
				<label id="phoneLabel" for="findIdPhone" class="choice_s" >
				<input type="radio" id="findIdPhone" name="findIdFl" value="cellPhone">
					휴대폰번호
				</label>
			</div>
			
			<!-- //member_tit -->
			<div class="member_cont">
					<div class="find_id_box">
						<div class="find_id_sec">
							<div class="login_input">
								<div>
									<input type="text" id="userName" name="userName" placeholder="고객이름">
									<input type="text" id="userEmail" name="userEmail" placeholder="가입시 이메일">
									<input type="text" id="userCellPhoneNum" name="userCellPhoneNum" placeholder="가입휴대폰번호" disabled="disabled" style="display:none;" maxlength="12">
								</div>
								<p id="errorMsg" class="error">일치하는 회원정보가 없습니다. 다시 입력해 주세요.</p>
								<p class="received"><%=message%></p>
								<button type="submit" class="btn_member_id">아이디찾기</button>
							</div>
						</div>
						<!-- //find_id_sec -->
					</div>
					
					<% if(!memberId.equals("")) { %>
					<!-- //find_id_box -->
					<div class="find_complete_box"><p>고객님의 아이디는 <br><strong><%=memberId%></strong> 입니다</p></div>
						<div class="btn_member_sec">
							
							<a href="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=find_password" class="findPwdBtn">비밀번호찾기</a>
							<a href="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=login" class="loginBtn">로그인</a>
						</div>
					</div>
					<script type="text/javascript">
						(function(){
							$(".login_input").css("display", "none");
							$(".findId").css("display", "none");
							$(".findSuccess").css("display", "block");
						})();
						
					</script>
					<% } %>
						
		</form>
		<!-- //member_cont -->
	</div>
	<!-- //member_wrap -->
</div>
<!-- //content_box -->

<script type="text/javascript">

	
	$('input[name="findIdFl"]').on('click', function(){
		if($(this).val() == 'cellPhone'){
			$("#phoneLabel").addClass("on");
			$("#emailLabel").removeClass("on");
			$('input[id="userEmail"]').hide().prop('disabled', true);
	        $('input[id="userCellPhoneNum"]').prop('disabled', false).show();
		} else if ($(this).val() == 'email') {
			$("#emailLabel").addClass("on");
			$("#phoneLabel").removeClass("on");
			$('input[id="userCellPhoneNum"]').hide().prop('disabled', true);
	        $('input[id="userEmail"]').prop('disabled', false).show();
		}
	});

	$("#formFindId").submit(function(){
		
		var submitResult=true;
		
		$(".error").css("display","none");
		if($("#findIdEmail").is(":checked")){
			if($("#userName").val()=="" || $("#userEmail").val()==""){
				$("#errorMsg").css("display", "block");
				submitResult=false;
			}
		} else if($("#findIdPhone").is(":checked")){
			if($("#userName").val()=="" || $("#userCellPhoneNum").val()==""){
				$("#errorMsg").css("display", "block");
				submitResult=false;
			}
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
