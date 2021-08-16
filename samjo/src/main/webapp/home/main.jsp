<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@page import="java.util.List"%>	
<%
int totalProduct=0;
List<Integer> pKindsArray=null;
totalProduct=ProductDAO.getDao().selectProductCount(pKindsArray);

int startRow=1;
int endRow=9;

if(endRow>totalProduct){
	endRow=totalProduct;
}

List<ProductDTO> productList=ProductDAO.getDao().selectAllProduct(pKindsArray, startRow, endRow);

%>
<div class="main_visual">
	<div class="swiper-container main_slide">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<img src="images/home/main_slide5.jpg" alt="" class="main_slide_img">
				<div class="main_text_box">
					<div class="title">
						SIGNATURE<br> ESTUD PROTECTOR 4.2
					</div>
					<div class="desc">
						하루 63% 데미지에 집중한<br> 신개념 대용량 앰플
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<img src="images/home/main_slide1.jpg" alt="" class="main_slide_img">
				<div class="main_text_box">
					<div class="title">
						SIGNATURE<br> VIT ROISE VITAL CRÈME
					</div>
					<div class="desc">
						다양한 피부 고민 해결을 위한 <br> 최적의 성분 배합 밸런스 연구
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<img src="images/home/main_slide2.jpg" alt="" class="main_slide_img">
				<div class="main_text_box">
					<div class="title">
						SIGNATURE<br> ALPE DI 36 AMPOULE
					</div>
					<div class="desc">
						숙면피부를 연구한 끝에 <br> 탄생한 고농축 앰플
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<img src="images/home/main_slide3.jpg" alt="" class="main_slide_img">
				<div class="main_text_box">
					<div class="title">CITA DU 1.6 BURNING</div>
					<div class="desc">
						지성피부의 환경을 바꾸는<br> 2단계 솔루션
					</div>
				</div>
			</div>
		</div>
		<!-- Add Pagination -->
		<div class="swiper-pagination main_pagination"></div>
	</div>
</div>
<!-- NOTICE -->
<div class="mainNotice">
	<a href="<%= request.getContextPath() %>/index.jsp?workgroup=notice&work=notice_list" class="more mot3">더 많이보기</a>
	<div class="title">NOTICE</div>
	<div class="service_main_notice">
		<ul>
			<li><a href="<%= request.getContextPath() %>/index.jsp?workgroup=notice&work=notice1" target="parent">디마르 개인정보처리방침 개정 안내</a></li>
		</ul>
	</div>
</div>
<!--// NOTICE -->
<!-- 현재 가장 인기있는 제품 -->
<div class="goods_list_item">
	<div class="goods_list main_wrap_1">
		<div class="goods_list_tit">
			<h3>현재 가장 인기있는 제품</h3>
			<a href="<%=request.getContextPath() %>/index.jsp?workgroup=product&work=shop" class="title_more">BEST THINGS</a>
		</div>
		<div class="goods_list_cont goods_content_1">
			<div class="item_gallery_type">
				<ul>
					<% for(ProductDTO product:productList) {%>
						<li class="item_cont_list">
							<!-- //item_cont -->
							<div class="item_cont">
								<%-- 사진 --%>
								<div class="item_photo_box goodsNo65" >
									<a href="<%=request.getContextPath()%>/index.jsp?kinds=goods&pId=<%=product.getpId()%>">
										<img src="<%= request.getContextPath() %>/product/image/<%=product.getpImg()%>" alt="" class="">
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
		</div>
	</div>
</div>
<!--// 현재 가장 인기있는 제품 -->
<!-- review -->
<div class="mainReview">
    <div class="goods_list_tit">
        <h3>실제 사용한 고객님이 남긴 리얼</h3>
        <a href="<%=request.getContextPath()%>/index.jsp?workgroup=review&work=review" class="title_more">REVIEW</a>
    </div>
    <div class="inner">
        <div class="swiper-container review_slide">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <span class="img_box">
                        <img src="images/review/main_review17.jpg" alt="" />
                    </span>
                        <span class="review_title">수부지,속건성 애정템 됐어요! 정착!</span>
                        <span class="review_desc">
                        제형 몽글몽글한게 너무 귀엽네요. 평생 안 녹을 것 같이 생겨서는 문질러주니까 촉촉하게 다 흡수되어버림.. 바를 때마다 기분도 좋고 좀 쿨링감이 느껴지는...
                    </span>
                        <span class="review_thumb">
                       	 <img src="images/goods/goods_list74.png">
                            <span>보습/수분</span><br>
                            플루시온 17 크렘
                    </span>
                </div>

                <div class="swiper-slide">
                    <span class="img_box">
                        <img src="images/review/main_review3.jpg" alt="" />
                    </span>
                        <span class="review_title">진정되는 느낌ㅇ ㅣ좋아요 사진있음</span>
                        <span class="review_desc">
                        수분토너라 별 생각없이~샀는데, 넘 좋아서 놀랐어요 열이 좀 쉽게 오르는 타입이라 끈적이는거 정말 싫어하거든여ㅠ 저희 오빠도 그래서 기초를 거의 같이 쓰는데 오랜만에...
                    </span>
                        <span class="review_thumb">
                        	<img src="images/goods/goods_list74.png">
                            <span>토탈솔루션</span><br>
                            플루시온 17 토너
                        </span>
                </div>
                <div class="swiper-slide">
                    <span class="img_box">
                        <img src="images/review/main_review8.jpg" alt="" />
                    </span>
                        <span class="review_title">건성인데도 촉촉하게 광도는 피부가 신기했어요</span>
                        <span class="review_desc">
                            초 핵 건성인데 요즘 같은 날씨에도 미스트+쿠션 조합이면 이 피부 쌉파서블입니다. 건성분들은 공감하시겠지만….겨울+쿠션조합은 무조건 각질 조합인데 이러고 3~4시간...
                    </span>
                        <span class="review_thumb">
                        	<img src="images/goods/goods_list74.png">
                            <span>보습/수분</span><br>
                            플루시온 17 미스트
                        </span>
                </div>
				 <div class="swiper-slide">
                  <span class="img_box">
                        <img src="images/review/main_review17.jpg" alt="" />
                    </span>
                        <span class="review_title">수부지,속건성 애정템 됐어요! 정착!</span>
                        <span class="review_desc">
                        제형 몽글몽글한게 너무 귀엽네요. 평생 안 녹을 것 같이 생겨서는 문질러주니까 촉촉하게 다 흡수되어버림.. 바를 때마다 기분도 좋고 좀 쿨링감이 느껴지는...
                    </span>
                        <span class="review_thumb">
                        	<img src="images/goods/goods_list74.png">
                            <span>보습/수분</span><br>
                            플루시온 17 크렘
                    </span>
                </div>

                <div class="swiper-slide">
                    <span class="img_box">
                        <img src="images/review/main_review3.jpg" alt="" />
                    </span>
                        <span class="review_title">진정되는 느낌ㅇ ㅣ좋아요 사진있음</span>
                        <span class="review_desc">
                        수분토너라 별 생각없이~샀는데, 넘 좋아서 놀랐어요 열이 좀 쉽게 오르는 타입이라 끈적이는거 정말 싫어하거든여ㅠ 저희 오빠도 그래서 기초를 거의 같이 쓰는데 오랜만에...
                    </span>
                        <span class="review_thumb">
                        	<img src="images/goods/goods_list74.png">
                            <span>토탈솔루션</span><br>
                            플루시온 17 토너
                        </span>
                </div>
                <div class="swiper-slide">
                    <span class="img_box">
                        <img src="images/review/main_review8.jpg" alt="" />
                    </span>
                        <span class="review_title">건성인데도 촉촉하게 광도는 피부가 신기했어요</span>
                        <span class="review_desc">
                            초 핵 건성인데 요즘 같은 날씨에도 미스트+쿠션 조합이면 이 피부 쌉파서블입니다. 건성분들은 공감하시겠지만….겨울+쿠션조합은 무조건 각질 조합인데 이러고 3~4시간...
                    </span>
                        <span class="review_thumb">
                        	<img src="images/goods/goods_list74.png">
                            <span>보습/수분</span><br>
                            플루시온 17 미스트
                        </span>
                </div>
                 <div class="swiper-slide">
                  <span class="img_box">
                        <img src="images/review/main_review17.jpg" alt="" />
                    </span>
                        <span class="review_title">수부지,속건성 애정템 됐어요! 정착!</span>
                        <span class="review_desc">
                        제형 몽글몽글한게 너무 귀엽네요. 평생 안 녹을 것 같이 생겨서는 문질러주니까 촉촉하게 다 흡수되어버림.. 바를 때마다 기분도 좋고 좀 쿨링감이 느껴지는...
                    </span>
                        <span class="review_thumb">
                        	<img src="images/goods/goods_list74.png">
                            <span>보습/수분</span><br>
                            플루시온 17 크렘
                    </span>
                </div>

                <div class="swiper-slide">
                    <span class="img_box">
                        <img src="images/review/main_review3.jpg" alt="" />
                    </span>
                        <span class="review_title">진정되는 느낌ㅇ ㅣ좋아요 사진있음</span>
                        <span class="review_desc">
                        수분토너라 별 생각없이~샀는데, 넘 좋아서 놀랐어요 열이 좀 쉽게 오르는 타입이라 끈적이는거 정말 싫어하거든여ㅠ 저희 오빠도 그래서 기초를 거의 같이 쓰는데 오랜만에...
                    </span>
                        <span class="review_thumb">
                        	<img src="images/goods/goods_list74.png">
                            <span>토탈솔루션</span><br>
                            플루시온 17 토너
                        </span>
                </div>
                <div class="swiper-slide">
                    <span class="img_box">
                        <img src="images/review/main_review8.jpg" alt="" />
                    </span>
                        <span class="review_title">건성인데도 촉촉하게 광도는 피부가 신기했어요</span>
                        <span class="review_desc">
                            초 핵 건성인데 요즘 같은 날씨에도 미스트+쿠션 조합이면 이 피부 쌉파서블입니다. 건성분들은 공감하시겠지만….겨울+쿠션조합은 무조건 각질 조합인데 이러고 3~4시간...
                    </span>
                        <span class="review_thumb">
                        	<img src="images/goods/goods_list74.png">
                            <span>보습/수분</span><br>
                            플루시온 17 미스트
                        </span>
                </div>
                 <div class="swiper-slide">
                  <span class="img_box">
                        <img src="images/review/main_review17.jpg" alt="" />
                    </span>
                        <span class="review_title">수부지,속건성 애정템 됐어요! 정착!</span>
                        <span class="review_desc">
                        제형 몽글몽글한게 너무 귀엽네요. 평생 안 녹을 것 같이 생겨서는 문질러주니까 촉촉하게 다 흡수되어버림.. 바를 때마다 기분도 좋고 좀 쿨링감이 느껴지는...
                    </span>
                        <span class="review_thumb">
                        	<img src="images/goods/goods_list74.png">
                            <span>보습/수분</span><br>
                            플루시온 17 크렘
                    </span>
                </div>

                <div class="swiper-slide">
                    <span class="img_box">
                        <img src="images/review/main_review3.jpg" alt="" />
                    </span>
                        <span class="review_title">진정되는 느낌ㅇ ㅣ좋아요 사진있음</span>
                        <span class="review_desc">
                        수분토너라 별 생각없이~샀는데, 넘 좋아서 놀랐어요 열이 좀 쉽게 오르는 타입이라 끈적이는거 정말 싫어하거든여ㅠ 저희 오빠도 그래서 기초를 거의 같이 쓰는데 오랜만에...
                    </span>
                        <span class="review_thumb">
                        	<img src="images/goods/goods_list74.png">
                            <span>토탈솔루션</span><br>
                            플루시온 17 토너
                        </span>
                </div>
                <div class="swiper-slide">
                    <span class="img_box">
                        <img src="images/review/main_review8.jpg" alt="" />
                    </span>
                        <span class="review_title">건성인데도 촉촉하게 광도는 피부가 신기했어요</span>
                        <span class="review_desc">
	                       초 핵 건성인데 요즘 같은 날씨에도 미스트+쿠션 조합이면 이 피부 쌉파서블입니다. 건성분들은 공감하시겠지만….겨울+쿠션조합은 무조건 각질 조합인데 이러고 3~4시간...
	                    </span>
                        <span class="review_thumb">
                        	<img src="images/goods/goods_list74.png">
                            <span>보습/수분</span><br>
                            플루시온 17 미스트
                        </span>
                </div>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination review_pagination"></div>
        </div>
        <div class="swiper-button-next review_next"></div>
        <div class="swiper-button-prev review_prev"></div>
    </div>
</div>
<!-- //review -->