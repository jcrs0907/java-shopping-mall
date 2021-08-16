<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/security/login_check.jspf" %>

<style type="text/css">
#container {margin-top: 80px;}

.prior_wrong2{
	margin-bottom: 5px !important;
	border: 1px solid #fd2727 !important;
}

.adverCont {
	margin: 12px 0 12px 0;
}

.adverBox {
	vertical-align: -3px !important;
	width: 16px !important;
	height: 16px !important;
}

.error {
	color: red;
	margin: 0 0 -16px 0;
    position: relative;
    padding-left: 7px;
    min-height: 16px;
    line-height: 21px;
    display: none;
}

.numberInput {
	color: red;
	margin: 0 0 -16px 0;
    position: relative;
    padding-left: 7px;
    min-height: 16px;
    line-height: 21px;
    display: none;
}

#cellPhone:focus {
	border-color: red;
}

#birthDt:focus {
	border-color: red;
}

.btn_comfirm {margin-bottom: 20px;}

#zipCode {
	width: 100px;
	margin-right: 5px;
}

#zipBtn {
	border: 1px solid black;
	width: 150px;
	height: 40px;
}

</style>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

function showNewPw(){
	if($("#memberNewPw").css("display")=="none"){
		$("#memberNewPw").css("display", "block");
	} else if($("#memberNewPw").css("display")=="block") {
		$("#memberNewPw").css("display", "none");
	}
}

function closeNewWindow(){
	$(".layer_area").css("display", "none");
}

function forNewPw(){
	if($(".layer_area").css("display")=="none"){
		$(".layer_area").css("display", "block");
	} else if($(".layer_area").css("display")=="block") {
		$(".layer_area").css("display", "none");
	}
}

function phoneMsgShow(){
	$("#phoneRegMsg").css("display", "block");
}

function birthMsgShow(){
	$("#birthDtRegMsg").css("display", "block");
}

</script>

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

				<div class="side_cont">
				
				
<%-- 페이지 이동 링크 - MY PAGE --%>
<%@ include file="/mypage/mypage_transition.jspf" %>


				</div>
				<!-- //side_cont -->

<div class="content">
	<div class="mypage_cont">

		<div class="my_page">


			<div class="join_base_wrap">

				<div class="member_cont">
				
<form id="infoChange" name="formJoin" action="<%=request.getContextPath()%>/index.jsp?workgroup=mypage&work=mypage_modify" method="post">

						<!-- 회원가입/정보 기본정보 --><div class="base_info_box">
	<div class="base_info_sec">
		<table border="0" cellpadding="0" cellspacing="0">
			<colgroup>
				<col style="width:156px;">
				<col style="width:*;">
			</colgroup>
			<tbody>
			<tr>
				<th><span class="important">아이디</span></th>
				<td>
					<input type="hidden" name="memId" value="<%=loginMember.getId()%>"/>
					<%=loginMember.getId()%>
				</td>

			</tr>
			<tr class="">
				<th style="vertical-align:top">비밀번호</th>
				<td class="member_password">
					<div class="btn_common_box">
						<%-- <button type="button" onclick="showNewPw();" class="btn_gray_mid3">비밀번호 변경</button>
						<button type="button" onclick="showNewPw();" class="btn_gray_mid2">비밀번호 안내</button> --%>
						<a href="javascript:void(0);" onclick="showNewPw();" class="btn_gray_mid3">비밀번호 변경</a>
						<a href="javascript:void(0);" onclick="forNewPw();" class="btn_gray_mid2">비밀번호안내</a>
					</div>

					<div id="lyMemberPw" class="layer_area" style="display:none;">
						<div class="ly_wrap pw_advice_layer">
							<div class="ly_tit">
								<strong>비밀번호안내</strong>
							</div>
							<div class="ly_cont">
								<div class="pw_advice_list">
									<ul>
										<li>영문대소문자는 구분이 되며, 한가지 문자로만 입력은 위험합니다.</li>
										<li><strong>사용가능 특수문자 :</strong> <strong class="fc_red">!@#$%^&amp;*()-=,.?/”’~;[]{}</strong></li>
										<li>ID/주민번호/생일/전화번호 등의 개인정보와 통상 사용 순서대로의 3자 이상 연속 사용은 피해주세요.
											<br/>비밀번호는 주기적으로 바꾸어 사용하시는 것이 안전합니다.</li>
									</ul>
								</div>
							</div>
							<!-- //ly_cont -->
							<a href="javascript:closeNewWindow();" class="ly_close"><img src="https://www.demar3.com/data/skin/front/mime/img/common/layer/btn_layer_close.png" alt="닫기"></a>
						</div>
						<!-- //ly_wrap -->
					</div>
					<!-- //layer_area -->

					<div id="memberNewPw" class="member_pw_change" style="display:none;">
						<dl class="">
							<dt>현재 비밀번호</dt>
							<dd>
								<div class="member_warning">
									<input type="password" id="currentPassword" name="oldMemPw"/>
								</div>
							</dd>
						</dl>
						<dl>
							<dt>새 비밀번호</dt>
							<dd>
								<div class="member_warning">
									<input type="password" id="newPassword" name="memPw" value=""/>
									<div id="passwdRegMsg" class="error">*비밀번호는 영문자,숫자,특수문자가 반드시 하나이상 포함된 6~20 범위의 문자로만 작성 가능합니다.</div>
								</div>
							</dd>
						</dl>
						<dl>
							<dt>새 비밀번호 확인</dt>
							<dd>
								<div class="member_warning">
									<input type="password" id="newPasswordCheck" name="memPwRe" value=""/>
									<div id="repasswdMatchMsg" class="error">*비밀번호와 비밀번호 확인이 서로 맞지 않습니다.</div>
								</div>
							</dd>
						</dl>
					</div>
					<!-- //member_pw_change -->
				</td>
			</tr>
			<tr>
				<th><span class="important">이름</span></th>
				<td>
					<div class="member_warning">
						<input type="text" id="inputName" name="memNm" data-pattern="gdEngKor" value="<%=loginMember.getName()%>" maxlength="30" >
						<div id="nameMsg" class="error">*필수항목입니다.</div>
					</div>
				</td>
			</tr>
			<tr>
				<th><span>이메일</span></th>
				<td class="member_email">
					<div class="member_warning">
						<input type="text" name="email" id="email" value="<%=loginMember.getEmail()%>">
						<div id="emailRegMsg" class="error">*입력한 이메일이 형식에 맞지 않습니다.</div>
					</div>
					<div class="member_warning js_email"></div>
				</td>
			</tr>
			<tr>
				<th><span >휴대폰번호</span></th>
				<td class="member_phone">
					<div class="member_warning">
						<input type="text" id="cellPhone" name="cellPhone" maxlength="12" onclick="phoneMsgShow();"
							placeholder="- 없이 입력하세요." data-pattern="gdNum" value="<%=loginMember.getMobile()%>" autocomplete="off">
						<div id="phoneRegMsg" class="numberInput">*- 없이 입력하세요  ->  예시) 01012341234</div>
					</div>
				</td>
			</tr>
			<tr>
				<th><span >생년월일</span></th>
                <td class="member_birthday">
					<div id="age_warning" class="member_warning">
						<input type="text" id="birthDt" name="birthDt" class="anniversary ages" maxlength="8" autocomplete="off" onclick="birthMsgShow();"
							value="<%=loginMember.getBirthday().replace("-", "").replace(" 00:00:00", "")%>" placeholder="예시) 20150903" data-pattern="gdNum" >
		               <div id="birthDtRegMsg" class="numberInput">*- 없이 입력하세요  -> 예시) 20210810</div>
					</div>
                </td>
			</tr>
			<tr>
				<th><span>우편번호</span></th>
				<td class="zipCode">
					<div>
						<input type="text" id="zipCode" name="zipCode" readonly="readonly" width="10" 
							<%if(loginMember.getZipcode()!=null){ %> value="<%= loginMember.getZipcode() %>" <% } %>>
						<button type="button" id="zipBtn" onclick="postOpen();">우편번호 찾기</button>
					</div>				
				</td>
			</tr>
			<tr>
				<th><span class="subAddress">주소</span></th>
				<td class="address1">
					<input type="text" id="address1" name="address1" readonly="readonly" placeholder="기본주소"
						<%if(loginMember.getAddress1()!=null){ %> value="<%= loginMember.getAddress1() %>" <% } %>>
				</td>
			</tr>
			<tr>
				<th><span class="subAddress"></span></th>
				<td class="address2">
					<input type="text" id="address2" name="address2" placeholder="상세주소"
						<%if(loginMember.getAddress2()!=null){ %> value="<%= loginMember.getAddress2() %>" <% } %>>
				</td>
			</tr>
			</tbody>
		</table>
	</div>
	<!-- //base_info_sec -->

	<div class="base_info_box" style="margin-top:25px;position:relative;">
		<h3>마케팅 수신동의 [선택]</h3>
		<table class="agree">
			<thead>
				<tr>
					<th>목 적</th>
					<th style="width:110px;">항 목</th>
					<th style="width:72px;">보유기간</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>사은/판촉행사 등 각종 이벤트, 행사 관련 정보안내 및 제반 마케팅 활동, 당사 및 제휴사 상품/서비스 안내 및 권유</td>
					<td>이메일, 휴대폰 번호, 생년월일</td>
					<td>마케팅 동의 철회시</td>
				</tr>
			</tbody>
		</table>
		<div class="base_info_sec">
			<div class="adverCont">
				<input type="checkbox" class="adverBox" id="maillingFl" name="maillingFl" value="y">
				<label for="maillingFl" class="check_s ">정보/이벤트 메일 수신에 동의합니다.</label>
			</div>
			<div class="adverCont">
				<input type="checkbox" class="adverBox" id="smsFl" name="smsFl" value="y">
				<label for="smsFl" class="check_s ">정보/이벤트 SMS 수신에 동의합니다.</label>
			</div>
		</div>
		<!-- //base_info_sec -->
	</div>



<!-- 회원가입/정보 부가정보 -->

						<iframe id="ifrmHpauth" name="ifrmHpauth" style="width:500px;height:500px;display:none;"></iframe>
						<div class="btn_center_box">
							<!-- button type="button" class="btn_member_cancel">취소</button -->
							<button type="submit" class="btn_comfirm js_btn_join">저장</button>
						</div>
					</form>	
					<div class="btn_center_box">
						<a href="<%=request.getContextPath()%>/index.jsp?workgroup=mypage&work=leave_member&status=-1" class="btn_gray_mid2" style="margin-top:-50px;">회원탈퇴</a>
					</div>
					<!-- //btn_center_box -->
				</div>
				<!-- //member_cont -->
			</div>
			<!-- //join_base_wrap -->

		</div>
		<!-- //my_page -->

	</div>
	<!-- //mypage_cont -->

</div>
<!-- //content -->
<script type="text/javascript">

	/*	
	$("body").click(function(){
		if($(".numberInput").css("display")=="block"){
			$(".numberInput").css("display", "none")
		}
	});
	*/
	
	$("#infoChange").submit(function(){
		var submitResult=true;
		
		$(".error").css("display","none");
	
			
		var passwdReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
		
		if($("#newPassword").val()!="") {
			if(!passwdReg.test($("#newPassword").val())) {
				$("#passwdRegMsg").css("display","block");
				submitResult=false;
			} 

			if($("#newPassword").val()!=$("#newPasswordCheck").val()) {
				$("#repasswdMatchMsg").css("display","block");
				submitResult=false;
			}
		}
		
		if($("#inputName").val()==null || $("#inputName").val()==""){
			$("#nameMsg").css("display","block");
			submitResult=false;
		}
		
		var emailReg=/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+(\.[-a-zA-Z0-9]+)+)*$/g;
		if(!emailReg.test($("#email").val())) {
			$("#emailRegMsg").css("display","block");
			submitResult=false;
		}
		
		if($("#birthDt").val()=="") {
			$("#birthDtRegMsg").css("display","block");
			submitResult=false;
		}
		
		$('html, body').scrollTop(250);
		
		
		return submitResult;
	});
	
	function postOpen(){
		new daum.Postcode({
		    oncomplete: function(data) {
                var addr = ''; // 주소 변수
            //    var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
			/*
                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("address3").value = extraAddr;
                
                } else {
                    document.getElementById("address3").value = '';
                }
			*/
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("zipCode").value = data.zonecode;
                document.getElementById("address1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("address2").focus();
		    	
                
		    }
		}).open();
	}
</script>

			</div>
			<!-- //sub_content -->
		</div>
		<!-- //본문 끝 contents -->
	</div>
	<!-- //container -->
</div>
<!-- //wrap -->
