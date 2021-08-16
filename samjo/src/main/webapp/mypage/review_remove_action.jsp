<%@page import="web.data.dao.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/security/login_check.jspf" %>
<%
	int reviewNo = Integer.parseInt(request.getParameter("reviewNo"));
	
	//삭제메소드 호출
	ReviewDAO.getDAO().deleteReview(reviewNo);
	
	if(request.getParameter("manager") != "") {//관리자페이지에서 삭제요청을한 경우
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=board&work=review_manager'");
		out.println("</script>");
	} else {//마이페이지 상품후기에서 삭제를 한경우
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=mypage&work=my_review'");
		out.println("</script>");	
	}
	
%>