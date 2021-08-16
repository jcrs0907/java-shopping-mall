<%@page import="web.data.dao.MemberDAO"%>
<%@page import="java.util.List"%>
<%@page import="web.data.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	// 회원목록 저장
	List<MemberDTO> memberList=MemberDAO.getDAO().selectAllMemberList();

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
	<p>Member > <span style="font-weight: 600;">회원 관리</span></p>
</div>
<form name="memberForm" id="memberForm">
	<table class="member-T">
		<tr>
			<th><input type="checkbox" id="allCheck"></th>
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
		<% for(MemberDTO member : memberList) {%>
		<tr class="memberRow">
			<td class="member_check">
			<% if(member.getStatus()==9){ %>
				관리자
			<% } else { %>
				<input type="checkbox" name="checkId" value="<%= member.getId() %>" class="check">
			<% } %>
			</td>
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
				<select class="status" name="<%=member.getId()%>">
					<option value="1" <% if(member.getStatus()==1) {%> selected <%} %>>일반회원</option>
					<option value="9" <% if(member.getStatus()==9) {%> selected <%} %>>관리자</option>
				</select>
			</td>
		</tr>
		<% } %>
	</table>
	
	<div class="actionCont">
		<button type="button" id="removeBtn">탈퇴처리</button>
	</div>
	<div id="message" style="color: red;"></div>
</form>

<script type="text/javascript">

$("#allCheck").change(function(){
	if($(this).is(":checked")){
		$(".check").prop("checked", true);
	} else {
		$(".check").prop("checked", false);
	}
});

$("#removeBtn").click(function() {
	if($(".check").filter(":checked").length==0){
		$("#message").text("선택된 회원이 하나도 없습니다.");
		return;
	}
	var result=confirm("선택된 회원을 탈퇴 처리하시겠습니까?");
	if(result){
		$("#memberForm").attr("method", "post");
		$("#memberForm").attr("action", "<%=request.getContextPath()%>/admin/admin_page.jsp?group=member&work=member_remove_action");
		$("#memberForm").submit();
	} else {
		alert("선택된 회원의 탈퇴처리 작업이 취소되었습니다.");		
	}

});

$(".status").change(function(){
	// 이벤트가 발생된 엘리먼트의 속성값을 반환받아 저장
	var id=$(this).attr("name"); // 식별자(아이디)를 반환받아 저장
	var status=$(this).val(); // 변경값(상태값)을 반환받아 저장
	
	var result=confirm("선택 회원의 권한을 변경하시겠습니까?");
	
	if(result){
		location.href="<%=request.getContextPath()%>/admin/admin_page.jsp?group=member&work=member_status_action&id="+id+"&status="+status;
	}
});
</script>