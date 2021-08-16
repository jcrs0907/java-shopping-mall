<%@page import="web.data.dao.NoticeDAO"%>
<%@page import="web.data.dto.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%     
	if(request.getMethod().equals("GET")) {
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=error&work=error400'");
		out.println("</script>");
		return;		
	}

	//int nNum=Integer.parseInt(request.getParameter("num"));
	String nTitle=request.getParameter("title");
	//String nDate=request.getParameter("date");
	String nContent=request.getParameter("content");
	
	NoticeDTO notice=new NoticeDTO();
	
	//notice.setnNum(nNum);
	notice.setnTitle(nTitle);
	//notice.setnDate(nDate);
	notice.setnContent(nContent);
	
	NoticeDAO.getDao().insertNotice(notice);
	
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=board&work=notice_manager'");
	out.println("</script>");
%>