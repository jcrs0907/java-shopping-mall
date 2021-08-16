<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	//비정상적이 요청에 대한 처리
	
	if(request.getParameter("pId")==null) {
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=error&work=error400'");
		out.println("</script>");
		return;		
	}
	
	//전달값을 반환받아 저장
	String pId=request.getParameter("pId");

	
	ProductDTO product=ProductDAO.getDao().selectIdProduct(pId);
%>
<style type="text/css">
#product {
	width: 800px;
	margin: 0 auto;
}



table {
	margin: 0 auto;
}

td {
	text-align: left;
}
</style>

<div id="product">
	<h2 style="text-align: center;">제품변경</h2>
	
	<form action="<%=request.getContextPath()%>/admin/admin_page.jsp?group=admin&work=product_modify_action"
		method="post" enctype="multipart/form-data" id="productForm">
		<input type="hidden" name="pId" value="<%=product.getpId()%>">

		<input type="hidden" name="pImage" value="<%=product.getpImg() %>">
		<table>
			<tr>
				<td>제품코드</td>
				<td>
					<input type="text" name="pId" id="pId" value="<%=product.getpId()%>">
				</td>
			</tr>
			<tr>
				<td>제품명</td>
				<td>
					<input type="text" name="pName" id="pName" maxlength="20" value="<%=product.getpName()%>">
				</td>
			</tr>
			<tr>
				<td>제품이미지</td>
				<td>
					<img src="<%=request.getContextPath()%>/product/image/<%=product.getpImg() %>" width="200">
					<br>
					<span style="color: red;">이미지를 변경하지 않을 경우 입력하지 마세요.</span>
					<br>
					<input type="file" name="pImg" id="pImg">
				</td>
			</tr>
			<tr>
				<td>제품정보</td>
				<td>
					<textarea rows="5" cols="60" name="pInfo" id="pInfo"><%=product.getpInfo()%></textarea>
				</td>
			</tr>
			<tr>
				<td>제품가격</td>
				<td>
					<input type="text" name="pPrice" id="pPrice" value="<%=product.getpPrice()%>">
				</td>
			</tr>
			<tr>
				<td>제품코드</td>
				<td>
					<select name="pKinds">
						<option value="1" <% if(product.getpKinds()==1) { %>selected="selected"<% } %>>토너</option>
						<option value="2" <% if(product.getpKinds()==2) { %>selected="selected"<% } %>>크림</option>
						<option value="3" <% if(product.getpKinds()==3) { %>selected="selected"<% } %>>앰플/세럼</option>
						<option value="4" <% if(product.getpKinds()==4) { %>selected="selected"<% } %>>토탈솔루션</option>
						<option value="5" <% if(product.getpKinds()==5) { %>selected="selected"<% } %>>주름/탄력</option>
						<option value="6" <% if(product.getpKinds()==6) { %>selected="selected"<% } %>>etc</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>제품수량</td>
				<td>
					<input type="text" name="pStock" id="pStock" value="<%=product.getpStock()%>" >
				</td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">제품변경</button></td>
			</tr>
		</table>	
	</form>
	
	<div id="message" style="color: red;"></div>
</div>

<script type="text/javascript">
$("#productForm").submit(function() {
	if($("#pId").val()=="") {
		$("#message").text("제품코드를 입력해 주세요.");
		$("#pId").focus();
		return false;
	}
	
	if($("#pName").val()=="") {
		$("#message").text("제품명을 입력해 주세요.");
		$("#pName").focus();
		return false;
	}
	
	if($("#pIfo").val()=="") {
		$("#message").text("제품정보를 입력해 주세요.");
		$("#pInfo").focus();
		return false;
	}
	
	if($("#pPrice").val()=="") {
		$("#message").text("제품가격을 입력해 주세요.");
		$("#pPrice").focus();
		return false;
	}
	
	if($("#pStock").val()=="") {
		$("#message").text("제품수량을 입력해 주세요.");
		$("#pStock").focus();
		return false;
	}
	
});

</script>