<%@page import="web.data.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//잘못된 접근방식
	if(request.getMethod().equals("GET")) {
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"admin/admin_page.jsp?group=error&work=error400'");
		out.println("</script>");
		return;
	}

	//체크박스에 의해 선택된 전달값을 반환받아 저장 
	// => 같은 이름으로 전달된 값이 여러 개 존재하므로 getParameterValues() 메소드 호출
	String[] checkId = request.getParameterValues("checkId");
	
	// 배열에 저장된 요소값(아이디)을 반복적으로 제공받아 삭제 처리
	for(String id : checkId) {
		// 아이디를 전달받아 MEMBER 테이블에 저장된 해당 아이디의 회원정보를 삭제하는 DAO 클래스의 메소드 호출
		MemberDAO.getDAO().deleteMember(id);
	}
	
	// 회원목록 출력페이지 이동
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=member&work=member_management'");
	out.println("</script>");

%>    
    