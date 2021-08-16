<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/security/login_check.jspf" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- 페이지 이동 링크 - MY PAGE --%>
<%@ include file="/mypage/mypage_transition.jspf" %>
<link type="text/css" rel="stylesheet" href="css/board.css">
<%
	String memberName = loginMember.getName();
%>
<div class="content">
    <div class="mypage_cont">
        <div class="mypage_lately_info">
            <div class="mypage_lately_info_cont">
				<div class="content">                
					<div class="board_zone_sec" style="padding-top:30px;width:600px;margin:auto;">
					    <div class="board_zone_cont">
					        <form name="reviewForm" id="reviewForm" action="<%=request.getContextPath() %>/index.jsp?workgroup=mypage&work=review_write_action" method="post" class="reviewForm">
					            <div class="board_zone_write">
					                <div class="board_write_box">
					                	<input type="hidden" name="productId" id="productId">
					                    <table class="board_write_table">
					                        <colgroup>
					                            <col style="width:144px" />
												<col style="width:*" />
					                        </colgroup>
					                        <tbody>
					                        <tr>
					                            <th scope="row">작성자</th>
					                            <td><%=memberName %></td>
					                        </tr>
					                        <tr>
					                            <th scope="row">주문 내역</th>
					                            <td>
					                                <div class="board_goods_select">
					                                    <span class="js_selected_info_text" id="order">선택된 주문이 없습니다.</span>
					                                    <a href="#" title="찾아보기" class="btn_goods_select btn_open_layer" onclick="openPop()"> 주문 내역 </a>
					                                    <div id="selectOrderBox">
					                                    </div>
					                                </div>
					                            </td>
					                        </tr>
					                        <tr>
					                            <th scope="row">제목</th>
					                            <td><input type="text" name="reviewSubject" value=""></td>
					                        </tr>
					                        <tr>
					                            <th scope="row">본문</th>
					                            <td class="write_editor">
					                                <textarea name="reviewContext" cols="30" rows="10"></textarea>
					                            </td>
					                        </tr>
					                        </tbody>
					                    </table>
					                </div>
					            </div>
					            <div class="btn_center_box">
					                <button type="button" class="btn_before" onclick="javascript:history.back()"><strong>이전</strong></button>
					                <button type="submit" class="btn_write_ok"><strong>저장</strong></button>
					            </div>
					        </form>
					    </div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
function openPop(){
    var popup = window.open('<%=request.getContextPath()%>/mypage/review_order_list.jsp?memberId=<%=loginMember.getId()%>', '주문목록선택', 'width=880px,height=500px,scrollbars=yes');
}
</script>