<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<style type="text/css">
	.wrong-access {
		text-align: center;
		margin-top: 70px;
	}
	
	.wrong-access a:hover {
		color: #D3D3D3;
	}
	
	.wrong-access h3 {
		margin-bottom: 20px;
	}
	
</style>

<div id="wrap">
<div class="gnb_allmenu_wrap">
	</div>
	<div id="container">
		<div id="contents">
			<div class="sub_content">
			</div>
			
<div class="content_box">
	<div class="wrong-access">
		<h3>비정상적인 방법으로 페이지를 요청 하였습니다.<br>
		정상적인 방법으로 요청해 주세요.</h3>
		<a href="<%= request.getContextPath() %>/index.jsp">HOME</a>&nbsp;&nbsp;&nbsp;
		<span>|</span>&nbsp;&nbsp;&nbsp;
		<a href="<%= request.getContextPath() %>/index.jsp?workgroup=member&work=login">LOGIN</a>
	
	</div>
	
</div>

		</div>
	
</div>
</div>