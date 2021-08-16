<%@page import="web.data.dao.FaqDAO"%>
<%@page import="web.data.dto.FaqDTO"%>   
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 

<%

%>

<form action="<%=request.getContextPath()%>/admin/admin_page.jsp?group=faq&work=faq_add_action"
		method="post" id="faqForm">

<h4>FAQ 등록</h4>
<br><br>
<select name="typeSelect">
	<option value="product">제품/사용순서</option>
	<option value="member">회원가입/정보수정</option>
	<option value="delivery">결제/배송</option>
	<option value="change">교환/반품/환불</option>
</select>
<br><br>
<input type="text" name="title" placeholder="제목을 입력해 주세요">
<br><br>
<textarea name="content" rows="7" cols="60" placeholder="내용을 입력해 주세요">
</textarea>
<br><br>
<button type="submit" name="insertFaqBtn">
등록하기
</button>
</form>
<script type="text/javascript">
	
</script>