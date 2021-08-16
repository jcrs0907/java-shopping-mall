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
    <div class="goods_wrap goods_59">
        <div class="top_box">
            <div class="top_visual bg59">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
렘로즈 라이트 클렌징 오일
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">REM-ROSE LIGHT CLEANSING OIL</div>
                <div class="goods_volume minerva">
                    200ml
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
<div class="item_goods_sec view59">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 59.렘로즈 라이트 클렌징 오일 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_59.jpg" style="display:none;">
		<link rel="stylesheet" href="https://www.demar3.com/data/skin/front/mime/css/swiper.min.css">
		<script type="text/javascript" src="https://www.demar3.com/data/skin/front/mime/js/jquery/swiper.min.js"></script>
		<style>
			.swiper-slide {text-align:center;}
			.slide1 {width:870px;height:214px;box-sizing:border-box;margin:0 auto;}
			.slide1_wrap {position:relative;margin-bottom:10px;}
			.slide1_wrap .text {font-size:16px;color:#242222;overflow:hidden;margin-bottom:20px;}
			.slide1_wrap .text span {float:right;}
			.slide1_wrap .swiper-button-prev {width:16px !important;height:29px !important;left:-30px !important;background:url('https://www.demar3.com/data/skin/front/mime/img/goods/new/59/btn_prev.png') no-repeat center !important;margin-top:-15px !important;}
			.slide1_wrap .swiper-button-next {width:16px !important;height:29px !important;right:-30px !important;background:url('https://www.demar3.com/data/skin/front/mime/img/goods/new/59/btn_next.png') no-repeat center !important;margin-top:-15px !important;}
			
		</style>
		
		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg59 mb200">
					<div class="img_title">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/59/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						세안 후 노폐물이 남아있을 확률 87%
					</div>
					<div class="detail_desc">
						피부 틈새에 엉겨 붙은 화장품 찌꺼기는 쉽게 제거되지 않고 자극을 만듭니다.
					</div>
					<div class="slide1_wrap">
						<div class="swiper-container slide1">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/59/slide1.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/59/slide2.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/59/slide3.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/59/slide4.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/59/slide5.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/59/slide6.jpg" alt="">
								</div>
								<div class="swiper-slide">
									<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/59/slide7.jpg" alt="">
								</div>
							</div>
						</div>
						<div class="swiper-button-next slide1_next"></div>
						<div class="swiper-button-prev slide1_prev"></div>
					</div>
					<div class="detail_img_box center">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/59/detail_img1.jpg" alt="" style="margin-top:20px;">
						<div class="txt left">
							참고문헌 leansing Routine and Facial Cleanser Selection Patterns Based on Facial Cleanser Purchase Tendencies<br>
							- Targeting Women Aged 20 to 30/J Invest Cosmetol/2018 / A Study on Skin Conditions by Water-Soluble Cleansers/<br>
							Asian J Beauty Cosmetol/2010 외 논문자료 활용<br><br>
							
							* 성인여성 23명 중 20명(약 87%)의 피부에서 세안 후 화장품찌꺼기를 발견했습니다.<br>
							* 위 내용은 연구내용을 기반으로 Natural substances R&amp;D center(2020)에서 재구성, 측정한 내용입니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						미세 흡착 포뮬러가<br>
						화장품찌꺼기를 흡착
					</div>
					<div class="detail_desc">
						피부에 남아 자극이 되는 미세 노폐물을 가볍게 세정합니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/483364316.sd.mp4?s=9a991891389ce6ad038c605baaae592d128f2b05&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						피부굴곡을 따라 퍼지는<br>
						틈새밀착형 세정
					</div>
					<div class="detail_desc">
						피부결을 따라 빈틈없이 스며들어 청결한 피부상태에 도움을 줍니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/483364323.sd.mp4?s=d7987642f85968b63da5b55d98b5325f7faecbbb&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						물처럼 남김 없이 깨끗한 사용감
					</div>
					<div class="detail_desc">
						물처럼 가벼운 사용감으로 짙은 메이크업도 빠르게 녹이고 지워줍니다.
					</div>
					<div class="video_box mb150">
						<video src="https://player.vimeo.com/external/477831045.sd.mp4?s=44eab5a45ac7cb2633b51a538f1cfc471af575cf&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
					</div>
					<div class="detail_img_box center">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/59/detail_img2.jpg" alt="">
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg59"></div>
					<div class="detail_step" style="padding-top:90px;">
						<div class="detail_img_box mb80">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/59/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>진한 메이크업 후 남김없는 세안을 원하시는 분</li>
								<li>피부에 부담없이 순한 클렌징 제품을 찾으시는 분</li>
								<li>클렌징오일의 미끌거리는 잔여감을 꺼리시는 분</li>
								<li>세안 후 남아있는 화장품찌꺼기가 우려스러운 분</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/59/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							물기 없는 얼굴에 약 2~3티스푼의 양으로 롤링하여<br>
							메이크업과 노폐물을 지운 뒤, 흐르는 물로 충분히 세안해 줍니다<br><br>
							TIP<br>
							필요에 따라 2차세안 해주셔도 좋습니다.
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script>
			new Swiper('.slide1', {
				speed : 600,
				loop : true,
				autoplay : {
					delay : 3000,
					disableOnInteraction: false
				},
				navigation: {
					nextEl: '.slide1_next',
					prevEl: '.slide1_prev',
				}
			});
		</script>
		
		<!-- //59.렘로즈 라이트 클렌징 오일 -->
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
                    <div class="q">1. 마스카라도 지워지나요?</div>
                    <div class="a">
                        강력한 세정력으로 마스카라나 틴트 등 진한 메이크업도 부드럽게 지워냅니다.
                        눈에 오일이 들어가지 않도록 주의하여 롤링한 뒤, 깨끗한 물로 수차례 충분히 씻어주세요.
                    </div>
                </li>
                <li>
                    <div class="q">2. 메이크업 세정 시 단독으로 사용가능한가요?</div>
                    <div class="a">
                        진한 메이크업도 말끔하게 지워지도록 설계한 제품으로, 단독으로 사용 가능하나
                        필요에 따라 폼클렌징 등으로 2차세안을 해주시길 권장합니다.
                    </div>
                </li>
                <li>
                    <div class="q">3. 임산부가 사용해도 되나요?</div>
                    <div class="a">
                        본 제품은 저자극인체적용시험을 완료한 순한 클렌징오일입니다. 피부에 부담없이 사용가능한 저자극 제품으로 확인됐으나
                        개개인마다 체질이 다르므로 전문의와 상담 후 사용하시기를 권장합니다.
                    </div>
                </li>
                <li>
                    <div class="q">4. 사용을 권장하는 피부 타입은 무엇인가요?</div>
                    <div class="a">
                        피부타입을 가리지 않고 편안하게 사용 가능하나 개인마다 체질이 다르므로 소량 테스트 후 사용을 권장합니다.
                    </div>
                </li>
                <li>
                    <div class="q">5. 본 제품의 pH는 얼마인가요?</div>
                    <div class="a">
                        약산성에 해당되는 pH 4.2 - pH5.2입니다.
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
                        <a href="javascript:gd_open_write_popup('goodsqa', '59')" class="write">문의 작성하기</a>
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
                        200ml
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
                        無
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
                        피이지-7글리세릴코코에이트, 정제수, 글리세린, 다이프로필렌글라이콜, 아이소헥사데칸,에틸헥실팔미테이트, 아이소도데케인, 펜틸렌글라이콜, 로즈힙열매오일,보리지씨오일, 아보카도오일, 포도씨오일, 호호바씨오일, 알란토인, 하이드록시아세토페논, 다이포타슘글리시리제이트, 메틸메타크릴레이트크로스폴리머, 시트릭애씨드, 소듐시트레이트, 다이소듐이디티에이, 에틸헥실글리세린, 향료
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        적당량을 덜어 물기 없는 얼굴에 골고루 마사지하듯 문질러 준 뒤, 흐르는 물로 충분히 세안해 줍니다.
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
