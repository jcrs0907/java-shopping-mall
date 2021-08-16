<%@page import="java.util.List"%>
<%@page import="web.data.dao.FaqDAO"%>
<%@page import="web.data.dto.FaqDTO"%>   
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
//filterType 파라미터가 없을 경우 전체 목록 표시
String filterType;
if(request.getParameter("filterType") == null){
	filterType = "all";
}else{
	filterType	= request.getParameter("filterType");
}

List<FaqDTO> typeList = FaqDAO.getDAO().selectTypeFaq();
List<FaqDTO> faqList = FaqDAO.getDAO().selectFaq(filterType);


//faq tab 이름
String tabName = null;
%>
<style>
.container{width:1000px; margin:10px auto;}
.select-box{margin:20px 0;}
.select-box select{display: block; margin-left: auto;}
td, th {
    border: 1px solid black;
    text-align: left;
    height:27px;
    overflow:hidden;
    }

input[name="changeTitle"],
textarea[name="changeContent"]{
width:100%
}
.container .btn-secondary,
.container .btn-primary{
margin:8px auto;
display:block;
}
</style>



<div class="container">
<h3>FAQ 목록</h3>
<% if(faqList.isEmpty()) { %>
	<p>faqList가 없습니다 </p>
<%}else{ %>
	<div class="select-box">
	
	<select name="typeSelect">
			<option value="all" <%if(filterType == null){%>selected<%}%>>전체</option>
			
			<% for(int i=0; i<typeList.size(); i++) {
				
				String type = typeList.get(i).getfType();
				if(type.equals("member")){
					tabName="회원가입/정보수정";
				}else if(type.equals("change")){
					tabName="교환/반품/환불";
				}else if(type.equals("product")){
					tabName="제품/사용순서";
				}else if(type.equals("delivery")){
					tabName="결제/배송";
				}
			%>
				<option value="<%=typeList.get(i).getfType()%>" 
				<%if(filterType != null && filterType.equals(typeList.get(i).getfType())){%>
				selected
				<%}%>>
				<%=tabName%>
				</option>
			<%} %> 
		</select>
		</div>
	<table class="faq-table">
		<colgroup>
			<col style="width:100px"> 
			<col style="width:100px">					
			<col style="width:200px">  
			<col style="width:500px"> 
			<col style="width:100px"> 
		</colgroup>
		<thead>
			<tr>
				<th>FAQ 번호</th>
				<th>FAQ 분류</th>
				<th>제목</th>
				<th>내용</th>
				<th>수정 / 삭제</th>
			</tr>
		</thead>
		<tbody>
			
	
		<% for(FaqDTO faq:faqList) { %>
				<tr>
					<td><%=faq.getfNo() %></td>
					<td>
						<%=faq.getfType() %>
					</td>
					<td>
						<%=faq.getfTitle() %>
					</td>
					<td>
						<%=faq.getfContent().replace("\n", "<br>") %>
					</td>
					<td>
					<button type="button" name="deleteFaqBtn" class="btn btn-secondary" value="<%=faq.getfNo() %>">
						삭제
					</button>
					<button type="button" name="editFaqBtn" class="btn btn-primary" data-toggle="modal" data-target="editFaqModal"
					data-faq-no="<%=faq.getfNo() %>"
					data-faq-type="<%=faq.getfType() %>"
					data-faq-title="<%=faq.getfTitle() %>"
					data-faq-content="<%=faq.getfContent() %>">
					  수정
					</button>
					</td>
				</tr>			
		<%} %>
			</tbody>
	</table>	
<%}%>
</div>

<!--faq edit modal  -->
<form class="modal fade" id="editFaqModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"
method="post" action="<%=request.getContextPath()%>/admin/admin_page.jsp?group=faq&work=faq_modify_action">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">FAQ 내용 수정</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" >
      		<input type="hidden" name="changeNo" value="">
      		<h5>FAQ 분류</h5>
      		<select name="changeType">
				<option value="product">제품/사용순서</option>
				<option value="member">회원가입/정보수정</option>
				<option value="delivery">결제/배송</option>
				<option value="change">교환/반품/환불</option>
			</select>
			<br><br>
        	<h5>
        	 제목
        	</h5>
        	<input type="text" name="changeTitle" placeholder="제목을 입력해 주세요" value="">
        	<br><br>
        	<h5>
        	내용
        	</h5>
			<textarea name="changeContent" rows="7" cols="60" placeholder="내용을 입력해 주세요">
			</textarea>
      </div>
      <div class="modal-footer">
        <button type="button" name="resetEditBtn" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="submit" name="saveEditBtn" class="btn btn-primary">수정</button>
      </div>
    </div>
  </div>
</form>
<!--//faq edit modal-->

<script type="text/javascript">
$(function(){
	//faq type 변경 
	$("select[name=typeSelect]").on('change',function(){
		let checkedItem = $(this).val();
		
		if(checkedItem){
			location.href='<%=request.getContextPath()%>/admin/admin_page.jsp?group=faq&work=faq_manager&filterType='+checkedItem;
		}
		
	});
	
	//삭제
	$("button[name=deleteFaqBtn]").on('click',function(){
		let fNo= $(this).val();
		
		if(window.confirm("선택하신 FAQ 목록을 삭제하시겠습니까?")) {
			location.href='<%=request.getContextPath()%>/admin/admin_page.jsp?group=faq&work=faq_remove_action&fNo='+fNo+'&filterType=<%=filterType%>+';
		}
	});
	
	//변경
	$("button[name=editFaqBtn]").on('click',function(){
		let editForm = $("#editFaqModal");
		let no = $(this).data('faq-no');
		let type = $(this).data('faq-type');
		let title = $(this).data('faq-title');
		let content = $(this).data('faq-content');
		
		editForm.find('input[name=changeNo]').val(no);
		editForm.find('select[name=changeType] option[value='+type+']').prop('selected',true);
		editForm.find('input[name=changeTitle]').val(title);
		editForm.find('textarea[name=changeContent]').html(content);
		
		editForm.appendTo("body");
		editForm.modal('show');
	}); 	
	
});
</script>
