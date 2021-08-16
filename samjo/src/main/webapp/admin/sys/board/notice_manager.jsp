<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="web.data.dao.NoticeDAO"%>
<%@page import="web.data.dto.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- admin_page.jsp에 위치한 주석을 참고해주세요. --%>

<%
	List<NoticeDTO> noticeList=NoticeDAO.getDao().selectAllNotice();

	int count=NoticeDAO.getDao().selectNoticeCount();
	
	String currentDate=new SimpleDateFormat("yyyy-MM-dd").format(new Date());

	
%>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style type="text/css">
.notice-T {
	margin: 0 auto;
	border: 1px solid black;
	border-collapse: collapse;
	margin-top: 60px;
	margin-top: 60px;
}

.notice-T th, .notice-T td {
	border: 1px solid black;
	padding: 3px;
	text-align: center;
	font-size: 12px;
}

.notice-T th {
	background: black;
	color: white;
}

.noticeRow {
	background: white;
	height: 30px;
}

.notice-T .noticeRow:hover {
	background-color: #f5f5f5;
}


.notice_no { width: 70px; }
.notice_admin { width: 80px; }
.notice_title { width: 250px; }
.notice_content {
	width: 400px;
	text-overflow: ellipsis;
}
.notice_date { width: 140px; }
.notice_option { width: 130px; }

#btn {
	text-align: right;
	margin-right: 80px;
}
</style>

<div class="noticeHeader">
	<p>Board > <span style="font-weight: 600;">공지사항</span></p>
</div>
<div id="btn">
		<button type="button" onclick="location.href='<%=request.getContextPath()%>/admin/admin_page.jsp?group=board&work=notice_write';">
			글쓰기
		</button>
	</div>

<form id="noticeForm">
	<table class="notice-T">
		<tr>
			<th class="notice_no">no</th>
			<th class="notice_admin">관리자</th>
			<th class="notice_title">제목</th>
			<th class="notice_content">내용</th>
			<th class="notice_date">작성일</th>
			<th class="notice_option">옵션</th>
		</tr>
		<% if(noticeList.size()==0){ %>
			<tr>
				<td colspan="6">등록된 공지사항이 없습니다.</td>
			</tr>
		<% } else {%>
			<% for(NoticeDTO notice  : noticeList) {%>
			<tr class="noticeRow">
				<td class="notice_no">
					<%=count%>
				</td>
				<td class="notice_admin">관리자</td>
				<td class="notice_title"><%= notice.getnTitle() %></td>
				<td class="notice_content"><%= notice.getnContent() %></td>
				<td class="notice_date">
				<% if(currentDate.equals(notice.getnDate().substring(0, 10))) { %>
					<%=notice.getnDate().substring(10)%>
				<% } else { %>
					<%=currentDate%>
				<% } %>
				</td>
				<td class="notice_option">
					<!-- <button type="button" id="modifyBtn">변경</button> -->
					<button type="button" id="removeBtn" value="<%=notice.getnNum()%>">삭제</button>
				</td>	
				<% count--; %>
			</tr>
			<% } %>
		<% } %>
	</table>	
</form>

<script type="text/javascript">
$("#modifyBtn").click(function() {
	location.href="<%=request.getContextPath()%>/admin/admin_page.jsp?group=board&work=notice_modify";
});

$("#removeBtn").click(function() {
	if(confirm("제품정보를 삭제 하겠습니까?")) {
		location.href="<%=request.getContextPath()%>/admin/admin_page.jsp?group=board&work=notice_remove_action&nNum="+$(this).val();
	}else {
		return false;
	}
});
</script>