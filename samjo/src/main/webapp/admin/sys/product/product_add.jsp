<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 
<%
	String message=(String)session.getAttribute("message");
	if(message==null) {
		message="";
	} else {
		session.removeAttribute("message");
	}
%>    
<style type="text/css">
#product {
	width: 1200px;
	margin: 0 auto;
}

</style>
<div class="productHeader">
	<p>Product > <span style="font-weight: 600;">상품 등록</span></p>
</div>   
<div id="product">
	<hr>
	<form action="<%=request.getContextPath()%>/admin/admin_page.jsp?group=product&work=product_add_action"
		method="post" enctype="multipart/form-data" id="productForm">
		<table>
			<tr>
				<td>제품코드</td>
				<td>
					<input type="text" name="pId" id="pId">
				</td>
			</tr>
			<tr>
				<td>제품명</td>
				<td>
					<input type="text" name="pName" id="pName">
				</td>
			</tr>
			<tr>
				<td>제품이미지</td>
				<td>
					<input type="file" name="pImg" id="pImg">
				</td>
			</tr>
			<tr>
				<td>상품정보</td>
				<td>
					<textarea rows="5" cols="100" name="pInfo" id="pInfo"></textarea>
				</td>
			</tr>
			<tr>
				<td>상품가격</td>
				<td>
					<input type="text" name="pPrice" id="pPrice">
				</td>
			</tr>
			<tr>
				<td>상품분류</td>
				<td>
					<select name="pKinds">
						<option value="1" selected="selected">토너</option>
						<option value="2">크림</option>
						<option value="3">앰플/세럼</option>
						<option value="4">토탈솔루션</option>
						<option value="5">주름/탄력</option>
						<option value="6">etc</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>상품재고</td>
				<td>
					<input type="text" name="pStock" id="pStock">
				</td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">제품등록</button></td>
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
	
	if($("#pImage").val()=="") {
		$("#message").text("제품이미지를 입력해 주세요.");
		$("#pImage").focus();
		return false;
	}
	
	if($("#pInfo").val()=="") {
		$("#message").text("제품설명을 입력해 주세요.");
		$("#pInfo").focus();
		return false;
	}
	
	if($("#pPrice").val()=="") {
		$("#message").text("제품수량을 입력해 주세요.");
		$("#pPrice").focus();
		return false;
	}
	
	if($("#pStock").val()=="") {
		$("#message").text("제품가격을 입력해 주세요.");
		$("#pStock").focus();
		return false;
	}
	
});

</script>