<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	//잘못된 접근방식 - queryString을 활용하여 구분
	// member - status column : 1(일반), 9(관리자), -1(삭제) -> 컬럼에 저장되지 않지만 로그아웃 시도는 '0'으로 가정
	if(request.getParameter("status")==null || Integer.parseInt(request.getParameter("status"))!=0){
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=error&work=error400'");
		out.println("</script>");
		return;
	}
	
	// 로그아웃 처리
	session.invalidate();
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp'");
	out.println("</script>");

%>
