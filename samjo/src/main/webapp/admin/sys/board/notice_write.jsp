<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
table {
	margin: 0 auto;
}

th {
	width: 70px;
	font-weight: normal;
}

td {
	text-align: left;
}
</style>
<h3>공지사항작성</h3>

<form action="<%=request.getContextPath()%>/admin/admin_page.jsp?group=board&work=notice_write_action"
	method="post" id="noticeForm">
	<table>
		<!-- <tr>
			<th>번호</th>
			<td>
				<input type="text" name="num" id="num" size="10">
			</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td>
				<input type="date" name="date" id="date" >
			</td>
		</tr> -->
		<tr>
			<th>제목</th>
			<td>
				<input type="text" name="title" id="title" size="30">
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				<textarea rows="10" cols="150" name="content" id="content"></textarea>
			</td>
		</tr>
		<tr>
			<th colspan="2">
				<button type="submit">저장</button>
				<button type="reset" id="resetBtn">다시쓰기</button>
			</th>
		</tr>
		
	</table>	
</form>
<div id="message" style="color: red;"></div>
<script type="text/javascript">
$("#title").focus();

$("#noticeForm").submit(function() {
	if($("#title").val()=="") {
		$("#message").text("제목을 입력해 주세요.");
		$("#title").focus();
		return false;
	}
	
	if($("#notice_content").val()=="") {
		$("#message").text("내용을 입력해 주세요.");
		$("#notice_content").focus();
		return false;
	}
});

$("#resetBtn").click(function() {
	$("#title").focus();
	$("#message").text("");
});
</script>