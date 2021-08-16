<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String[] productType=null;

	if(request.getParameter("keepPaging")==null && session.getAttribute("productType") != null){
		session.removeAttribute("productType");
	} else if(request.getParameter("keepPaging")!=null){
		productType=(String[])session.getAttribute("productType");
	}
	
	/*
		<카테고리 kinds 값>
                    	
		totalCheck : 전체 선택 - 0
                  	
		producktType : 개별 선택 - 1 ~ 6 (순차적으로 적용)
		 - 토너		: "008009"
		 - 크림		: "008001"
		 - 앰플/세럼	: "008003"
		                   	
		 - 토탈솔루션	: "009009"
		 - 주름/탄력	: "009003"
		 - etc		: "009004"
	*/
	
	// 선택박스 - 아코디언 박스 조정을 위해 설정
	boolean isSelected=false;
	String chooseCg=null;
	if(request.getParameter("chooseCg")!=null){
		chooseCg=request.getParameter("chooseCg");
	}
		
	if(request.getParameter("totalCheck")!=null || request.getParameterValues("productType")!=null
			|| request.getParameter("chooseCg")!=null) { // 선택된 경우
		isSelected=true;
	}
		
	/* 제품 테이블에 등록된 전체 제품 수 - 조회 요청된 상품 수 */
	int totalProduct=0;
		
	List<Integer> pKindsArray=null;
	
	if(request.getParameter("totalCheck")!=null){
		totalProduct=ProductDAO.getDao().selectProductCount(pKindsArray);
	} else if(request.getParameter("totalCheck")==null && request.getParameterValues("productType")==null) {
		totalProduct=ProductDAO.getDao().selectProductCount(pKindsArray);
	
	} else if(request.getParameterValues("productType")!=null) { // 카테고리 선택일 경우
		
		pKindsArray=new ArrayList<Integer>();
		productType=request.getParameterValues("productType");
		
		session.setAttribute("productType", productType);
		
		for(int i=0; i<productType.length; i++){
			
			switch (productType[i]) {
			case "008009": pKindsArray.add(1); break;
			case "008001": pKindsArray.add(2); break;
			case "008003": pKindsArray.add(3); break;
			case "009009": pKindsArray.add(4); break;
			case "009003": pKindsArray.add(5); break;
			case "009004": pKindsArray.add(6); break;
			}
		}
		totalProduct=ProductDAO.getDao().selectProductCount(pKindsArray);
	} 
	
	
	
	if(request.getParameter("keepPaging")!=null && session.getAttribute("productType")!=null) {
		pKindsArray=new ArrayList<Integer>();
		
		for(int i=0; i<productType.length; i++){
			
			switch (productType[i]) {
			case "008009": pKindsArray.add(1); break;
			case "008001": pKindsArray.add(2); break;
			case "008003": pKindsArray.add(3); break;
			case "009009": pKindsArray.add(4); break;
			case "009003": pKindsArray.add(5); break;
			case "009004": pKindsArray.add(6); break;
			}
		}
		totalProduct=ProductDAO.getDao().selectProductCount(pKindsArray);
	}
	
		
	/* 페이징 처리를 위한 페이지 설정 */
	
	int pageNum=1;
	if(request.getParameter("pageNum")!=null){
		pageNum=Integer.parseInt(request.getParameter("pageNum"));
	}
	
	
	// 한 화면에 출력 상품 갯수
	int pageSize=9;
	
	int totalPage=(int)Math.ceil((double)totalProduct/pageSize);
	
	if(pageNum<1 || pageNum>totalPage) {
		pageNum=1;
	}
	
	// startRow - 1, 10, 19, 37 ...
	int startRow=(pageNum-1)*pageSize+1;
	
	// endRow - 9, 18, 27, 36, ...
	int endRow=pageNum*pageSize;
	
	if(endRow>totalProduct){
		endRow=totalProduct;
	}
	
	// 현재 pageNum 화면에 출력할 상품 목록
	List<ProductDTO> productList=ProductDAO.getDao().selectAllProduct(pKindsArray, startRow, endRow);
%>

<style type="text/css">
	body {
	}

	/* body > #wrap > #header_warp : 상단 영역 */
	#header_warp {
	}

	/* body > #wrap > #container : 메인 영역 */
	#container {
	}

	/* body > #wrap > #footer_wrap : 하단 영역 */
	#footer_wrap {
	}
	
	/*********************************************************************************************/
	/*********************************************************************************************/
												/* CSS */
	/*********************************************************************************************/
	/*********************************************************************************************/
	
	.sub_content {padding-bottom: 85px;}
	
	/* 상품 조회 영역 */
	
	.item_cont_list {
		margin-left: 45px !important;
		margin-right: 45px !important;
		margin-bottom: 70px !important;
	}
	
	
	/* 블록영역 페이징처리 */
	
	.blockPaging {
		text-align: center;
		margin-top: 80px;
	}
	
	.blockPaging a, .blockPaging span {
		margin: 0 20px 0 20px;
	}
	
	.pageNumTag {
		color: #a9a9a9;
		font-size: 16px;
	}
	
	.selectedPage {
		color: #d28521;
		font-size: 16px;
		text-weight: bold;
	}

	#jArrow {
		position: relative;
		top: 31px;
		right: 20px;
	}
	
	.j-cat{
		padding-right: 0 !important;
		margin-right: 0 !important;
	}
	
	.category_select_view .text {display: none;}	
</style>

	
<div id="wrap">
<div class="gnb_allmenu_wrap">
	
	<%-- 아래 container, content, sub_content를 지울 시 영역의 깨짐현상이 발생합니다. --%>
	<div id="container">
		<div id="contents">
		
		
		<!-- 본문 시작 -->
			<!-- //location_wrap -->

			<div class="sub_content">

				<!-- //side_cont -->


</div>

<div class="content">
    <div class="goods_category_box">
        <form name="frmListCategory" id="frmListCategory" method="POST" 
        	action="<%=request.getContextPath()%>/index.jsp?workgroup=product&work=shop">
           <%-- <input type="hidden" name="pageNum" value="<%=pageNum%>"> --%>
			<input type="hidden" name="chooseCg" value="1">
            <div class="category_top">
                <div class="inner">
                    <div class="category_select_view">
                        <span class="tit">Shop</span>
                        <% if(request.getParameter("totalCheck")!=null || 
                    			(request.getParameter("totalCheck")==null&&request.getParameterValues("productType")==null)&&productType==null) { %>
								<img id="jArrow" alt="" src="<%=request.getContextPath()%>/images/ico_category_cursor.png">
								<span class="tit">전체</span>
                    	<% } else if(request.getParameterValues("productType")!=null) {%>		
                    		
							<%if(pKindsArray.indexOf(4)!=-1 || pKindsArray.indexOf(5)!=-1 || pKindsArray.indexOf(6)!=-1){%>
								<img id="jArrow" alt="" src="<%=request.getContextPath()%>/images/ico_category_cursor.png">
								<span class="tit">효능별</span>
								<img id="jArrow" alt="" src="<%=request.getContextPath()%>/images/ico_category_cursor.png">
								<% for(int i=0; i<productType.length; i++){ 
									if(productType[i].equals("008009")){%>
										<span class="tit j-cat">토너</span>
									<% } else if(productType[i].equals("008001")){%>
										<span class="tit j-cat">크림</span>
									<% } else if(productType[i].equals("008003")){%>
										<span class="tit j-cat">앰플/세럼</span>
									<% } else if(productType[i].equals("009009")){%>
										<span class="tit j-cat">토탈솔루션</span>
									<% } else if(productType[i].equals("009003")){%>
										<span class="tit j-cat">주름/탄력</span>
									<% } else if(productType[i].equals("009004")){%>
										<span class="tit j-cat">etc</span>
									<% } %>
									<% if(i != productType.length-1) {%>
										<span class="tit j-cat">,&nbsp;&nbsp;</span>								
									<% } %>
								<% } %>
	                    	<% } else if(pKindsArray.indexOf(1)!=-1 || pKindsArray.indexOf(2)!=-1 || pKindsArray.indexOf(3)!=-1) { %>		
								<img id="jArrow" alt="" src="<%=request.getContextPath()%>/images/ico_category_cursor.png">
								<span class="tit">유형별</span>	
								<img id="jArrow" alt="" src="<%=request.getContextPath()%>/images/ico_category_cursor.png">
								<% for(int i=0; i<productType.length; i++){ 
									if(productType[i].equals("008009")){%>
										<span class="tit j-cat">토너</span>
									<% } else if(productType[i].equals("008001")){%>
										<span class="tit j-cat">크림</span>
									<% } else if(productType[i].equals("008003")){%>
										<span class="tit j-cat">앰플/세럼</span>
									<% } else if(productType[i].equals("009009")){%>
										<span class="tit j-cat">토탈솔루션</span>
									<% } else if(productType[i].equals("009003")){%>
										<span class="tit j-cat">주름/탄력</span>
									<% } else if(productType[i].equals("009004")){%>
										<span class="tit j-cat">etc</span>
									<% } %>
									<% if(i != productType.length-1) {%>
										<span class="tit j-cat">,&nbsp;&nbsp;</span>								
									<% } %>
								<% } %>
	                    	<% } %>		
                    	<% } else if(request.getParameter("keepPaging")!=null && session.getAttribute("productType") != null){%>
                    		
                    		<%if(pKindsArray.indexOf(4)!=-1 || pKindsArray.indexOf(5)!=-1 || pKindsArray.indexOf(6)!=-1){%>
								<img id="jArrow" alt="" src="<%=request.getContextPath()%>/images/ico_category_cursor.png">
								<span class="tit">효능별</span>
								<img id="jArrow" alt="" src="<%=request.getContextPath()%>/images/ico_category_cursor.png">
								<% for(int i=0; i<productType.length; i++){ 
									if(productType[i].equals("008009")){%>
										<span class="tit j-cat">토너</span>
									<% } else if(productType[i].equals("008001")){%>
										<span class="tit j-cat">크림</span>
									<% } else if(productType[i].equals("008003")){%>
										<span class="tit j-cat">앰플/세럼</span>
									<% } else if(productType[i].equals("009009")){%>
										<span class="tit j-cat">토탈솔루션</span>
									<% } else if(productType[i].equals("009003")){%>
										<span class="tit j-cat">주름/탄력</span>
									<% } else if(productType[i].equals("009004")){%>
										<span class="tit j-cat">etc</span>
									<% } %>
									<% if(i != productType.length-1) {%>
										<span class="tit j-cat">,&nbsp;&nbsp;</span>								
									<% } %>
								<% } %>
	                    	<% } else if(pKindsArray.indexOf(1)!=-1 || pKindsArray.indexOf(2)!=-1 || pKindsArray.indexOf(3)!=-1) { %>		
								<img id="jArrow" alt="" src="<%=request.getContextPath()%>/images/ico_category_cursor.png">
								<span class="tit">유형별</span>	
								<img id="jArrow" alt="" src="<%=request.getContextPath()%>/images/ico_category_cursor.png">
								<% for(int i=0; i<productType.length; i++){ 
									if(productType[i].equals("008009")){%>
										<span class="tit j-cat">토너</span>
									<% } else if(productType[i].equals("008001")){%>
										<span class="tit j-cat">크림</span>
									<% } else if(productType[i].equals("008003")){%>
										<span class="tit j-cat">앰플/세럼</span>
									<% } else if(productType[i].equals("009009")){%>
										<span class="tit j-cat">토탈솔루션</span>
									<% } else if(productType[i].equals("009003")){%>
										<span class="tit j-cat">주름/탄력</span>
									<% } else if(productType[i].equals("009004")){%>
										<span class="tit j-cat">etc</span>
									<% } %>
									<% if(i != productType.length-1) {%>
										<span class="tit j-cat">,&nbsp;&nbsp;</span>								
									<% } %>
								<% } %>
	                    	<% } %>	
                    		
                    	<% } %>
                    </div>
                    <a href="javascript:void(0);" class="btn_filter"><span>필터닫기</span></a>
                </div>
            </div>
            <div class="category_bottom"  >
                <div class="inner">
                    <%--
                    	<카테고리 kinds 값>
                    	
                    	totalCheck : 전체 선택 - 0
                    	
                    	producktType : 개별 선택 - 1 ~ 6 (순차적으로 적용)
 						 - 토너		: "008009"
 						 - 크림		: "008001"
 						 - 앰플/세럼	: "008003"
 						                   	
 						 - 토탈솔루션	: "009009"
 						 - 주름/탄력	: "009003"
 						 - etc		: "009004"
 						 
                    --%>
                    
                    <div class="tit">※ 카테고리 별로 중복체크가능</div>
                    <dl class="all category_dl">
                        <dt>
                            <label class="checkcontainer  on" for="allCategory" >
                                <input type="checkbox" id="allCategory" name="totalCheck" value="0" checked="checked">
                                <span class="mot3">전체상품</span>
                                <span class="checkmark"></span>
                            </label>
                        </dt>
                    </dl>
                    <dl class="category_dl js-cate-008">
                        <dt>유형별</dt>
                        <dd>
                            <label class="checkcontainer" for="category008009">
                                <input type="checkbox" id="category008009" name="productType" value="008009"  data-cate-nm="토너"  >
                                <span>토너</span>
                                <span class="checkmark"></span>
                            </label>
                            <label class="checkcontainer" for="category008001">
                                <input type="checkbox" id="category008001" name="productType" value="008001"  data-cate-nm="크림"  >
                                <span>크림</span>
                                <span class="checkmark"></span>
                            </label>
                            <label class="checkcontainer" for="category008003">
                                <input type="checkbox" id="category008003" name="productType" value="008003"  data-cate-nm="앰플/세럼"  >
                                <span>앰플/세럼</span>
                                <span class="checkmark"></span>
                            </label>
                        </dd>
                    </dl>
                     <dl class="category_dl js-cate-009">
                        <dt>효능별</dt>
                        <dd>
                            <label class="checkcontainer" for="category009009">
                                <input type="checkbox" id="category009009" name="productType" value="009009"  data-cate-nm="토탈솔루션"  >
                                <span>토탈솔루션</span>
                                <span class="checkmark"></span>
                            </label>
                            <label class="checkcontainer" for="category009003">
                                <input type="checkbox" id="category009003" name="productType" value="009003"  data-cate-nm="주름/탄력"  >
                                <span>주름/탄력</span>
                                <span class="checkmark"></span>
                            </label>
                            <label class="checkcontainer" for="category009004">
                                <input type="checkbox" id="category009004" name="productType" value="009004"  data-cate-nm="etc"  >
                                <span>etc</span>
                                <span class="checkmark"></span>
                            </label>
                        </dd>
                    </dl>
                    <button type="submit" class="btn_select_view mot3">선택상품 보기</button>
                </div>
            </div>
        </form>
    </div>
	


        <div class="goods_list">
            <div class="goods_list_cont">
                <!-- 상품 리스트 -->
<div class="item_gallery_type">
	<ul>
		<% for(ProductDTO product:productList) {%>
			<li class="item_cont_list">
				<!-- //item_cont -->
				<div class="item_cont">
					<%-- 사진 --%>
					<div class="item_photo_box goodsNo65" >
						<a href="<%=request.getContextPath()%>/index.jsp?kinds=goods&pId=<%=product.getpId()%>">
							<img src="<%= request.getContextPath() %>/product/image/<%=product.getpImg()%>" alt="" width="264" height="335">
						</a>
					</div>
					
					<%-- 아이템 정보 --%>
					<div class="item_info_cont">
						<%-- 카테고리 번호(kinds) --%>
						<div class="item_number_box">
							<%= product.getpInfo() %>
						</div>
						
						<!-- 제목 - 타이틀 -->
						<div class="item_tit_box">
							<a href="<%=request.getContextPath()%>/index.jsp?kinds=goods&pId=<%=product.getpId()%>">
								<span class="item_name"><%=product.getpName()%></span>
							</a>
						</div>
						
						<%-- 가격 --%>
						<div class="item_money_box">
							<strong class="item_price">
								<span > <%=DecimalFormat.getCurrencyInstance().format(product.getpPrice())%> </span>
							</strong>
						</div>
						<%--
							SET는 안하는게 나을 것 같음.
							 
							<div class="item_icon_box">
							</div>
							<!-- //item_icon_box -->
						--%>
					</div>
					<!-- //item_info_cont -->
				</div>
			</li>
		<% } %>
	</ul>
</div>
<!-- //item_gallery_type -->
                <!-- //상품 리스트 -->
            </div>
        </div>
    </div>
    <!-- //goods_list_item -->
    
	<%
		/* 블럭처리 */
		int blockSize=3;
		
		// 블럭에 출력될 시작페이지 번호 / 종료페이지 번호 : startNum / endNum
		int startNum=(pageNum-1)/blockSize*blockSize+1;
		int endNum=startNum+blockSize-1;
		
		if(endNum>totalPage) {
			endNum=totalPage;
		}
	%>
	<div class="blockPaging">
	<%-- <a href="<%=request.getContextPath()%>/index.jsp?workgroup=product&work=shop&pageNum=1">first</a> --%>
	<%-- <a href="<%=request.getContextPath()%>/index.jsp?workgroup=product&work=shop&pageNum=<%=totalPage%>">last</a> --%>
	<%-- 다음블럭으로 넘어갈 떄 사용하는 코드 주석 --%>

	<% if(startNum<pageNum) { %>
		<a href="<%=request.getContextPath()%>/index.jsp?workgroup=product&work=shop&pageNum=<%=pageNum-1%>&chooseCg=1&keepPaging=1">prev</a>
	<% } else { %>
		
	<% } %>
	
	<% for(int i=startNum;i<=endNum;i++) { %>
		<% if(pageNum!=i) { %>
			<a href="<%=request.getContextPath()%>/index.jsp?workgroup=product&work=shop&pageNum=<%=i%>&chooseCg=1&keepPaging=1"><%=i%></a>
		<% } else { %>
			<span class="selectedPage"><%=i%></span>
		<% } %>
	<% } %>
	
	<% if(endNum!=pageNum) { // 마지막 페이지 블럭이 아닌 경우 - 링크 설정 %>
		<a href="<%=request.getContextPath()%>/index.jsp?workgroup=product&work=shop&pageNum=<%=pageNum+1%>&chooseCg=1&keepPaging=1">next</a>
	<% } else { %>
		
	<% } %>   
    </div>
    
<%-- 블럭 디자인을 위한 div 태그 --%>
</div>
<!-- //content -->

			</div> 
			<!-- //sub_content -->
		</div>
		<!-- //본문 끝 contents -->
</div>

<script type="text/javascript">

	window.onload=function shopAccordian(){
		var isSelected=<%=isSelected%>;
		if(isSelected){
			$(".btn_filter").addClass("active");
			$(".btn_filter").children("span").text('필터열기');
			$(".category_bottom").css("display", "none");
			
		} 
	};

</script>
