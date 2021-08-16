<%@page import="web.data.dao.ReviewDAO"%>
<%@page import="web.data.dto.ReviewDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String pId=request.getParameter("pId");
	ProductDTO product=ProductDAO.getDao().selectIdProduct(pId);
	
	List<ReviewDTO> reviewList=ReviewDAO.getDAO().selectProductIdReview(product.getpId());
%>

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

<!-- bang -->
<div class="content_box">
    <!-- //location_wrap -->
    <!-- 상품 상단 -->
    <div class="item_photo_info_sec">
        <!-- //item_photo_view_box -->

        <form name="frmView" id="frmView" method="post">
            
    <!-- //item_info_box -->
    
    <!-- 상단 비쥬얼 -->
    <div class="goods_wrap goods_46">
        <div class="top_box">
            <div class="top_visual bg46">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
DX 시타 듀 리엑팅 토너

                </div>
                <div class="goods_model minerva">DX CITA DU REACTING TONER</div>
                <div class="goods_volume minerva">
                    150ml
                </div>

                <div class="btn_wrap">

                </div>

                <%-- price & button 영역 --%>
                <%@ include file="/product/detail_view/goods/goods_btn.jspf" %>


            </div>
        </div>
    </div>
    <!-- 상단 비쥬얼 -->
    
    </form>
</div>
<!-- //item_photo_info_sec -->
<!-- //상품 상단 끝 -->

<!-- 상품상세 -->
<div class="item_goods_sec view46">
    
      <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 46.DX 시타듀 리엑팅 토너 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_46.jpg" style="display:none;">
		<link rel="stylesheet" href="/data/skin/front/mime/css/swiper.min.css">
		<script type="text/javascript" src="/data/skin/front/mime/js/jquery/swiper.min.js"></script>
		<style>
			.swiper-slide {text-align:center;}
			.slide1_wrap {position:relative;}
			.slide1_wrap img {margin-bottom:0 !important;}
			
			.slide1_area {height:150px;padding-left:178px;position:relative;}
			.slide2_area {height:150px;padding-left:178px;position:relative;}
			
			.thumb_slide1 {width:120px;}
			.thumb1_slide {width:120px;position:absolute;left:0;top:0;padding-left:20px;}
			.thumb1_slide img {width:120px;}
			.thumb1_slide .thumb_title {font-size:13px;color:#202020;font-weight:bold;position: absolute;right: 0;top: -100%;transform: rotate(-90deg);z-index: 2;width:120px;text-align: center;transform-origin: 120px 120px;}
			.slide2_wrap {position:relative;background:#f0f0f0;padding:5px 25px;}
			.slide2_wrap .select {position:absolute;left:20px;top:-6px;z-index:2;}
			
			.slide2_wrap .swiper-button-prev {width:20px !important;height:119px !important;left:0px !important;top:0px !important;background:url('/data/skin/front/mime/img/goods/new/46/btn_prev.png') no-repeat center !important;margin-top:0 !important;}
			.slide2_wrap .swiper-button-next {width:20px !important;height:119px !important;right:0px !important;top:0px !important;background:url('/data/skin/front/mime/img/goods/new/46/btn_next.png') no-repeat center !important;margin-top:0 !important;}
			
			.thumb_slide2 {width:120px;}
			.thumb2_slide {width:120px;position:absolute;left:0;top:0;padding-left:20px;}
			.thumb2_slide img {width:120px;}
			.thumb2_slide .thumb_title {font-size:13px;color:#202020;font-weight:bold;position: absolute;right: 0;top: -100%;transform: rotate(-90deg);z-index: 2;width:120px;text-align: center;transform-origin: 120px 120px;}

		</style>
		
		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg46">
					<div class="img_title">
						<img src="/data/skin/front/mime/img/goods/new/46/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						모공질식 유발하는 피지는 따로 있다?<br>
						문제성 기름피지 발견
					</div>
					<div class="detail_desc">
						세안 후 일정 시간이 지나면 피지 분비가 완성되는 피부와는 다르게<br>
						번들거림 증상이 심한 피부는 지속적인 피지 분비가 발생
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/366405085.hd.mp4?s=0a972e05b2212f222437afd5ae9e02c501f7ea40&amp;profile_id=174" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">
							* 본 영상은 피부 확대 촬영 기기인 OLYMPUS BX41로 촬영한 영상이며, <span style="color:#d89d2a;">200배율과 400배율로 확대한 실제 피지 추출 영상</span>입니다.<br>
							* 개인차가 있을 수 있습니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						*모공질식 현상의 원인<br>
						문제성 기름피지를 연구하다
					</div>
					<div class="detail_desc">
						모공 질식 현상의 원인 ‘문제성 기름피지’를 관찰<br>
						DX 시타 듀 리엑팅 토너는 시간이 지날수록 끈적거리는 피지 고민으로부터 고안된 제품입니다.
					</div>
					<div class="slide1_wrap">
						<img src="/data/skin/front/mime/img/goods/new/46/slide_text.jpg" alt="">
						<div class="swiper-container slide1">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<img src="/data/skin/front/mime/img/goods/new/46/slide1.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="/data/skin/front/mime/img/goods/new/46/slide2.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="/data/skin/front/mime/img/goods/new/46/slide3.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="/data/skin/front/mime/img/goods/new/46/slide4.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="/data/skin/front/mime/img/goods/new/46/slide5.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="/data/skin/front/mime/img/goods/new/46/slide6.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
					<div class="detail_img_box">
						<div class="txt" style="margin:20px 0;">
							* 끈적한 피지와 각종 외부 노폐물들로, 피부 위 두꺼운 축적층이 형성되는 것을 뜻함
						</div>
						<img src="/data/skin/front/mime/img/goods/new/46/detail_img1.jpg" alt="">
					</div>
				</div>

				<div class="detail_step_wrap">
					<div class="detail_video_box bg46"></div>
					<div class="detail_step" style="padding-top:90px;">
						<div class="detail_img_box mb80">
							<img src="/data/skin/front/mime/img/goods/new/46/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title" style="margin-bottom:10px;">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>세안 후 시간이 지날수록 피지 끈적거림이 느껴진다.</li>
								<li>평소 간단한 기초 스킨 케어를 선호한다.</li>
								<li>건조함을 느끼지만 유분감 있는 제품 바르기는 꺼려진다.</li>
								<li>야외 활동 시 모공의 답답함을 자주 겪는다.</li>
								<li>메이크업 후 금세 무너짐 현상이 나타난다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_img_box">
						<img src="/data/skin/front/mime/img/goods/new/46/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							세안 직후 피지 번들거림 증상이 있을 경우<br>
							<b>화장솜에 적당량의 토너를 적셔</b><br>
							<b>눈가와 입가를 제외한 얼굴 전체와 목을 부드럽게 닦아</b> 내거나<br>
							손바닥에 덜어 피부 위에 가볍게 도포해줍니다.
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script>
			new Swiper('.slide1', {
				slidesPerView: 2,
				spaceBetween : 15,
				speed : 800,
				loop : true,
				autoplay : {
					delay : 2000,
					disableOnInteraction: false
				}
			});
			
			new Swiper('.slide2', {
				slidesPerView: 16,
				spaceBetween : 5,
				speed : 500,
				loop : true,
				autoplay : {
					delay : 1000,
					disableOnInteraction: false
				},
				navigation: {
					nextEl: '.thumb1_next',
					prevEl: '.thumb1_prev',
				}
			});
			
			new Swiper('.slide3', {
				slidesPerView: 16,
				spaceBetween : 5,
				speed : 500,
				loop : true,
				autoplay : {
					delay : 1000,
					disableOnInteraction: false
				},
				navigation: {
					nextEl: '.thumb2_next',
					prevEl: '.thumb2_prev',
				}
			});
			
			new Swiper('.thumb_slide1', {
				speed : 500,
				loop : true,
				effect : 'fade',
				simulateTouch : false,
				autoplay : {
					delay : 1000,
					disableOnInteraction: false
				},
				navigation: {
					nextEl: '.thumb1_next',
					prevEl: '.thumb1_prev',
				}
			});
			
			new Swiper('.thumb_slide2', {
				speed : 500,
				loop : true,
				effect : 'fade',
				simulateTouch : false,
				autoplay : {
					delay : 1000,
					disableOnInteraction: false
				},
				navigation: {
					nextEl: '.thumb2_next',
					prevEl: '.thumb2_prev',
				}
			});
		</script>
		<!-- //46.DX 시타듀 리엑팅 토너 -->
            </div>
        </div>
    
    </div>
    <!-- //01.상품 기술서 -->
    
    

      <!-- 자주 묻는 질문 -->
    <div class="detail_faq_box">
        <div class="goods_faq ">
            <h3>
                자주 묻는 질문
            </h3>
            <ul class="faq_ul">
                <li>
                    <div class="q">1. 언제 사용하면 되나요?</div>
                    <div class="a">
                        아침/저녁 세안 직후 사용을 추천 드리며 일상에서 피지 번들거림 증상이 있을 경우 본품 적당량을 취해<br>
                        피부에 골고루 펴 발라주거나, 화장솜에 내용물을 덜어 피부 표면을 부드럽게 닦아주세요
                    </div>
                </li>
                <li>
                    <div class="q">2. 민감성 피부도 사용 가능한가요?</div>
                    <div class="a">
                        자극 유발성 알코올 성분이 들어있지 않고, EWG등급을 고려한 성분으로만 설계된 제품입니다.<br>
                        평소 예민한 피부라면 사용하기 앞서 팔 안쪽에 소량 테스트를 진행한 다음 전체적인 피부 사용을 권해드립니다.
                    </div>
                </li>
                <li>
                    <div class="q">3. 불규칙적이고 자극이 잦은 피부에 사용해도 되나요?</div>
                    <div class="a">
                        피부 진정을 도와주는 액티브 성분들이 다양한 스트레스로 자극 받은 피부를 부드럽게 케어 할 수 있도록 도움을 줍니다.<br>
                        피부가 민감한 날 화장솜에 토너를 충분히 적셔 팩처럼 올려 두는 방법도 권해드립니다.
                    </div>
                </li>
            </ul>
        </div>
        
        
        <!-- 제품문의 
        <div class="detail_cont">
            <div id="qna" class="qna_cont">
                <h3>제품문의(0)</h3>
                <div class="sort">
                    <div class="right btn_up">
                        <a href="#" class="write">문의 작성하기</a>
                    </div>
                </div>
                <div id="ajax-goods-goodsqa-list"></div>
            </div>
        </div>-->
        <!-- //제품문의 -->
    </div>
    <!-- //자주 묻는 질문 -->
    
    <!-- 제품리뷰 -->
    <%@ include file="/product/detail_view/goods/review_connector.jspf" %>
    
    <!-- //제품리뷰 -->
    
    <div class="product_info" id="exchange">
        <!--  상품정보 -->
        <div class="detail_inner">
            <h3>제품정보</h3>
            <table>
                <colgroup>
                    <col style="width:245px;">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th>용량 및 중량</th>
                    <td>
                        150ml
                    </td>
                </tr>
                <tr>
                    <th>제품주요사양</th>
                    <td>모든 피부</td>
                </tr>
                <tr>
                    <th>사용기한</th>
                    <td>
                        제조일로부터 24개월
                    </td>
                </tr>
                <tr>
                    <th>기능성화장품 여부</th>
                    <td>
                        미백, 주름개선 2중 기능성
                    </td>
                </tr>
                <tr>
                    <th>화장품 제조자 및 책임판매업자</th>
                    <td>
                        화장품 제조업자 : (주)비앤비코리아<br/>
                        화장품 책임 판매업자 : (주)자연물질연구소
                    </td>
                </tr>
                <tr>
                    <th>제조국</th>
                    <td>대한민국</td>
                </tr>
                
                <tr>
                    <th>전성분</th>
                    <td>
                        정제수, 부틸렌글라이콜, 글리세린, 1,2-헥산다이올, 나이아신아마이드, 프로판다이올, 피피지-13-데실테트라데세스-24, 판테놀, 베타인, 카퍼트라이펩타이드-1, 트레할로오스, 소듐하이알루로네이트, 아데노신, 병풀추출물, 황금추출물, 세라마이드엔피, 약모밀추출물, 노니추출물, 하이알루로닉애씨드, 로즈힙열매추출물, 연꽃꽃추출물, 해바라기씨오일, 펜틸렌글라이콜, 스타아니스추출물, 벤질아세테이트, 에틸렌브라실레이트, 센티드제라늄꽃오일, 폴리글루타믹애씨드, 오렌지껍질오일, 에틸헥실글리세린, 배초향추출물, 소듐하이알루로네이트크로스폴리머, 카보머, 하이드롤라이즈드하이알루로닉애씨드, 귤껍질추출물, 잇꽃씨추출물, 레몬추출물, 남가새열매추출물, 황기추출물, 감국꽃추출물, 사과추출물, 메틸다이하이드로자스모네이트, 오이풀뿌리추출물, 카프릴릭/카프릭트라이글리세라이드, 다이소듐이디티에이, 아라비안자스민꽃오일, 바오밥나무씨오일, 하이드로제네이티드레시틴, 토코페롤, 알지닌, 하이드롤라이즈드소듐하이알루로네이트, 세라마이드엔에스, 카프릴릴글라이콜, 세라마이드에이피
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        세안 직후 혹은 일상에서의 피지 번들거림 증상이 있을 경우 화장솜에 적당량의 토너를 적셔 눈가와 입가를 제외한 얼굴 전체와 목을 부드럽게 닦아내거나 손바닥에 덜어 피부 위에 가볍게 도포해줍니다.
                    </td>
                </tr>
                <tr>
                    <th>사용상의 주의사항</th>
                    <td>
                        1. 화장품 사용 시 또는 사용 후 직사광선에 의하여 사용부위가 붉은 반점, 부어오름 또는 가려움증 등의 이상 증상이나 부작용이 있는 경우 전문의 등과 상담할 것<br/>
                        2. 상처가 있는 부위 등에는 사용을 자제할 것<br/>
                        3. 보관 및 취급 시의 주의사항<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;1) 어린이의 손이 닿지 않는 곳에 보관할 것<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;2) 직사광선을 피해서 보관할 것<br/>
                        


    



                    </td>
                </tr>
                <tr>
                    <th>품질보증기준</th>
                    <td>본 제품은 공정거래위원회 고시 소비자 분쟁해결기준에 의거 교환 또는 보상받을 수 있습니다 </td>
                </tr>
                <tr>
                    <th>소비자상담센터</th>
                    <td>02-1234-1234</td>
                </tr>
                </tbody></table>
        </div>
        <!--  //상품정보 -->
    </div>
    <div class="product_return">
        <!--  반품교환 안내 -->
        <div class="detail_inner">
            <h3>반품/교환 안내</h3>
            <div class="btnR" style="display:none"><a href="#" class="btnStyle01">교환/반품 1:1 문의하기</a></div>
            <table>
                <colgroup>
                    <col style="width:245px;">
                    <col>
                </colgroup>
                <tbody><tr>
                    <th>반품/교환 택배비 </th>
                    <td>
                        <span class="tit">왕복배송비 6,000원</span>
                        <ol class="txt01">
                            <li>상품불량 및 오배송 등의 이유로 반품하실 경우, 반송 배송비는 무료입니다.</li>
                            <li>단순변심 및 고객님의 사정으로 반품/교환 하실 경우, 배송비는 고객님 부담입니다.</li>
                        </ol>
                    </td>
                </tr>
                <tr>
                    <th>신청방법</th>
                    <td style="position:relative;">
                        <span class="tit">1:1문의로 상담원을 통해 신청</span>
                        <ol class="txt01">
                            <li>1:1문의로 상담사를 통해 접수가 가능합니다.</li>
                            <li>반품접수 후 영업일 기준 2~3일 이내에 자사 지정 택배 기사님이 직접 방문하여 상품을 수거합니다.</li>
                        </ol>
                        <a href="/board/write.php?&bdId=qa" class="btn_return">교환/반품 1:1문의하기</a>
                    </td>
                </tr>
                <tr>
                    <th>반품/교환 가능시점</th>
                    <td>
                        <span class="tit">반품 및 교환은 상품 수령 후 7일 이내에 신청하실 수 있습니다.</span>
                    </td>
                </tr>
                <tr>
                    <th>반품/교환 불가사유</th>
                    <td>
                        <ol class="txt01">
                            <li>제품 포장 손상 및 개봉 및 사용한 경우</li>
                            <li>배송일로부터 7일(화장품류)이 경과된 경우</li>
                            <li>교환 또는 반품 요청 후 5일 이내에 도착하지 않은 경우</li>
                            <li>고객님의 부주의로 제품이 파손 및 손상된 경우</li>
                            <li>제품 파손 및 손상이 없는 화장소품은 불가</li>
                            <li>제품의 겉포장이 손상되거나 분실한경우</li>
                            <li>부작용으로 인한 교환 및 반품 요청 시 피부과 진단서가 제출되지 않은 경우</li>
                            <li>부작용으로 인한 교환 및 반품 요청 시 배송일로부터 20일이 지난 경우</li>
                            <li>왕복 배송비 6,000원이 입금되지 않은 경우 </li>
                            <li>공식 판매처가 아닌 곳에서 구매한 제품일 경우</li>
                        </ol>
                    </td>
                </tr>
                </tbody></table>
        </div>
        <!--  //반품교환 안내 -->

    </div>
</div>
<!-- //상품상세 끝 -->


        
			</div>
			<!-- //sub_content -->

		</div>
		<!-- //본문 끝 contents -->

	</div>
	<!-- //container -->
	</div>


</div>
<!-- //wrap -->


