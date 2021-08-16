<%@page import="web.data.dao.MemberDAO"%>
<%@page import="web.data.dto.MemberDTO"%>
<%@page import="web.util.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 잘못된 접근방식 - GET --%>
<%@ include file="/security/wrong_access.jspf" %>

<%
	//전달값 저장
	String id=request.getParameter("memId");
	String passwd="";
	if(!request.getParameter("memPw").equals("")){
		passwd=Utility.encrypt(request.getParameter("memPw"));
	}
	String name=request.getParameter("memNm").trim();
	String email=request.getParameter("email");
	String mobile=request.getParameter("cellPhone");
	String birthday=request.getParameter("birthDt");
	String zipcode=request.getParameter("zipCode");
	String address1=request.getParameter("address1");
	String address2=request.getParameter("address2");
	
	
	// 객체생성
	MemberDTO member=new MemberDTO();
	member.setId(id);
	member.setPasswd(passwd);
	member.setName(name);
	member.setEmail(email);
	member.setMobile(mobile);
	member.setZipcode(zipcode);
	member.setAddress1(address1);
	member.setAddress2(address2);
	member.setBirthday(birthday);
	
	// 테이블에 변동사항 저장
	MemberDAO.getDAO().updateMember(member);
	
	MemberDTO loginMember=MemberDAO.getDAO().selectIdMember(id);
	session.setAttribute("loginMember", loginMember);
	
	// 회원가입 완료페이지로 이동
	out.println("<script type='text/javascript'>");
	out.println("alert('회원정보 수정이 성공적으로 완료되었습니다.');");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=mypage&work=mypage_info'");
	out.println("</script>");

%>
