<%@page import="web.data.dao.NoticeDAO"%>
<%@page import="web.data.dto.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<NoticeDTO> noticeList=NoticeDAO.getDao().selectAllNotice();
	int count=noticeList.size();
%>

<link type="text/css" rel="stylesheet" href="css/board.css">

<style type="text/css">
.content {margin-top: 80px;}
</style>
 
<div class="content">
	<div class="side_cont">

<div class="sub_menu_box">
    <h2>CS CENTER</h2>
    <ul class="sub_menu">
        <li><a href="<%= request.getContextPath() %>/index.jsp?workgroup=faq&work=faq_list">FAQ</a></li>
        <li ><a href="<%= request.getContextPath() %>/index.jsp?workgroup=notice&work=notice_list" class="active">공지사항</a></li>
    </ul>
</div>
<!-- //sub_menu_box -->

<div class="board_zone_sec">
	<div class="board_zone_cont" style="padding-top:19px;">
		<div class="board_zone_list" align="center">
			<table class="board_list_table" style="width:100%">
				<colgroup>
					<col style="width:*;">
					<col style="width:144px"><!-- 날짜 -->
				</colgroup>
				<thead>
				<tr>
					<th>제목</th>
					<th>등록일</th>

				</tr>
				</thead>
				<tbody>
				<% for(NoticeDTO notice:noticeList) {%>
				
				
				<tr data-sno="25" data-auth="y" style="height:10px">
					<td class="board_tit">
		
						<a href="<%= request.getContextPath() %>/index.jsp?workgroup=notice&work=notice<%=count%>">
							<strong><%= notice.getnTitle() %></strong>
						</a>
					</td>
					<td> <%= notice.getnDate().substring(0, 10).replace("-", ".") %> </td>
				</tr>
					<% count--; %>
				<% } %>
				
				

				</tbody>
			</table>


			<div class="pagination"><ul><li class="on"><span>1</span></li></ul></div>

			<!-- //pagination -->

			<!-- //board_search_box -->
		</div>
		<!-- //board_zone_list -->
	</div>
	<!-- //board_zone_cont -->
</div>

	</div>
</div>