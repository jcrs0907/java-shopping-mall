<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%-- 
	************************************************************************************************************
	* 프로젝트명(Context name): samjo
	* 
	* 프로젝트 내 모든 파일들의 경로는 절대경로로 작성되었습니다.
	* 
	* 
	* admin/sys의 하위에 기능별로 구분되는 폴더들을 [board(게시판), member(회원), payment(결제), product(상품)]
	* 준비하여 기능에 따라 관리자페이지를 구분할 수 있도록 하였습니다.
	* 
	* 사용된 라이브러리와 폰트 내용은 head 부분의 <link>태그와 <script> 태그를 참조바랍니다.
	* 
	* 해당파일과 함께 있는 style.css 파일의 수정 및 삭제 시 현재 디자인이 깨져버립니다.
	* 
	* 
	* @author 문재욱
	************************************************************************************************************
	--%>

<%-- 관리자 계정을 통한 접근이 아닐 경우 --%>
<%@include file="/security/admin_check.jspf" %>

<%
	// for POST 방식 값전달
	request.setCharacterEncoding("utf-8");
	
	// 템플릿 페이지 설정 - name : group / work		
	String contentPagePath="";
	
	String group=request.getParameter("group");
	String work=request.getParameter("work");
	
	if(group==null || work==null){
		contentPagePath="/admin/sys/main_page.jsp";
	} else {
		contentPagePath="/admin/sys/"+group+"/"+work+".jsp";
	}
	
%>	
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="<%= request.getContextPath() %>/admin/images/info.png">
	<title>samjo_admin</title>
	<%-- jQuery CDN --%>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<%-- bootstrap CDN - CSS, JavaScript --%>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	
	<%-- 구글폰트 - 영어(Demar4에 적용) --%>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
	
	<%-- 구글폰트 한글(sidebar subListItem에 적용) --%>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
	
	<!-- CSS 적용 -->
	<link rel="stylesheet" href="<%= request.getContextPath() %>/admin/style.css">
	
</head>

<body>

	<!-- sidebar & navbar     -->
	<div class="row container-fluid mx-0 px-0 fixed-top" id="outline">
		
		<!-- sidebar (좌측화면) -->
		<div class="col-md-2 sidebar mx-0">
			<a href="<%= request.getContextPath() %>/admin/admin_page.jsp" class="text-dark text-decoration-none text-center fs-2 d-block mx-auto" id="group-link">
				<img alt="logo" src="<%= request.getContextPath() %>/admin/images/demar3_logo.png" width="20" height="20">  
				<span class="group-name">Demar4</span>
			</a>
			<ul class="list-group">
				<li class="upperList">
					<button type="button" class="listBtn"
						data-bs-toggle="collapse" data-bs-target="#memberCollapse" aria-expanded="false" aria-controls="memberCollapse">
							Member
					</button>
					<div class="collapse" id="memberCollapse">
						<ul class="list-group">
							<li class="subListItem"><a href="<%= request.getContextPath() %>/admin/admin_page.jsp?group=member&work=member_management">회원 관리</a></li>
							<li class="subListItem"><a href="<%= request.getContextPath() %>/admin/admin_page.jsp?group=member&work=left_member">탈퇴 회원정보</a></li>
						</ul>
					</div>
				</li>
				<li class="upperList">
					<button type="button" class="listBtn"
						data-bs-toggle="collapse" data-bs-target="#productCollapse" aria-expanded="false" aria-controls="productCollapse">
							product
					</button>
					<div class="collapse" id="productCollapse">
						<ul class="list-group">
							<li class="subListItem"><a href="<%= request.getContextPath() %>/admin/admin_page.jsp?group=product&work=product_add">상품등록</a></li>
							<li class="subListItem"><a href="<%= request.getContextPath() %>/admin/admin_page.jsp?group=product&work=product_manager">상품목록</a></li>
						</ul>
					</div>
				</li>
				<li class="upperList">
					<button type="button" class="listBtn"
						data-bs-toggle="collapse" data-bs-target="#boardCollapse" aria-expanded="false" aria-controls="boardCollapse">
							Board
					</button>
					<div class="collapse" id="boardCollapse">
						<ul class="list-group">
							<li class="subListItem"><a href="<%= request.getContextPath() %>/admin/admin_page.jsp?group=board&work=notice_manager">공지사항</a></li>
							<li class="subListItem"><a href="<%= request.getContextPath() %>/admin/admin_page.jsp?group=board&work=review_manager">회원리뷰</a></li>
						</ul>
					</div>
				</li>
				<li class="upperList">
					<button type="button" class="listBtn"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse" aria-expanded="false" aria-controls="faqCollapse">
							FAQ
					</button>
					<div class="collapse" id="faqCollapse">
						<ul class="list-group">
							<li class="subListItem"><a href="<%= request.getContextPath() %>/admin/admin_page.jsp?group=faq&work=faq_add">FAQ 등록</a></li>
							<li class="subListItem"><a href="<%= request.getContextPath() %>/admin/admin_page.jsp?group=faq&work=faq_manager">FAQ 목록</a></li>
						</ul>
					</div>
				</li>
				<li class="upperList">
					<button type="button" class="listBtn" 
						data-bs-toggle="collapse" data-bs-target="#paymentCollapse" aria-expanded="false" aria-controls="paymentCollapse">
							Payment
					</button>
					<div class="collapse" id="paymentCollapse">
						<ul class="list-group">
							<li class="subListItem"><a href="<%= request.getContextPath() %>/admin/admin_page.jsp?group=payment&work=payment1">주문관리</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		
		<!-- 우측화면 시작 -->
		<div class="col-md-10 ml-auto navbar-nav" id="rightPanel">
			<!-- top navbar -->
			<div class="row jNavbar">
				<div class="col">
					<h5 class="mb-0 py-2 mx-2">DashBoard</h5>
				</div>
				<div class="col"></div>
				<div class="col" style="text-align: right" id="col3">
					
					<!-- 쇼핑몰 페이지로 이동 -->
					<a href="<%= request.getContextPath() %>/index.jsp" data-bs-toggle="tooltip" data-bs-placement="bottom" title="쇼핑몰">
						<i class="bi bi-house">
							<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
								<!-- path 태그는 icon을 위해 필요한 태그입니다. -->
								<path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
								<path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
							</svg>
						</i>
					</a>
					
					<!-- 관리자 계정 로그아웃 -->
					<a href="<%= request.getContextPath() %>/index.jsp?workgroup=member&work=logout_action&status=0" data-bs-toggle="tooltip" data-bs-placement="bottom" title="로그아웃">
						<i class="bi bi-box-arrow-right">
							<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
								<!-- path 태그는 icon을 위해 필요한 태그입니다. -->
								<path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
								<path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
							</svg>
						</i>
					</a>
				</div>
			</div>
			<div class="navbar-nav-scroll" id="contents-container">
				<div class="container">
				
					<%-- 템플릿 페이지 내용 --%>
					<jsp:include page="<%= contentPagePath %>"></jsp:include>

			
				</div>
				<div class="card-body" id="content-footer">
					<div class="row d-flex align-items-center">
						<div class="col-5">
							<p>ⓒ 2021 - <span style="font-weight: bold; font-size: 11px;">Samjo</span>
								. All Rights Reserved. </p>
						</div>
						<div class="col-7" style="text-align: right;">
							<p>Contact team leader, <span style="font-style: italic;">Margin</span>&nbsp;,&nbsp;for design</p>
						</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	var group = "<%= group %>";
		
	if(group == "member") {
		$("#listBtn1").attr("aria-expanded", "true");
		$("#memberCollapse").addClass("show");
	}
	
	if(group == "product") {
		$("#listBtn2").attr("aria-expanded", "true");
		$("#productCollapse").addClass("show");
	}
	
	if(group == "board") {
		$("#listBtn3").attr("aria-expanded", "true");
		$("#boardCollapse").addClass("show");
	}
	
	if(group == "faq") {
		$("#faqCollapse").addClass("show");
	}
	
	if(group == "payment") {
		$("#listBtn4").attr("aria-expanded", "true");
		$("#paymentCollapse").addClass("show");
	}
	</script>
</body>
</html>