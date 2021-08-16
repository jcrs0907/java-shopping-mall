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
        <div class="item_photo_view_box" style="display:none">
            <div class="item_photo_view">
                <div class="item_photo_big">
                    <span class="img_photo_big"><a href="#lyZoom" id="mainImage" class="zoom_layer_open btn_open_layer"><img src="/data/goods/21/03/10/64/64_detail_031.jpg" width="500" alt="시그니처 에스투드 프로텍터 4.2" title="시그니처 에스투드 프로텍터 4.2" class="middle"  /></a></span>
                    <a href="#lyZoom" class="btn_zoom zoom_layer_open btn_open_layer"><img src="/data/skin/front/mime/img/icon/goods_icon/icon_zoom.png" alt=""></a>
                </div>
                <div id="testZoom" style="display:none">
                    <img src="/data/goods/21/03/10/64/64_magnify_014.jpg" width="500" alt="시그니처 에스투드 프로텍터 4.2" title="시그니처 에스투드 프로텍터 4.2" class="middle"  />
                </div>
                <!-- //item_photo_big -->
                <div class="item_photo_slide">
                    <button type="button" class="slick_goods_prev"><img src="/data/skin/front/mime/img/icon/shop_cart/btn_slide_prev.png" alt="이전 상품 이미지"/></button>
                    <ul class="slider_wrap slider_goods_nav">
                        <li><a href="javascript:gd_change_image('0', 'detail');"><img src="/data/goods/21/03/10/64/t50_64_detail_031.jpg" width="68" alt="시그니처 에스투드 프로텍터 4.2" title="시그니처 에스투드 프로텍터 4.2" class="middle"  /></a></li>
                    </ul>
                    <button type="button" class="slick_goods_next"><img src="/data/skin/front/mime/img/icon/shop_cart/btn_slide_next.png" alt="다음 상품 이미지"/></button>
                </div>
                <!-- //item_photo_slide -->
            </div>
            <!-- //item_photo_view -->
        </div>
        <!-- //item_photo_view_box -->

        <form name="frmView" id="frmView" method="post">
            
    <!-- //item_info_box -->
    
    <!-- 상단 비쥬얼 -->
    <div class="goods_wrap goods_64">
        <div class="top_box">
            <div class="top_visual bg64">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
시그니처 에스투드 프로텍터 4.2
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">SIGNATURE ESTUD PROTECTOR 4.2</div>
                <div class="show_text2" style="margin:30px 0;text-align:center;font-size:20px;">
                    지금구매 시 성분배합 강화로 제품력이 향상된<br>
                    '시그니처 에스투드 프로텍터 5.2'로 발송됩니다.
                </div>
                <div class="goods_volume minerva">
                    제품용량 : 170ml
                </div>

                <%-- price & button 영역 --%>
                <%@ include file="/product/detail_view/goods/goods_btn.jspf" %>


                <div style="width:617px;margin:50px  auto 0;">
                    <img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/banner.jpg" alt="">
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
<div class="item_goods_sec view64">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 64. 시그니처 에스투드 프로텍트 4.2 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_64.jpg" style="display:none;">
		<link rel="stylesheet" href="/data/skin/front/mime/css/swiper.min.css">
		<script type="text/javascript" src="https://www.demar3.com/data/skin/front/mime/js/jquery/swiper.min.js"></script>
		<style type="text/css">
			.swiper-slide {text-align:center;}
			.slide1_wrap {position:relative;}
			.slide1_wrap img {margin-bottom:0 !important;}
			.slide1_wrap .swiper-button-prev {width:18px !important;height:50px !important;left:2px !important;top:100px !important;background:url('/data/skin/front/mime/img/goods/new/64/btn_slide_prev.png') no-repeat center !important;margin-top:0 !important;}
			.slide1_wrap .swiper-button-next {width:18px !important;height:50px !important;right:3px !important;top:100px !important;background:url('/data/skin/front/mime/img/goods/new/64/btn_slide_next.png') no-repeat center !important;margin-top:0 !important;}

			.slide2_wrap {width:870px;background:#000;position: relative;padding:20px 48px 28px 48px;}
			.slide2_wrap img {margin-bottom:0 !important;}
			.slide2_wrap .swiper-button-prev {width:21px !important;height:44px !important;left:20px !important;top:41px !important;background:url('/data/skin/front/mime/img/goods/new/64/btn_slide2_prev.png') no-repeat center !important;margin-top:0 !important;}
			.slide2_wrap .swiper-button-next {width:21px !important;height:44px !important;right:20px !important;top:41px !important;background:url('/data/skin/front/mime/img/goods/new/64/btn_slide2_next.png') no-repeat center !important;margin-top:0 !important;}
		</style>

		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg64 mb200">
					<div class="img_title">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						인류가 방치한<br>
						63% 데미지타임
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/323990951.sd.mp4?s=17634a1fd07904f2f346c503094d324fcd991273&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">
							※ 자외선 등 외부환경으로 피부가 손상되는 낮16시간을 데미지타임으로 칭했습니다. 실제 피부손상 관련논문을 조사하여 데미지타임 동안 누적 피부손상을 가상 표현한 것으로, 하루 피부손상치를 표현한 것이 아닙니다.
							참고논문: UV-Irradiation depletes an tioxidants and causes oxidative damage in a model of human skin / Skin Reactive Oxygen Species, and Circadian Clocks Mary
							A Nciaye, 1Minakshi, I Gary S. Wood, 1, 2 and Nihal Ahmad1/Analysis of Crcadian and Ultradian Rhythms of Skin Surface Properties of Face and Forearm of Healthy Women
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						데미지타임 집중 연구<br>
						고흡수 유도 나노기술 적용
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/323990967.hd.mp4?s=2e1bf6289ac6f88417b3eba5fa8a3dbccacab671&amp;profile_id=174" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/detail_img1.jpg" alt="" style="margin-bottom:10px;">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						검증된<br>
						피부 개선 효과
					</div>
					<div class="detail_desc" style="letter-spacing: -0.5px;">
						대한민국 피부임상시험센터 (주)OATC에서 4가지 피부 개선 항목 유효성 검증과 안전성 테스트를 완료하였습니다.<br>
						인체적용시험 결과, 시그니처 에스투드 프로텍터 4.2는 모공 면적, 피부 치밀도, 피부결, 피부 탄력 개선에 도움을 주는 제품임을 입증 받았습니다.
					</div>
					<div class="detail_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/detail_img3.jpg" alt="">
						<div class="txt right">
							* (주)OATC에서 발급받은 결과보고서의 표지 이미지를 재구성하였습니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						피부 치밀도 증가<br>
						피부 탄력 증가
					</div>
					<div class="detail_desc">
						시그니처 에스투드 프로텍터 4.2를 4주 동안 사용한 결과, 피부 치밀도는 사용전과 비교하여<br>
						통계적으로 12.84% 증가하였다. 피부 탄력은 사용전과 비교하여 통계적으로 6.60% 증가하였다.

						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/detail_img4.jpg" alt="" style="position: absolute;right:0;bottom:-25px;">
					</div>
					<div class="video_box mb0">
						<video src="https://player.vimeo.com/external/576619357.hd.mp4?s=24f894dc9cc399e23deba47110de1df94ddb5237&amp;profile_id=174" muted="" playsinline="" autoplay="" loop="" poster=""></video>
					</div>

					<div class="slide1_wrap">
						<div class="swiper-container slide1">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_1.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_2.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_3.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_4.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_5.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_6.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_7.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_8.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_9.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_10.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_11.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_12.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_13.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_14.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_15.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_16.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_17.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_18.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_19.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_20.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_21.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide1_22.png" alt="">
								</div>
							</div>
						</div>
						<div class="swiper-button-next slide1_next"></div>
						<div class="swiper-button-prev slide1_prev"></div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						모공 축소 효과
					</div>
					<div class="detail_desc">
						흡수 촉진 리포좀으로 피부 깊숙이 스며들어 모공 곳곳에 영양을 채워줍니다.<br>
						인체적용시험 결과 모공 축소 효과를 입증 받았습니다.

						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/detail_img5.jpg" alt="" style="position: absolute;right:0;bottom:-25px;">
					</div>
					<div class="video_box mb0">
						<video class="mb0" src="https://player.vimeo.com/external/576619390.sd.mp4?s=8dd3f0aea833e5568459dad3a09decc2f1b6c22a&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
					</div>

					<div class="slide2_wrap">
						<div class="swiper-container slide2">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_1.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_2.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_3.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_4.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_5.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_6.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_7.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_8.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_9.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_10.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_11.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_12.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_13.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_14.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_15.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_16.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_17.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_18.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_19.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_20.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_21.png" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/slide2_22.png" alt="">
								</div>
							</div>
						</div>
						<div class="swiper-button-next slide2_next"></div>
						<div class="swiper-button-prev slide2_prev"></div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						사용자 만족도 95.45%<br>
						"메이크업 시 모공 부각이 현저히 줄었다."
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/576619438.sd.mp4?s=3199a836774528204632524d67d54fe1a3078b8c&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt right">
							* 이해를 돕기 위한 개인의 리뷰 영상입니다.
						</div>
					</div>
					<div class="detail_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/detail_img6.jpg" alt="">
						<div class="txt right" style="padding-right:75px;">
							* (주)OATC에서 받은 유효성 평가 결과보고서를 수치의 조작없이 재구성한 이미지입니다.
						</div>
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg2"></div>
					<div class="detail_step">
						<div class="detail_img_box mb120">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>나비존에 늘어진 세로 모공이 신경쓰인다.</li>
								<li>날마다 칙칙하고 건조한 피부가 신경쓰인다.</li>
								<li>낮 시간 외부 활동량이 많아 보호가 필요하다.</li>
								<li>메이크업이 남들보다 너무 빨리 뜨는 느낌이다.</li>
								<li>에스테틱 전용 대용량 앰플을 찾고 있다.</li>
								<li>지친 피부에 활력이 필요하다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/64/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							<b>스킨, 로션 대신 사용 가능한 고효능 앰플입니다.</b><br>
							세안 직후 스킨 케어 첫 단계에 사용해주세요.(스킨, 로션 생략)<br>
							단, 피부 타입에 따라 크림을 함께 사용하시는 것을 권해드립니다.
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
			new Swiper('.slide1', {
				slidesPerView: 7,
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
				slidesPerView: 7,
				speed : 600,
				loop : true,
				autoplay : {
					delay : 1000,
					disableOnInteraction: false
				},
				navigation: {
					nextEl: '.slide2_next',
					prevEl: '.slide2_prev',
				}
			});
		</script>

		<!-- //64. 시그니처 에스투드 프로텍트 4.2 -->
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
                    <div class="q">1. 바르는 순서가 어떻게 되나요?</div>
                    <div class="a">
                        스킨+로션 대신 사용 가능한 고효능 앰플입니다. 세안 직 후 스킨케어 첫 단계에 사용해주세요. (스킨,로션 생략)
                    </div>
                </li>
                <li>
                    <div class="q">2. 추천하는 사용법이 있나요?</div>
                    <div class="a">
                        시그니처 프로텍터는 낮 동안의 피부를 보호하도록 고안된 앰플입니다.<br>
                        시그니처 알페 디 36 앰플은 수면시간동안 피부회복을 돕도록 설계됐습니다.<br>
                        저녁엔 시그니처 프로텍터 대신 '시그니처 알페 디 36 앰플'을 사용해주시면 훨씬 효과적입니다.
                    </div>
                </li>
                <li>
                    <div class="q">3. 시그니처 프로텍터 하나만 사용해도 되나요?</div>
                    <div class="a">
                        스킨+로션기능을 대체하도록 만들어져, 단독사용이 가능합니다.<br>
                        단, 피부타입에 따라 크림을 함께 사용하시는 것을 권해드립니다.
                    </div>
                </li>
                <li>
                    <div class="q">4. 기존에 바르던 스킨과 로션을 함께 쓴다면 어떤 순서로 사용해야 하나요?</div>
                    <div class="a">
                        스킨 > 시그니처 프로텍터 > 로션 > (크림) 순으로 사용해주시면 됩니다.
                    </div>
                </li>
                <li>
                    <div class="q">5. 자외선 차단제나 메이크업 제품을 발라도 되나요?</div>
                    <div class="a">
                        스킨 케어 마무리 후 자외선 차단제, 메이크업 제품을 바르셔도 됩니다.
                    </div>
                </li>
                <li>
                    <div class="q">6. 임신 중 사용이 가능한가요?</div>
                    <div class="a">
                        임신 중 사용 가능합니다. 다만, 임신 중에는 호르몬 변화의 영향으로 평소보다 피부가 민감할 수 있으므로<br>
                        팔 안쪽 등에 소량 테스트 후 사용을 권해드립니다.
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
                        <a href="javascript:gd_open_write_popup('goodsqa', '64')" class="write">문의 작성하기</a>
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
                        170ml
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
                        병풀추출물, 글리세린, 메틸프로판다이올, 글리세레스-26, 정제수, 1,2-헥산다이올, 나이아신아마이드, 에탄올, 베타인, 트레할로오스, 판테놀, 에델바이스추출물, 황금추출물, 편백잎추출물, 피토스핑고신, 오레가노잎추출물, 스피드웰추출물, 무화과추출물, 당아욱추출물, 레몬밤잎추출물, 아데노신, 레이디스맨틀추출물, 흰버드나무껍질추출물, 육계나무껍질추출물, 엘더꽃추출물, 쇠비름추출물, 소엽맥문동뿌리추출물, 서양톱풀추출물, 페루기네움철쭉추출물, 페퍼민트잎추출물, 황산앵초추출물, 하이드로제네이티드레시틴, 소듐하이알루로네이트, 폴리글리세릴-10라우레이트, 노티드랙추출물, 카보머, 트로메타민, 셀룰로오스검, 글리세릴폴리메타크릴레이트, 월귤잎추출물, 다이소듐이디티에이, 카라멜, 세라마이드엔피, 프로필렌글라이콜, 아라비아고무나무검, 말토덱스트린, 시트릭애씨드, 화산재, 소듐하이드록사이드, 락토바실러스/콩발효추출물, 향료, 펜틸렌글라이콜, 카프릴릴글라이콜, 에틸헥실글리세린, 소듐벤조에이트, 포타슘솔베이트, 리날룰
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        낮 16시간 데미지를 연구한 노하우를 담은 대용량 앰플입니다.<br>
                        자외선에도 변질 없는 특수성분으로 스킨대신 아침에 사용하세요.<br>
                        (밤시간용 시그니처 알페 디 36 앰플과 함께 사용하면 더욱 좋습니다.)
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
