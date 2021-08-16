<%@page import="web.data.dto.MemberDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDTO loginMember = (MemberDTO)session.getAttribute("loginMember");
	if(loginMember == null){
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=error&work=error400'");
		out.println("</script>");
		return;
	}
%>
<style type="text/css">
.order_confirm {
	margin: 50% auto;
	margin-left: 20px;
	display: flex;
}

#confirm_img {
	height: 200px;
	width: 200px;
	
}

.order_wrap.pay {
	width: 800px;
}
</style>
<div class="content_box">
	<div class="order_wrap pay">
		<div class="order_confirm">
			<img src="images/order/check-mark.png" id="confirm_img"/>
			<span style="font-size: 20px; margin-left: 50px;">
				[<%=loginMember.getName() %>] 고객님의 주문이 완료되었습니다.<br>
				주문내역 및 배송에 관한 안내는 <a href="<%=request.getContextPath()%>/index.jsp?workgroup=mypage&work=my_order_list">주문조회</a>를 통하여 가능합니다.<br><br>
				주문일자 : <%=new SimpleDateFormat("yyyy. MM. dd.").format(new Date()) %><br><br>
				<a href="<%=request.getContextPath()%>/index.jsp">&lt;&nbsp;디마르 홈으로&nbsp;&gt;</a>
			</span>
		</div>
	</div>
</div>