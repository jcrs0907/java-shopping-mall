<%@page import="java.io.File"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%-- 비정상적인 요청 처리 코드 작성해야함 --%>
	
<% 
	//product_add에서 제품이미지 전달받아 webapps 디렉토리에 저장
	String saveDirectory=request.getServletContext().getRealPath("/product/image");
	
	//MultipartRequest 클래스로 인스턴스 생성 (cos.jar 파일 빌드시켜놓음)
	MultipartRequest multipartRequest=new MultipartRequest(request, saveDirectory, 30*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	
	String pId=multipartRequest.getParameter("pId");
	String pName=multipartRequest.getParameter("pName");
	String pImg=multipartRequest.getFilesystemName("pImg");
	String pInfo=multipartRequest.getParameter("pInfo");
	int pPrice=Integer.parseInt(multipartRequest.getParameter("pPrice"));
	int pKinds=Integer.parseInt(multipartRequest.getParameter("pKinds"));
	int pStock=Integer.parseInt(multipartRequest.getParameter("pStock"));
	
	//DTO 인스턴스에 저장
	ProductDTO product=new ProductDTO();
	product.setpId(pId);
	product.setpName(pName);
	product.setpImg(pImg);
	product.setpInfo(pInfo);
	product.setpPrice(pPrice);
	product.setpKinds(pKinds);
	product.setpStock(pStock);
	
	if(ProductDAO.getDao().selectIdProduct(pId)!=null) {
		new File(saveDirectory,pImg).delete();
		session.setAttribute("message", "이미 등록된 제품입니다");
		session.setAttribute("product", product);
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=product&work=product_add'");
		out.println("</script>");
		return;
	}
	
	//제품등록
	ProductDAO.getDao().insertProduct(product);
	
	
	/*
	*	제품목록으로 이동하는 코드 작성
	*/
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=product&work=product_manager&pKinds="+pKinds+"'");
	out.println("</script>");
%>
