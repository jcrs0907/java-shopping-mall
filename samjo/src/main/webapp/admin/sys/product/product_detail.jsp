<%@page import="java.text.DecimalFormat"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getParameter("pId")==null) {
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/admin/admin_page.jsp?group=error&work=error400'");
		out.println("</script>");
		return;		
	}

	//전달값을 반환받아 저장
	String pId=request.getParameter("pId");

	//제품번호를 전달받아 PRODUCT 테이블에 저장된 해당 제품번호의 제품정보를 검색하여 
	//반환하는 DAO 클래스의 메소드 호출
	ProductDTO product=ProductDAO.getDao().selectIdProduct(pId);
%>
<style type="text/css">
table {
	margin-left:0 auto;
	border: 1px solid black;
	border-collapse: collapse;
}

td {
	border: 1px solid black;
}

.title {
	background: black;
	color: white;
	text-align: center;
	width: 100px;
}

.value {
	padding: 3px;
	text-align: left;
	width: 400px;
}
</style>

<h2>제품상세정보</h2>
<table>
	<tr>
		<td class="title">제품코드</td>
		<td class="value"><%=product.getpId() %></td>
	</tr>
	<tr>
		<td class="title">제품명</td>
		<td class="value"><%=product.getpName() %></td>
	</tr>
	<tr>
		<td class="title">제품이미지</td>
		<td class="value">
			<img src="<%=request.getContextPath()%>/product/image/<%=product.getpImg() %>" width="200">
		</td>
	</tr>
	<tr>
		<td class="title">제품정보</td>
		<td class="value"><%=product.getpInfo().replace("\n", "<br>") %></td>
	</tr>
	<tr>
		<td class="title">제품가격</td>
		<td class="value"><%=DecimalFormat.getInstance().format(product.getpPrice()) %></td>
	</tr>
	<tr>
		<td class="title">제품수량</td>
		<td class="value"><%=DecimalFormat.getInstance().format(product.getpStock()) %></td>
	</tr>
</table>

<p>
	<button type="button" id="modifyBtn">제품정보변경</button>
	<button type="button" id="removeBtn">제품정보삭제</button>
</p>

<script type="text/javascript">
$("#modifyBtn").click(function() {
	location.href="<%=request.getContextPath()%>/admin/admin_page.jsp?group=product&work=product_modify&pId=<%=product.getpId()%>";
});

$("#removeBtn").click(function() {
	if(window.confirm("제품정보를 삭제 하겠습니까?")) {
		location.href="<%=request.getContextPath()%>/admin/admin_page.jsp?group=product&work=product_remove_action&pId=<%=product.getpId()%>";
	}
});
</script>
