<%@page import="java.io.File"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//비정상적이 요청에 대한 처리 코드 작성해야함

	
	//전달값을 반환받아 저장
	String pId=request.getParameter("pId");
	
	ProductDTO product=ProductDAO.getDao().selectIdProduct(pId);
	
	//제품번호를 전달받아 테이블에 저장된 해당 제품번호의 제품정보를 삭제하는 메소드 호출
	ProductDAO.getDao().deleteProduct(pId);
	
	//삭제 처리된 제품에 대한 이미지 파일 삭제
	String saveDirectory=request.getServletContext().getRealPath("/product/image");
	new File(saveDirectory,product.getpImg()).delete();
	
	//제품목록 출력페이지 이동
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=product&work=product_manager';");
	out.println("</script>");	
%>
