<%@page import="web.data.dao.ReviewDAO"%>
<%@page import="web.data.dto.ReviewDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%><%@ page language="java" contentType="text/html; charset=UTF-8"
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
    <div class="goods_wrap goods_74">
        <div class="top_box">
            <div class="top_visual bg74">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
시타 듀 테라피 샴푸
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">CITA DU THERAPY SHAMPOO</div>
                <div class="goods_volume minerva">
                    제품용량 : 400ml
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
<div class="item_goods_sec view74">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 74. 시타 듀 테라피 샴푸 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_74.jpg" style="display:none;">
		<link rel="stylesheet" href="https://www.demar3.com/data/skin/front/mime/css/swiper.min.css">
		<script type="text/javascript" src="https://www.demar3.com/data/skin/front/mime/js/jquery/swiper.min.js"></script>
		<style>
			.swiper-slide {text-align:center;}
			.slide1_wrap {position:relative;padding:0 30px;}
			.slide1_wrap img {margin-bottom:0 !important;}
			.slide1_wrap .swiper-button-prev {width:30px !important;height:210px !important;left:0 !important;top:0 !important;background:url('/data/skin/front/mime/img/goods/new/74/btn_slide_prev.jpg') no-repeat center !important;margin-top:0 !important;}
			.slide1_wrap .swiper-button-next {width:30px !important;height:210px !important;right:0 !important;top:0 !important;background:url('/data/skin/front/mime/img/goods/new/74/btn_slide_next.jpg') no-repeat center !important;margin-top:0 !important;}
		</style>

		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg74 mb200">
					<div class="img_title">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						두피 모공에 쌓인<br>
						끈적한 피지와 노폐물 흡착
					</div>
					<div class="detail_desc">
						고밀도거품이 두피와 모발 끝까지 흡착돼<br>
						엉겨붙은 이물질을 제거합니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/581075893.sd.mp4?s=5d4ff187b5d5e0e8f24ceba1c4faadb4ba890e0d&amp;profile_id=164" muted="" playsinline="" autoplay="" loop="" poster=""></video>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						모공을 막지 않아<br>
						오랫동안 지속되는 상쾌함
					</div>
					<div class="detail_desc">
						지성두피에 특화된 정화성분 25종 함유로<br>
						청결한 두피 상태가 오래 지속됩니다.
					</div>
					<div class="video_box mb150">
						<video src="https://player.vimeo.com/external/581075934.sd.mp4?s=53a577c1810da1aec7941d0cab4de8fa3d4b0316&amp;profile_id=164" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">
							* 피부타입과 사용방식에 따라 개인차가 있을 수 있습니다.
						</div>
					</div>
					<div class="detail_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/detail_img1.jpg" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title center none">
						다년 간의 연구 끝에 찾아낸<br>
						38종 원료 배합
					</div>
					<div class="detail_desc center">
						두피∙모발케어 성분 38여 종을 최적의 비율로 배합했습니다.
					</div>
					<div class="detail_img_box center">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/detail_img2.jpg" alt="">
						<div class="txt" style="margin-left:65px;">
							* 원료의 특성을 연구했습니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title center none">
						피부과 전문의<br>
						저자극 판정 완료
					</div>
					<div class="detail_desc center">
						피부과 전문의 검증하에<br>
						저자극 제품으로 판정 받았습니다.
					</div>

					<div class="slide1_wrap">
						<div class="swiper-container slide1">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide1.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide2.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide3.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide4.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide5.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide6.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide7.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide8.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide9.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide10.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide11.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide12.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide13.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide14.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide15.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide16.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide17.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide18.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide19.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide20.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide21.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide22.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide23.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide24.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide25.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/slide26.jpg" alt="">
								</div>
							</div>
						</div>
						<div class="swiper-button-next slide1_next"></div>
						<div class="swiper-button-prev slide1_prev"></div>
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg74"></div>
					<div class="detail_step" style="padding-top:75px;">
						<div class="detail_img_box mb80">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/74/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title" style="margin-bottom:10px;">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>감아도 금방 떡지고 냄새나는 두피로 고민이신 분</li>
								<li>두피가 약하고 민감해 저자극 샴푸를 찾고 있는 분</li>
								<li>두피세정과 모발영양을 동시에 해결하고 싶으신 분</li>
								<li>쉽게 떡져 모발 볼륨감이 없으신 분</li>
								<li>두피에서 피지와 각질이 생기시는 분</li>
								<li>집에서 쉽게 두피케어를 하고 싶으신 분</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_text_box">
<!--						<div class="video_box">-->
<!--							<video src="https://player.vimeo.com/external/343610487.sd.mp4?s=5d4058fb896b28efb6a7b4d1f30c9d77d7417f45&profile_id=164" muted="" playsinline="" autoplay="" loop="" poster=""></video>-->
<!--						</div>-->
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							적당량을 덜어 젖은 두피와 모발에<br>
							거품을 내어 마사지한 뒤 깨끗이 헹궈 냅니다.
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
			new Swiper('.slide1', {
				slidesPerView: 5,
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
		</script>

		<!-- //74. 시타 듀 테라피 샴푸 -->
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
                    <div class="q">1. 사용을 권장하는 피부타입이 있을까요?</div>
                    <div class="a">
                        머리를 감아도 금방 떡지는 지성두피도 쾌적하게 두피상태를 유지할 수 있도록 고안된 제품입니다.
                        두피세정 뿐만 아니라 모발영양까지 고려해 마무리감이 건조하지 않아 전 피부타입에 무리없이 사용 가능합니다.
                        다만 개인마다 체질이 다르므로 소량 테스트 후 사용하시기 바랍니다.
                    </div>
                </li>
                <li>
                    <div class="q">2. 샴푸 후 트리트먼트나 컨디셔너를 반드시 사용해야 할까요?</div>
                    <div class="a">
                        모발에 꽉 찬 영양감을 심어주는 부드러운 사용감의 샴푸로, 단독 사용이 가능하나
                        개인 모발 상태에 따라 모발 단백질 보호를 위해 린스, 트리트먼트 등을 추가로 사용해주셔도 좋습니다.
                    </div>
                </li>
                <li>
                    <div class="q">3. pH가 얼마인가요?</div>
                    <div class="a">
                        건강한 두피 유지와 세정에 도움을 주는 약산성 pH5.0(±1.0) 입니다.
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
                        <a href="javascript:gd_open_write_popup('goodsqa', '74')" class="write">문의 작성하기</a>
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
                        400ml
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
                        탈모 증상 완화 기능성
                    </td>
                </tr>
                <tr>
                    <th>화장품 제조자 및 책임판매업자</th>
                    <td>
                        화장품 제조업자 : 한국콜마(주)<br/>
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
                        정제수, 소듐C14-16올레핀설포네이트, 소듐메틸코코일타우레이트, 라우릴베타인, 소듐클로라이드, 라우릴하이드록시설테인, 인도멀구슬나무잎추출물, 맥아추출물, 인도멀구슬나무꽃추출물, 에난티아 클로란타껍질추출물, 서양산딸기잎추출물, 흰버드나무껍질추출물, 편백잎추출물, 오레가노잎추출물, 락토바실러스/콩발효추출물, 육계나무껍질추출물, 쇠비름추출물, 황금추출물, 삼나무잎추출물, 연꽃잎추출물, 유칼립투스잎추출물, 인동덩굴꽃추출물, 스페인감초뿌리추출물, 퉁퉁마디추출물, 도꼬마리열매추출물, 당느릅나무뿌리추출물, 탱자추출물, 도둑놈의지팡이뿌리추출물, 생강추출물, 마늘추출물, 밀싹추출물, 연필향나무오일, 페퍼민트오일, 센티드제라늄꽃오일, 구주소나무잎오일, 후추씨오일, 피피지-3카프릴릴에터, 시트릭애씨드, 엘-멘톨, 살리실릭애씨드, 폴리쿼터늄-47, 덱스판테놀, 다이포타슘글리시리제이트, 부테스-3, 소듐벤조트라이아졸릴부틸페놀설포네이트, 부틸렌글라이콜, 트라이부틸시트레이트, 말토덱스트린, 다이프로필렌글라이콜, 효모발효여과물, 올레아놀릭애씨드, 메틸다이하이드로자스모네이트, 페네틸알코올, 1,2-헥산다이올, 소듐벤조에이트, 제라니올, 시트로넬올, 리모넨
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        적당량을 덜어 젖은 두피와 모발에 거품을 내어 마사지한 뒤 깨끗이 헹궈 냅니다.
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
                        


    


                        4. 모발용 샴푸<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;1) 눈에 들어갔을 때에는 즉시 씻어낼 것<br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;2) 사용 후 물로 씻어내지 않으면 탈모 또는 탈색의 원인이 될 수 있으므로 주의할 것

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
