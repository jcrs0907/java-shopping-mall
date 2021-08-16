<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String message =(String)session.getAttribute("message");
	if(message==null){
		message="";
	} else {
		session.removeAttribute("message");
	}

	String id =(String)session.getAttribute("id");
	if(id==null){
		id="";
	} else {
		session.removeAttribute("id");
	}


%>    
    
<style type="text/css">
	#container {
		margin-top: 140px;
	}
	
	.errorMsg {
		position: relative;
		top: 10px;
		color: red;
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
	<div class="member_wrap">
		<div class="member_tit">
			<h2>LOGIN</h2>
		</div>
		<!-- //member_tit -->
		<div class="member_cont">

			<form id="formLogin" method="post" action="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=login_action">
				<input type="hidden" id="mode" name="mode" value="login"/>
				<%-- <input type="hidden" id="returnUrl" name="url" value="#"/> --%>
				
				<div class="member_login_box">
					<div class="login_input_sec">
						<div>
							<input type="text" id="loginId" name="loginId" value="" placeholder="아이디" required="true">
							<input type="password" id="loginPwd" name="loginPwd" value="" placeholder="비밀번호" required="true">
						</div>
						<button type="submit" class="member_login_order_btn">로그인</button>
					</div>
					<div class="id_chk">
						<span class="form_element-g">
							<input type="checkbox" id="saveId" name="saveId" value="y" checked="checked"/>
			                <label for="saveId" class=""></label>
						</span>
						<p class="errorMsg"><%= message %></p>
					</div>
				</div>
				<!-- //login_box -->
				<div class="btn_login_box">
					<ul>
						<li>
							<button type="button" id="btnJoinMember" onclick="joinMember();">
								회원가입
							</button>
						</li>
						<li>
							<button type="button" id="btnFindId" onclick="findId();">
								아이디찾기
							</button>
						</li>
						<li>
							<button type="button" id="btnFindPwd" onclick="findPwd();">
								비밀번호찾기
							</button>
						</li>
					</ul>
				</div>
				<%-- 네이버 로그인 
				<div class="member_sns_login">
					<a href="#" class="btn_naver_login js_btn_naver_login" href="#" data-naver-url="https://socialmember.godo.co.kr/NaverLogin/naver_api.php?mode=login&response_type=code&client_id=gHelMAPl2YhTDaqGCYkE&redirect_uri=https%3A%2F%2Fwww.demar3.com%3A443&state=95cd1112268a1a590527b1349a744c75"><span>네이버ID로 로그인</span></a>
				</div>
				--%>
				<!-- //btn_login_box -->
			</form>


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
	function joinMember(){
		location.href="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=join_member";
	}

	function findId(){
		location.href="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=find_id";
	}
	
	function findPwd(){
		location.href="<%=request.getContextPath()%>/index.jsp?workgroup=member&work=find_password";
	}


</script>
