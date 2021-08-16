<%@page import="web.data.dao.MemberDAO"%>
<%@page import="web.data.dao.ReviewDAO"%>
<%@page import="web.data.dto.ReviewDTO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- admin_page.jsp에 위치한 주석을 참고해주세요. --%>

<%
	List<ReviewDTO> reviewList=ReviewDAO.getDAO().selectAllReview();

	int count=ReviewDAO.getDAO().selectReviewCount(); 
	
	String currentDate=new SimpleDateFormat("yyyy-MM-dd").format(new Date());
%>

<style type="text/css">
.review-T {
	margin: 0 auto;
	border: 1px solid black;
	border-collapse: collapse;
	margin-top: 60px;
	margin-top: 60px;
}

.review-T th, .review-T td {
	border: 1px solid black;
	padding: 3px;
	text-align: center;
	font-size: 12px;
}

.review-T th {
	background: black;
	color: white;
}

.reviewRow {
	background: white;
}

.review-T .reviewRow:hover {
	background-color: #f5f5f5;
}


.review_no { width: 60px; }
.review_item { width: 80px; }
.review_writer { width: 80px; }
.review_title { width: 250px; }
.review_content {
	width: 400px;
	text-overflow: ellipsis;
}
.review_date { width: 110px; }
.review_option { width: 130px; }


</style>

<div class="reviewHeader">
	<p>Board > <span style="font-weight: 600;">회원리뷰</span></p>
</div>

<form id="reviewForm">
	<table class="review-T">
		<tr>
			<th class="review_no">no</th>
			<th class="review_item">제품id</th>
			<th class="review_title">제목</th>
			<th class="review_content">내용</th>
			<th class="review_writer">작성자</th>
			<th class="review_date">작성일</th>
			<th class="review_option">옵션</th>
		</tr>
		<% if(reviewList.size()==0){ %>
			<tr>
				<td colspan="6">등록된 공지사항이 없습니다.</td>
			</tr>
		<% } else {%>
			<% for(ReviewDTO review : reviewList) {%>
			<tr class="reviewRow">
				<td class="review_no">
					<%=count%>
				</td>
				<td class="review_item"><%=review.getProductId()%></td>
				<td class="review_title"><%= review.getReviewSubject() %></td>
				<td class="review_content"><%= review.getReviewContext() %></td>
				<td class="review_writer"><%=MemberDAO.getDAO().selectIdMember(review.getMemberId()).getName()%></td>
				<td class="review_date">
				<% if(currentDate.equals(review.getReviewDate().substring(0, 10))) { %>
					<%=review.getReviewDate().substring(10)%>
				<% } else { %>
					<%=currentDate%>
				<% } %>
				</td>
				<td class="review_option">
					<button type="button" id="review_remove" value="<%=review.getReviewNo()%>">삭제</button>
				</td>
				<% count--; %>
			</tr>
			<% } %>
		<% } %>
	</table>	
</form>
<script type="text/javascript">
$("#review_remove").click(function() {
	if(confirm("정말 삭제하시겠습니까?")) {
		location.href = "<%=request.getContextPath()%>/index.jsp?workgroup=mypage&work=review_remove_action&reviewNo=" + $(this).val() + "&mamager=y";
	} else {
		return false;
	}
});
</script>