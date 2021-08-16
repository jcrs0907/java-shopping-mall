<%@page import="web.data.dao.MemberDAO"%>
<%@page import="web.data.dto.MemberDTO"%>
<%@page import="web.util.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 잘못된 접근방식 - GET --%>
<%@ include file="/error/error400.jsp" %>

<%
	
	// 전달값 저장
	String id=request.getParameter("memId");
	String passwd=Utility.encrypt(request.getParameter("memPw"));
	String name=request.getParameter("memNm").trim();
	String email=request.getParameter("email");
	String mobile=request.getParameter("cellPhone");
	String birthday=request.getParameter("birthDt");

	// 아이디 존재 여부 check
	if(MemberDAO.getDAO().checkId(id)!=null){
		MemberDTO rmember=new MemberDTO();
		rmember.setName(name);
		rmember.setEmail(email);
		rmember.setMobile(mobile);
		rmember.setBirthday(birthday);
		session.setAttribute("returnedMember", rmember);
		
		out.println("<script type='text/javascript'>");
		out.println("alert('이미 존재하는 아이디입니다.')");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=member&work=join_member_form&join=1'");
		out.println("</script>");
		return;
	}
	
	// 객체생성
	MemberDTO member=new MemberDTO();
	member.setId(id);
	member.setPasswd(passwd);
	member.setName(name);
	member.setEmail(email);
	member.setMobile(mobile);
	member.setZipcode("");
	member.setAddress1("");
	member.setAddress2("");
	member.setBirthday(birthday);
	
	// 테이블에 저장
	MemberDAO.getDAO().insertMember(member);
	
	session.setAttribute("name", name);
	
	// 회원가입 완료페이지로 이동
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=member&work=join_finish'");
	out.println("</script>");
	
%>


