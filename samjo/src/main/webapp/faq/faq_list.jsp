<%@page import="java.util.List"%>
<%@page import="web.data.dao.FaqDAO"%>
<%@page import="web.data.dto.FaqDTO"%>   
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
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

<style type="text/css">
.content {margin-top: 80px;}
</style>

  <div class="content">
<div class="side_cont">
<div class="sub_menu_box">
    <h2>CS CENTER</h2>
    <ul class="sub_menu">
        <li><a href="<%= request.getContextPath() %>/index.jsp?workgroup=faq&work=faq_list" class="active">FAQ</a></li>
        <li><a href="<%= request.getContextPath() %>/index.jsp?workgroup=notice&work=notice_list">공지사항</a></li>
    </ul>
</div>
<!-- //sub_menu_box -->
<div class="info_box" style="display:none">
    <dl>
        <dt>고객상담센터</dt>
        <dd>
            <strong class="info_num">02-6010-1177</strong><br>
            <a href="mailto:help@demar3.co.kr" class="info_mail_link">help@demar3.co.kr</a>
            <p>평일 09:00 ~ 18:00<br>
				점심시간 12:10 ~ 13:10<br>
				토, 일 공휴일 휴무</p>
        </dd>
    </dl>
    <dl>
        <dt>은행계좌 안내</dt>
        <dd>
            <strong class="info_num">083-086141-04-034</strong>
            <p>
                <em>기업은행</em> <br>
                <span>[예금주 : (주)자연물질연구소]</span>
            </p>

        </dd>
    </dl>
</div>
<!-- //info_box -->
<!-- <script type="text/javascript">
    // 메뉴 선택
    $('.sub_menu li > a[href*="' + document.location.pathname + '"]').addClass('active');
</script> -->
</div>
<div class="content">
		<div class="board_zone_sec">
			<div class="board_zone_cont">
				<div class="board_zone_list ">
					<div class="board_list_faq">
						<!-- faq title list -->
						<div class="board_hot_list">
							<ul>
								<li class="<%if(filterType.equals("all")){%>on<%}%>"><a href="<%= request.getContextPath() %>/index.jsp?workgroup=faq&work=faq_list&filterType=all">전체</a></li>
								<li class="<%if(filterType.equals("product")){%>on<%}%>"><a href="<%= request.getContextPath() %>/index.jsp?workgroup=faq&work=faq_list&filterType=product">제품/사용순서</a></li>
								<li class="<%if(filterType.equals("member")){%>on<%}%>"><a href="<%= request.getContextPath() %>/index.jsp?workgroup=faq&work=faq_list&filterType=member">회원가입/정보수정</a></li>
								<li class="<%if(filterType.equals("delivery")){%>on<%}%>"><a href="<%= request.getContextPath() %>/index.jsp?workgroup=faq&work=faq_list&filterType=delivery">결제/배송</a></li>
								<li class="<%if(filterType.equals("change")){%>on<%}%>"><a href="<%= request.getContextPath() %>/index.jsp?workgroup=faq&work=faq_list&filterType=change">교환/반품/환불</a></li>
							</ul>
						</div>
						<% if(faqList.isEmpty()) { %>
							<p>FAQ가 없습니다 </p>
						<%}else{ %>
						<table id="faqList" class="board_list_table">
					
							<tbody>
							<% for(FaqDTO faq:faqList) { %>
									<tr class="toggle_faq" data-sno="<%=faq.getfNo() %>">
									<td class="board_tit">
										<span><%=faq.getfTitle() %></span>
									</td>
									</tr>
									<tr class="toggle_faq" style="display:none">
										<td colspan="3" class="board_faq">
											
											<div class="board_faq_cont" >
												<%=faq.getfContent().replace("\n", "<br>") %>
											</div>
										</td>
									</tr>		
							<%} %>
							</tbody>
						</table>
						<%} %>
						<!-- faq title list -->
						
					</div>
					<!-- //board_list_faq -->
					
				</div>
				<!-- //board_zone_list -->
			</div>
			<!-- //board_zone_cont -->
		</div>
		<!-- //board_zone_sec -->
	</div>
	</div>
	
	<script type="text/javascript">
		$('.board_tit').on('click',function(){
			let target = $(this).closest('.toggle_faq').next('.toggle_faq');
			target.toggle();
		});
	</script>