<%@page import="web.data.dao.FaqDAO"%>
<%@page import="web.data.dto.FaqDTO"%>
<%@page import="web.data.dao.NoticeDAO"%>
<%@page import="web.data.dao.ReviewDAO"%>
<%@page import="web.data.dto.ReviewDTO"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">


.t-cont {
	display: inline-block;
	margin-top: 20px;
	width: 280px;
	padding: 30px;
	background-color: white;
}

.text-cont {
	display: inline-block;
	width: 500px;
	padding: 20px;
	vertical-align: 80px;
	margin-left: 80px;
}

.admin-table td{
	text-align: right;
}

#overview{
	padding-right: 60px;
	padding-bottom: 10px;
	border-bottom: 1px solid black; 
}

.desc {
	text-align: left;
}

th{width: 90px;}
td{width: 120px;}

.1st-row th, .1st-row td{padding-top: 10px;}

</style>

<div class="i-main-body">
	<h4>관리자 페이지에 오신 것을 환영합니다.</h4>
	<hr>
	<div>
		<div class="t-cont">
			<table class="admin-table">
				<tr>
					<td id="overview" colspan="2">Overview</td>
				</tr>
				<tr class="adminRow 1st-row">
					<th>회원</th><td><%= MemberDAO.getDAO().selectAllMemberList().size() %></td>
				</tr>
				<tr class="adminRow">
					<th>상품</th><td><%= ProductDAO.getDao().selectProductCount(null)%></td>
				</tr>
				<tr class="adminRow">
					<th>리뷰</th><td><%=ReviewDAO.getDAO().selectAllReview().size()%></td>
				</tr>
				<tr class="adminRow">
					<th>공지사항</th><td><%=NoticeDAO.getDao().selectNoticeCount()%></td>
				</tr>
				<tr class="adminRow">
					<th>FAQ</th><td><%=FaqDAO.getDAO().selectFaq("all").size()%></td>
				</tr>
			</table>
		</div>
		<div class="text-cont">
			<div style="margin-bottom: 5px; margin-left: 7px;">- 3조 -</div>
			<div>꽉자바 - 문재욱, 정채린, 진주현, 주해성</div>
		</div>
	</div>
</div>
