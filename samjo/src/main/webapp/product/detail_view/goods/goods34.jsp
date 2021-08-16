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
    <div class="goods_wrap goods_34">
        <div class="top_box">
<!--            <a href="javascript:void(0);" class="soldout30">-->
<!--                <img src="/data/skin/front/mime/img/goods/new/30/soldout30.png" alt="" />-->
<!--            </a>-->
            <div class="top_visual bg34">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
시타 듀 1.6 버닝 1제
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">CITA DU 1.6 BURNING</div>
                <div class="goods_volume minerva">
                    24ml
                </div>
					<%-- price & button 영역 --%>
                <%@ include file="/product/detail_view/goods/goods_btn.jspf" %>


                <div class="btn_wrap">

                    <!-- 품절설정 -->
                </div>

            </div>
        </div>
    </div>
    <!-- 상단 비쥬얼 -->
    </form>
</div>
<!-- //item_photo_info_sec -->
<!-- //상품 상단 끝 -->

<!-- 상품상세 -->
<div class="item_goods_sec view40">
    
   <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 34. 시타 듀 1.6 버닝 1제 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_34.jpg" style="display:none;">
		<link rel="stylesheet" href="/data/skin/front/mime/css/swiper.min.css">
		<script type="text/javascript" src="/data/skin/front/mime/js/jquery/swiper.min.js"></script>
		<style>
			.swiper-slide {text-align:center;}
			.slide1_wrap {padding:8px 30px;background:#f2f2f2;position:relative;margin-bottom:15px;}
			.slide1_wrap img {margin-bottom:0 !important;}
			.slide1_wrap .swiper-button-prev {width:30px !important;height:52px !important;left:0px !important;top:0px !important;background:url('/data/skin/front/mime/img/goods/new/30/btn_slide_prev.png') no-repeat center !important;margin-top:0 !important;}
			.slide1_wrap .swiper-button-next {width:30px !important;height:52px !important;right:0px !important;top:0px !important;background:url('/data/skin/front/mime/img/goods/new/30/btn_slide_next.png') no-repeat center !important;margin-top:0 !important;}

			.slide2_wrap {width:845px;position:relative;margin-bottom:30px;}
			.slide2_wrap .swiper-wrapper {transition: all 0.5s linear;}
			.slide2_wrap .swiper-slide {width:236px !important;}
			.slide2_wrap img {margin-bottom:0 !important;}
		</style>
		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg34">
					<div class="img_title">
						<img src="/data/skin/front/mime/img/goods/new/34/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						나는 유전적으로 나쁜 피부일까?<br>
						*‘켈리스인자’ 피부 성질을 결정짓다.
					</div>
					<div class="detail_desc">
						시타듀 프로젝트 조사결과, 상위 17%의 건강한 피부에 ‘<b>켈리스인자</b>’가 더 많다는 걸 알아냈습니다.
					</div>
					<div class="video_box">
						<video class="mb0" src="https://player.vimeo.com/external/364727851.sd.mp4?s=5d9c2496ec79ea2f019e45e9c377cb1e20b525a8&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt right" style="font-size:10px;">
							* 켈리스인자란, 연구 및 측정내용을 기반으로 표피에 존재하며 피부에 좋은 작용을 하는 케라틴, 리놀레산, 히알루론산,콜라겐, 탄닌, 글루코사미노글리칸 등을 지칭한 단어입니다.<br>
							* 이해를 돕기 위한 영상 입니다.
						</div>
					</div>
					<div class="detail_img_box">
						<img src="/data/skin/front/mime/img/goods/new/30/detail_text1.png" alt="" style="margin-bottom:10px;">
						<div class="slide1_wrap">
							<div class="swiper-container slide1">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_1.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_2.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_3.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_4.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_5.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_6.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_7.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_8.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_9.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_10.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_11.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_12.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_13.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_14.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_15.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_16.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_17.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_18.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_19.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_20.png" alt="">
									</div>
									<div class="swiper-slide">
										<img src="/data/skin/front/mime/img/goods/new/30/slide1_21.png" alt="">
									</div>
								</div>
							</div>
							<div class="swiper-button-next slide1_next"></div>
							<div class="swiper-button-prev slide1_prev"></div>
						</div>
						<img src="/data/skin/front/mime/img/goods/new/30/detail_img1.jpg" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						켈리스인자,<br>
						피부호흡 막는 *미생물찌꺼기 억제에 도움
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/364727867.sd.mp4?s=6d3e3fcfef491e753e924a1593bda18a8a5ecb5a&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt" style="font-size:10px;">
							​* 피부문제를 유발하는 유해효소를 뜻함
						</div>
						<img src="/data/skin/front/mime/img/goods/new/30/detail_img2.jpg" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_img_box">
						<img src="/data/skin/front/mime/img/goods/new/34/detail_img1.jpg" alt="">
						<div class="txt" style="font-size:10px;">
							* 본 시험은 식약처 화장품 가이드라인 및 해당 기관 표준작업지침서(SOP)에 따라 진행되었습니다.<br>
							* 모든 시험절차는 신뢰성 보증 담당자 점검 하에 진행되었습니다.
						</div>
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg34"></div>
					<div class="detail_step" style="padding-top:70px;">
						<div class="detail_img_box" style="margin-bottom:60px;">
							<img src="/data/skin/front/mime/img/goods/new/34/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>남들보다 쉽게 피부문제가 일어난다.</li>
								<li>지성피부로 남들보다 기름기가 많다.</li>
								<li>일정 시간이 지나면 양볼과 콧등 주변이 번들거린다.</li>
								<li>나비존의 탄력이 걱정된다.</li>
								<li>클렌징 후에도 기름기가 남아있는 느낌이 든다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
				<div class="tab_contents">
					<div class="step_contents" style="padding-bottom:100px;">
						<div class="step_img_box">
							<img src="/data/skin/front/mime/img/goods/new/34/detail_step.png" alt="">
						</div>
						<div class="step_text_box">
							<div class="step_title">사용방법</div>
							<div class="step_text1" style="margin-bottom:70px;">
								토너로 피부를 닦아준 후,<br>
								<b>1제를 얼굴 전체에 도포하여 충분히 흡수 시킨 후,</b><br>
								<b>2제를 적당량 얼굴 전체에 골고루 발라주세요.</b><br>
								그 후, 크림을 발라주어 마무리 해주세요.
							</div>
						</div>
					</div>
				</div>
		</div>

		<script>
			new Swiper('.slide1', {
				slidesPerView: 18,
				speed : 600,
				loop : true,
				autoplay : {
					delay : 1000,
					disableOnInteraction: false
				},
				navigation: {
					nextEl: '.slide1_next',
					prevEl: '.slide1_prev',
				}
			});
			new Swiper('.slide2', {
				slidesPerView: 'auto',
				allowTouchMove : false,
				speed : 4000,
				loop : true,
				autoplay : {
					delay : 0
				}
			});
		</script>
		
		<!-- //34. 시타 듀 1.6 버닝 1제 -->
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
                    <div class="q">1. 아침 /저녁 모두 사용 가능한가요?</div>
                    <div class="a">
                        아침,저녁 모두 사용이 가능합니다.
                    </div>
                </li>
                <li>
                    <div class="q">2. 사용 순서가 어떻게 되나요?</div>
                    <div class="a">
                        시타듀 라인은 피부성질 개선을 목적으로 같이 연구된 제품들 입니다. 세안 후 DX 시타 듀 토너 2.0 다음 단계에서 1제와 2제를 순서대로 발라주세요. 그리고 시타듀 크림으로 마무리 해주시면 됩니다. (DX 시타 듀 토너 2.0 > 시타듀 1제 > 시타듀 2제 > 시타듀 크림)
                    </div>
                </li>
                <li>
                    <div class="q">3. 적정 사용량이 있나요?</div>
                    <div class="a">
                        전에 사용하시던 앰플이나 에센스의 양과 동일하게 사용하시면 됩니다. 1제는 피부 문제가 일어나는 부위 위주로 발라주시고 2제는 얼굴 전체에 고르게 바를 수 있을 정도의 양으로 사용해주시면 됩니다. (피부 타입과 평소 스킨 케어 방법에 따라 사용량은 적절하게 조절해주시면 됩니다.)
                    </div>
                </li>
                <li>
                    <div class="q">4. 임산부 사용이 가능한가요?</div>
                    <div class="a">
                        임신 중 사용 가능합니다. 단, 임신 중에는 호르몬 변화로 평소보다 피부가 민감하므로 팔 안쪽에 소량 테스트 후 사용을 권해드립니다.
                    </div>
                </li>
                <li>
                    <div class="q">5. 왜 1제와 2제로 나눠져 있나요? 하나만 바르면 안되나요?</div>
                    <div class="a">
                        1제와 2제는 서로의 기능을 증폭시켜주는 성분이 설계돼있습니다. 효능 극대화를 위해 개별 사용보다, 함께 사용을 권해드립니다.
                    </div>
                </li>
                <li>
                    <div class="q">6. 다른 버닝 제품(에트셀62, 렘로즈 25)과 함께 사용해도 되나요?</div>
                    <div class="a">
                        각 제품의 유효 성분 흡수를 방해하지 않도록 아침, 저녁으로 나눠 사용하실 것을 권해드립니다. (예) 아침 : 렘로즈25 주름 버닝 or 에트셀 62 미백 버닝, 저녁 : 시타듀 1.6 버닝
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
                        <a href="javascript:gd_open_write_popup('goodsqa', '34')" class="write">문의 작성하기</a>
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
                        24ml
                    </td>
                </tr>
                <tr>
                    <th>제품주요사양</th>
                    <td>모든 피부</td>
                </tr>
                <tr>
                    <th>사용기한</th>
                    <td>
                        제조일로부터 30개월
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
                        화장품 제조업자 : (주)에치엔지<br/>
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
                        정제수, 프로판다이올, 다이프로필렌글라이콜, 메틸프로판다이올, 1,2-헥산다이올, 나이아신아마이드, 메틸글루세스-20, 글리세레스-26, 다시마추출물, 한련초잎추출물, 당호박추출물, 동백나무꽃추출물, 로즈힙열매추출물, 병풀추출물, 티트리잎추출물, 황금추출물, 인도멀구슬나무잎추출물, 귀리커넬추출물, 아티초크잎추출물, 녹차추출물, 붉은토끼풀추출물, 치자추출물, 인도멀구슬나무꽃추출물, 고삼뿌리추출물, 라케모사승마뿌리추출물, 석류추출물, 칡뿌리추출물, 카카오씨추출물, 스피룰리나 플라텐시스추출물, 쌀겨추출물, 서양수수꽃다리추출물, 제비꽃꽃추출물, 포도추출물, 비타민나무열매추출물, 가지열매추출물, 녹차수, 하이드로제네이티드레시틴, 광곽향오일, 연필향나무오일, 불가리스쑥오일, 페퍼민트오일, 옥틸도데세스-16, 글리세린, 베타인, 비피다발효용해물, 판테놀, 아크릴레이트/C10-30알킬아크릴레이트크로스폴리머, 트로메타민, 아데노신, 다이소듐이디티에이, 베타-글루칸, 폴리쿼터늄-51, 프룩토올리고사카라이드, 덱스트린, 하이드롤라이즈드하이알루로닉애씨드, 마데카소사이드, 아스퍼질러스/쌀발효여과물, 알지닌, 레시틴, 스쿠알란, 아시아티코사이드, 카프릴릭/카프릭트라이글리세라이드, 시어버터, 세라마이드엔피, 카퍼트라이펩타이드-1, 피토스테롤, 하이드록시아세토페논, 에틸헥실글리세린
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        시타 듀 1.6 버닝 1제를 충분히 흡수 시킨 후, 2제를 얼굴 전체에 골고루 도포하여 주세요.
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
                    <td>02-6010-1177</td>
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


