<%@page import="web.data.dao.NoticeDAO"%>
<%@page import="web.data.dto.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	int nNum=Integer.parseInt(request.getParameter("nNum"));

	//제품번호를 전달받아 테이블에 저장된 해당 제품번호의 제품정보를 삭제하는 메소드 호출
	NoticeDAO.getDao().deleteNotice(nNum);

	//제품목록 출력페이지 이동
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=board&work=notice_manager&nNum="+nNum+"'");
	out.println("</script>");
%>