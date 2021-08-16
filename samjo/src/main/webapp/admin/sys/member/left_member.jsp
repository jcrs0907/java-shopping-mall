<%@page import="web.data.dao.MemberDAO"%>
<%@page import="web.data.dto.MemberDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 회원목록 저장
	List<MemberDTO> memberList=MemberDAO.getDAO().selectLeftMember();
	int count=memberList.size(); 
%>


<style type="text/css">
.member-T {
	margin: 0 auto;
	border: 1px solid black;
	border-collapse: collapse;
	margin-top: 50px;
}

.member-T th, .member-T td {
	border: 1px solid black;
	padding: 3px;
	text-align: center;
	font-size: 12px;
}

.member-T th {
	background: black;
	color: white;
}

.memberRow {
	background: white;
}

.member-T .memberRow:hover {
	background-color: #f5f5f5;
}


.member_check { width: 80px; }
.member_id { width: 80px; }
.member_name { width: 80px; }
.member_email { width: 140px; }
.member_mobile { width: 130px; }
.member_address { width: 250px; }
.member_birthday {width:100px;}
.member_join { width: 150px; }
.member_login { width: 150px; }
.member_status { width: 80px; }	


.actionCont {
	text-align: right;
	padding-top: 15px;
	padding-right: 5%;
}

#removeBtn {
	background: white;
	font-size: 12px;
	width: 110px;
	height: 30px;
}


#message {text-align: center;}
	
</style>

<div class="memberHeader">
	<p>Member > <span style="font-weight: 600;">탈퇴 회원정보</span></p>
</div>
<form name="memberForm" id="memberForm">
	<table class="member-T">
		<tr>
			<th>no</th>
			<th>아이디</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>생년월일</th>
			<th>가입날짜</th>
			<th>로그인날짜</th>
			<th>상태</th>
		</tr>
		<% if(memberList.size()==0) {%>
		<tr>
			<td colspan="11">삭제처리된 회원이 존재하지 않습니다.</td>
		</tr>	
		<% } else { %>
			<% for(MemberDTO member : memberList) {%>
			<tr class="memberRow">
				<td class="member_check"><%= count %></td>
				<td class="member_id"><%= member.getId() %></td>
				<td class="member_name"><%= member.getName() %></td>
				<td class="member_email"><%= member.getEmail() %></td>
				<td class="member_mobile">
					<%= member.getMobile().substring(0, 3) %>-<%= member.getMobile().substring(3, 7) %>-<%= member.getMobile().substring(7) %>
				</td>
				<td class="member_address">
					<% if(member.getZipcode()!=null || member.getAddress1()!=null || member.getAddress2()!=null) {%>
						[<%= member.getZipcode() %>]<%= member.getAddress1() %> <%= member.getAddress2() %>
					<% } else { %>
						[&nbsp;등록된 주소정보가 없습니다.&nbsp;]
					<% } %>
				</td>
				<td class="member_birthday">&nbsp;<%=member.getBirthday().substring(0, 10)%>&nbsp;</td>
				<td class="member_join"><%= member.getJoinDate() %></td>
				<td class="member_login">
					<% if(member.getLastLogin()!=null){ %>
						<%= member.getLastLogin() %>
					<% } %>
				</td>
				<td class="member_status">
					<% if(member.getStatus()==-1){ %>
						탈퇴
					<% } %>
				</td>
			</tr>
			<% } %>
		<% } %>
	</table>
	
</form>