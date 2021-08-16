<%@page import="web.data.dao.ProductDAO"%>
<%@page import="java.io.File"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equals("GET")) {
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?workgroup=error&work=error400'");
	out.println("</script>");
	return;		
	}

	String saveDirectory=request.getServletContext().getRealPath("/product/image");
	
	MultipartRequest multipartRequest=new MultipartRequest(request, saveDirectory, 30*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	
	String pId=multipartRequest.getParameter("pId");	
	String pImage=multipartRequest.getParameter("pImage");
	String pName=multipartRequest.getParameter("pName");
	String pImg=multipartRequest.getFilesystemName("pImg");
	String pInfo=multipartRequest.getParameter("pInfo");
	int pPrice=Integer.parseInt(multipartRequest.getParameter("pPrice"));
	int pKinds=Integer.parseInt(multipartRequest.getParameter("pKinds"));
	int pStock=Integer.parseInt(multipartRequest.getParameter("pStock"));	
	
	//DTO 인스턴스 생성 및 전달값으로 필드값 변경
	ProductDTO product=new ProductDTO();
	product.setpId(pId);
	product.setpName(pName);
	product.setpInfo(pInfo);
	if(pImg!=null) {//제품이미지를 변경할 경우
		product.setpImg(pImg);
		//기존 제품이미지 파일 삭제
		new File(saveDirectory, pImage).delete();
	} else {//제품이미지를 변경하지 않을 경우
		product.setpImg(pImage);
	}
	product.setpPrice(pPrice);
	product.setpKinds(pKinds);
	product.setpStock(pStock);
	
	//제품정보를 전달받아 PRODUCT 테이블에 저장된 제품정보를 변경하는 DAO 클래스의 메소드 호출
	ProductDAO.getDao().updateProduct(product);
	
	//제품정보 상세 출력페이지 이동
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?workgroup=product&work=product_detail&pId="+pId+"';");
	out.println("</script>");	
%>
