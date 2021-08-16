<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@page import="web.data.dao.ReviewDAO"%>
<%@page import="web.data.dto.ReviewDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/security/login_check.jspf" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- 페이지 이동 링크 - MY PAGE --%>
<%@ include file="/mypage/mypage_transition.jspf" %>
<link type="text/css" rel="stylesheet" href="css/board.css">
<%
	int num = 1;
	String memberId = loginMember.getId(); 
	List<ReviewDTO> reviewList = ReviewDAO.getDAO().selectMemberIdReview(memberId);
	System.out.println(memberId);
%>
<div class="content">
    <div class="mypage_cont">
        <div class="mypage_lately_info">
            <div class="mypage_lately_info_cont">
                <!-- 상품후기 리스트 -->
                <div class="mypage_table_type">
                	<button type="button" id="review_modify" style="float: left; margin-bottom: 20px; font-size: 20px;">수정</button>
                	<button type="button" id="review_remove" style="float: left; margin-bottom: 20px; margin-left: 20px; font-size: 20px;">삭제</button>
                	<button type="button" id="review_write" style="float: right; margin-bottom: 20px; font-size: 20px;">후기작성</button>
				    <table>
				        <colgroup>
				        	<col>
				        	<col style="width:100px">
				            <col style="width:200px">
				            <col style="width:200px">
				            <col>
				            <col style="width:100px">
				        </colgroup>
				        <thead>
						<tr>
							<th></th>
							<th>Number</th>
							<th>Product</th>
							<th>Subject</th>
							<th>Context</th>
							<th>Date</th>
						</tr>
				        </thead>
				        <tbody>
				        	<% for(ReviewDTO review:reviewList) { %>
				        		<% ProductDTO product = ProductDAO.getDao().selectIdProduct(review.getProductId()); %>
				        		<tr>
				        			<td><input type="checkbox" name="check" onclick="doOpenCheck(this)" value="<%=review.getReviewNo()%>"/></td>
						       		<td><%=num %></td>
									<td><%=product.getpName() %></td>
									<td><%=review.getReviewSubject() %></td>
									<td><%=review.getReviewContext() %></td>
									<td><%=review.getReviewDate().substring(0,10) %></td>
								</tr>
								<% num++; %>
							<% } %>
				        </tbody>
				    </table>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
$("#review_write").click(function() {
	location.href = "<%=request.getContextPath()%>/index.jsp?workgroup=mypage&work=review_write";
});

function doOpenCheck(chk){
    var obj = document.getElementsByName("check");
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

$("#review_modify").click(function() {
	let checkItem = $('input[name="check"]:checked');
	if(checkItem.length == 0){
		alert('선택하신 후기가 없습니다. 수정할 후기를 선택해주세요.');
		return false;
	} else {
		location.href = "<%=request.getContextPath()%>/index.jsp?workgroup=mypage&work=review_modify&reviewNo=" + $('input[name="check"]:checked').val();
	}
});

$("#review_remove").click(function() {
	let checkItem = $('input[name="check"]:checked');
	if(checkItem.length == 0){
		alert('선택하신 후기가 없습니다. 삭제할 후기를 선택해주세요.');
		return false;
	} else {
		if(confirm("정말 삭제하시겠습니까?")) {
			location.href = "<%=request.getContextPath()%>/index.jsp?workgroup=mypage&work=review_remove_action&reviewNo=" + $('input[name="check"]:checked').val();
		} else {
			return false;
		}
	}
});
</script>