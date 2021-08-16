<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 비정상적인 접근 방지
	if(request.getParameter("status")==null || Integer.parseInt(request.getParameter("status"))!=-1){
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=error&work=error400'");
		out.println("</script>");
	}

	String message=(String)session.getAttribute("message");
	if(message==null){
		message="";		
	} else {
		session.removeAttribute("message");
	}
%>

<style type="text/css">
#container {margin-top: 170px;}
.checkbox {
	vertical-align: -3px !important;
}
</style>


<div id="wrap">
<div class="gnb_allmenu_wrap">
<!-- //header -->
	</div>
	<!-- //header_warp -->
	
	<div id="container">
		<div id="contents">
		<!-- 본문 시작 -->

			<!-- //location_wrap -->

			<div class="sub_content">

				<!-- //side_cont -->

<div class="content">
    <div class="mypage_cont">
        <form id="formHackOut" name="formHackOut" action="<%=request.getContextPath()%>/index.jsp?workgroup=mypage&work=leave_member_action" method="post">
            <input type="hidden" name="mode" value="hackOut"/>
            <input type="hidden" name="snsType" value=""/>
           
            <div class="hack_out">
				<h3>그동안 디마르3와 함께 해주셔서<br />진심으로 감사합니다.</h3>
				<p class="copy">불편하셨던 점을 남겨주시면 더욱 좋은 모습으로 찾아 뵙기 위해 노력하겠습니다.</p>
				<h5>탈퇴사유</h5>
				<div class="box">
					<div class="box_cont">
						<ul class="hack_out_list">
							<li>
								<input type="checkbox" id="reasonCd01003001" name="reasonCd[]" class="checkbox" value="01003001">
								<label for="reasonCd01003001" class="check-s">고객서비스(상담,포장 등) 불만</label>
							</li>
							<li>
								<input type="checkbox" id="reasonCd01003002" name="reasonCd[]" class="checkbox" value="01003002">
								<label for="reasonCd01003002" class="check-s">배송불만</label>
							</li>
							<li>
								<input type="checkbox" id="reasonCd01003003" name="reasonCd[]" class="checkbox" value="01003003">
								<label for="reasonCd01003003" class="check-s">교환/환불/반품 불만</label>
							</li>
							<li>
								<input type="checkbox" id="reasonCd01003004" name="reasonCd[]" class="checkbox" value="01003004">
								<label for="reasonCd01003004" class="check-s">방문 빈도가 낮음</label>
							</li>
							<li>
								<input type="checkbox" id="reasonCd01003005" name="reasonCd[]" class="checkbox" value="01003005">
								<label for="reasonCd01003005" class="check-s">상품가격 불만</label>
							</li>
							<li>
								<input type="checkbox" id="reasonCd01003006" name="reasonCd[]" class="checkbox" value="01003006">
								<label for="reasonCd01003006" class="check-s">개인 정보유출 우려</label>
							</li>
							<li>
								<input type="checkbox" id="reasonCd01003007" name="reasonCd[]" class="checkbox" value="01003007">
								<label for="reasonCd01003007" class="check-s">쇼핑몰의 신뢰도 불만</label>
							</li>
						</ul>
					</div>
				</div>
				<h5 style="margin-top:25px;">남기실 말씀</h5>
				<div class="box">
					<textarea cols="30" rows="5"  name="reasonDesc"></textarea>
				</div>
				<div class="notice01">
					<ol>
						<li>- 회원탈퇴를 하시면, 보유적립금 및 쿠폰은 자동소멸 됩니다.</li>
						<li>- 회원탈퇴 후에는 이벤트를 포함한 모든 내역이 삭제되므로 조회는 불가능합니다.</li>
						<li>- 탈퇴 후 한달 간 동일 아이디로 재가입이 불가능합니다.</li>
						<li>- 현재 고객님의 반품처리 요청사항이나 고객서비스가 완료되지 않은 경우, 서비스 처리 완료 후 탈퇴 가능합니다. </li>
						<li>- 배송요청/배송 중/반품요청/송금예정 등의 거래가 진행중인 경우, 진행 중인 거래를 마무리 해 주시기 바랍니다.</li>
					</ol>
				</div>
				<div class="box2">
					<h5>비밀번호 확인</h5>
					<input type="password" name="memPw">
					<p style="color: red;"><%=message%></p>
				</div>

            <div class="btn_center_box">
                <a href="<%=request.getContextPath()%>/index.jsp?workgroup=mypage&work=mypage_info" class="btn_member_cancel btn_prev">취소</a>
                <button type="submit" class="btn_comfirm">탈퇴하기</button>
            </div>
            </div>
            <!-- //hack_out -->

        </form>
    </div>
    <!-- //mypage_cont -->

</div>
<!-- //content -->

<script type="text/javascript">
	

</script>
			</div>
			<!-- //sub_content -->
		</div>
		<!-- //본문 끝 contents -->
	</div>
	<!-- //container -->

</div>
<!-- //wrap -->
