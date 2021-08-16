<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// Charset Setting for post method
	request.setCharacterEncoding("utf-8");

	//content 영역에 들어갈 workgroup 작성
	//기본 home
	String workgroup=request.getParameter("workgroup");
	if(workgroup==null) workgroup="home";
	
	//content 영역에 들어갈 work 작성
	//기본 home의 main
	String work=request.getParameter("work");
	if(work==null) work="main";
	
	//header
	String headerPath="header.jsp";


	String contentPath=workgroup+"/"+work+".jsp";
	
	
	/********************************************************************
	제품 상세페이지 설정
	*/
	String kinds=request.getParameter("kinds");
	String pId=request.getParameter("pId");
	if(kinds!=null){
		contentPath="product/detail_view/"+kinds+"/"+pId+".jsp";		
	}

	/*end*/
	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no,target-densitydpi=medium-dpi,viewport-fit=cover">
<title>DEMAR3 디마르3 공식몰</title>

<!-- google font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!--// google font -->

<!-- demar3 스타일 시트 모음(추가, 변경사항은 css 폴더 아래 작성) -->
<link rel="stylesheet" href="css/swiper.min.css">
<link type="text/css" rel="stylesheet" href="css/reset.css">
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/goods.css">
<link type="text/css" rel="stylesheet" href="css/layer.css">
<link type="text/css" rel="stylesheet" href="css/layout.css">
<link type="text/css" rel="stylesheet" href="css/list.css">
<link type="text/css" rel="stylesheet" href="css/order.css">   
<link type="text/css" rel="stylesheet" href="css/main.css">
<link type="text/css" rel="stylesheet" href="css/member.css">
<link type="text/css" rel="stylesheet" href="css/mypage.css">
<link type="text/css" rel="stylesheet" href="css/button.css">
<link type="text/css" rel="stylesheet" href="css/service.css">
<link type="text/css" rel="stylesheet" href="css/custom.css">
<link type="text/css" rel="stylesheet" href="css/order.css">
<!--// demar3 스타일 시트 모음(추가, 변경사항은 css 폴더 아래 작성) -->

<!--main 슬라이드-->
	<script type="text/javascript" src="js/swiper.min.js"></script>
	<!--jquery cdn-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!--main에서 사용할 js파일 -->

</head>
<body class="body-main body-index pc headerBg mainT">
	<!-- header 시작 -->
	<header id="headerN">
		<jsp:include page="<%=headerPath %>"/>		
	</header>
	<!--// header 끝 -->
	<!-- main content 시작 -->
	<div id="container">
		<div id="contents">
			<div class="sub_content">
				<jsp:include page="<%=contentPath %>"/>		
			</div>
		</div>	
	</div>
	<!--// main content 끝 -->
	<!-- footer 시작 -->
	<footer id="footerN">
		<jsp:include page="footer.jsp"/>
	</footer>
	<!--// footer 끝 -->
	
	<!--script 영역 시작 -->
	
	<script type="text/javascript" src="js/main.js"></script>
	<%-- product에서 사용할 js파일 --%>
	<script type="text/javascript" src="js/product.js"></script>
	<!--cart에서 사용할 js파일 -->
	<script type="text/javascript" src="js/cart.js"></script>
	<script>
	//우측 하단 top 버튼
	var sTop,
	$btnTop = $('.btn_top');
	if($btnTop.length){
		$(window).scroll(function(){
			sTop = $(window).scrollTop();
			
			if(sTop >= 50 ){
				$btnTop.addClass('show');
			}else{
				$btnTop.removeClass('show');
			}
			
		});
		
		$btnTop.click(function(){
			$("html, body").stop().animate({scrollTop:0 }, 500);
		});
	}

	</script>
	<!--//script 영역 끝 -->
</body>
</html>