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
                    <span class="img_photo_big"><a href="#lyZoom" id="mainImage" class="zoom_layer_open btn_open_layer"><img src="/data/goods/21/05/19/71/71_detail_073.jpg" width="500" alt="시그니처 비트 로제 토너" title="시그니처 비트 로제 토너" class="middle"  /></a></span>
                    <a href="#lyZoom" class="btn_zoom zoom_layer_open btn_open_layer"><img src="/data/skin/front/mime/img/icon/goods_icon/icon_zoom.png" alt=""></a>
                </div>
                <div id="testZoom" style="display:none">
                    <img src="/data/goods/21/05/19/71/71_magnify_057.jpg" width="500" alt="시그니처 비트 로제 토너" title="시그니처 비트 로제 토너" class="middle"  />
                </div>
                <!-- //item_photo_big -->
                <div class="item_photo_slide">
                    <button type="button" class="slick_goods_prev"><img src="/data/skin/front/mime/img/icon/shop_cart/btn_slide_prev.png" alt="이전 상품 이미지"/></button>
                    <ul class="slider_wrap slider_goods_nav">
                        <li><a href="javascript:gd_change_image('0', 'detail');"><img src="/data/goods/21/05/19/71/t50_71_detail_073.jpg" width="68" alt="시그니처 비트 로제 토너" title="시그니처 비트 로제 토너" class="middle"  /></a></li>
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
    <div class="goods_wrap goods_71">
        <div class="top_box">
            <div class="top_visual bg71">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
시그니처 비트 로제 토너
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">SIGNATURE VIT ROISE TONER</div>
                <div class="show_text2" style="margin:30px 0;text-align:center;font-size:20px;">
                    성분배합 강화로 제품력이 향상된 제품입니다.
                </div>
                <div class="goods_volume minerva">
                    제품용량 : 150ml
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
<div class="item_goods_sec view71">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 71. 시그니처 비트 로제 토너 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_71.jpg" style="display:none;">
		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg71 mb200">
					<div class="img_title">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/71/visual_title.png" alt="">
					</div>
				</div>
				<div class="video_center_box" style="width:100%;height:800px;margin:0 auto 260px;position: relative;overflow: hidden;">
					<video style="width:1680px;position: absolute;left:50%;top:0;margin-left:-840px;" src="https://player.vimeo.com/external/576567866.hd.mp4?s=6cb6fbd76c2dea3347c486480c0132d3632e5e02&amp;profile_id=175" muted="" playsinline="" autoplay="" loop="" poster=""></video>
				</div>
				<div class="view_img" style="width:100%;height:1541px;position:relative;margin:0 auto 260px;overflow: hidden;">
					<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/71/view_img.jpg" alt="" style="position: absolute;left:50%;top:0;margin-left:-960px;">
				</div>
				<div class="video_center_box" style="width:100%;height:800px;margin:0 auto 260px;position: relative;overflow: hidden;">
					<video style="width:1920px;position: absolute;left:50%;top:0;margin-left:-960px;" src="https://player.vimeo.com/external/576567900.hd.mp4?s=0655a9d0372a1203468f2a90b6ec9e366df46bb9&amp;profile_id=175" muted="" playsinline="" autoplay="" loop="" poster=""></video>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						‘실크레이어’ 형성<br>
						유효성분 결합으로 매끈하고 쫀쫀하게
					</div>
					<div class="detail_desc">
						시그니처 비트로제 토너는 유효성분 결합으로 구성되어<br>
						외부자극을 보호하는 실크레이어를 형성 합니다.
					</div>
					<div class="detail_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/71/detail_img4.jpg" alt="">
						<div class="txt">
							* 이해를 돕기 위해 제작된 이미지 입니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						피부 개선에 최적화된<br>
						복합 포뮬러
					</div>
					<div class="detail_desc">
						피부에 유해한 요인들을 연구해<br>
						피부 개선에 도움이 되도록 설계했습니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/343610487.sd.mp4?s=5d4058fb896b28efb6a7b4d1f30c9d77d7417f45&amp;profile_id=164" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">
							* 이해를 돕기 위한 영상이며 실제 임상결과와는 무관합니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						시그니처 비트 로제 토너<br>
						사용 전·후 결과
					</div>
					<div class="detail_desc">
						세안만으로 완벽히 씻기지 못한 잔여물을 닦아내<br>
						더욱 깨끗한 피부로 관리해줍니다.
					</div>
					<div class="video_box">
						<div class="sum" style="overflow:hidden;">
							<video class="mb0" style="width:50%;float:left;" src="https://player.vimeo.com/external/344027957.sd.mp4?s=ed74e7d190799845c7bc92662c99eee854f523d2&amp;profile_id=164" muted="" playsinline="" autoplay="" loop="" poster=""></video>
							<video class="mb0" style="width:50%;float:left;" src="https://player.vimeo.com/external/344027933.sd.mp4?s=0c1bbd8c86a94af45a7d17ac5179201ed1644fe4&amp;profile_id=164" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						</div>
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/71/detail_img1.jpg" alt="" style="margin-bottom: 15px;">
						<div class="txt">
							* 참고 영상은 피부 확대 촬영 기기인 FXC500DE로 촬영한 영상이며, 500배율로 확대한 실제 피부 영상입니다.<br>
							* 개인차가 있을 수 있습니다.
						</div>
					</div>
					<div class="detail_img_box" style="margin-top:240px;">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/71/detail_img3.jpg" alt="">
						<div class="txt">
							* 본 시험은 식약처 화장품 가이드라인 및 해당 기관 표준작업지침서(SOP)에 따라 진행되었습니다.<br>
							* 모든 시험절차는 신뢰성 보증 담당자 점검 하에 진행되었습니다.
						</div>
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg71"></div>
					<div class="detail_step" style="padding-top:180px;">
						<div class="detail_img_box mb80">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/71/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title" style="margin-bottom:10px;">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>세안 후에도 남아있는&nbsp;잔여 노폐물이 걱정된다.</li>
								<li>끈적임없이 촉촉한 영양감의 토너를 찾는다.</li>
								<li>토너 하나로 피부결 케어와 수분보충까지 하고 싶다.</li>
								<li>거칠어진 피부결을 매끄럽고 촉촉하게 정돈하고 싶다.</li>
								<li>메이크업 전 푸석한 피부를 정돈하고 싶다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/71/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							세안 후 화장솜에 적혀 피부결을 정돈합니다.<br>
							추가로 손바닥에 덜어 가볍게 두드리듯 흡수시켜주면<br>
							촉촉함과 윤기가 더욱 오래 지속됩니다.<br><br>

							TIP<br>
							피부가 유독 건조하거나 중요한 날, 토너를 충분히 적힌 화장솜을<br>
							5분 가량 얼굴에 부착해 스킨팩으로 활용하셔도 좋습니다.
						</div>
						<div class="step_title" style="margin-top:160px;">토너 활용법</div>
						<div class="step_text1">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/71/use.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //71. 시그니처 비트 로제 토너 -->
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
                        노폐물관리와 피부개선에 도움을 주는 영양토너로, 관리가 필요한 모든 피부타입에게 추천합니다.
                        다만 개인마다 체질이 다르므로 소량 테스트 후 사용하시기 바랍니다.
                    </div>
                </li>
                <li>
                    <div class="q">2. 바르는 순서가 어떻게 되나요?</div>
                    <div class="a">
                        세안 후 기초 케어 첫 단계에 사용합니다.
                    </div>
                </li>
                <li>
                    <div class="q">3. 사용법이 어떻게 되나요?</div>
                    <div class="a">
                        세안 후 화장솜에 적당량을 덜어낸 후 피부결을 따라 닦아주시거나, 손에 덜어내 피부를 감싸듯 흡수시켜 사용해주시길 권장합니다.
                    </div>
                </li>
                <li>
                    <div class="q">4. 언제 바르면 되나요?</div>
                    <div class="a">
                        아침·저녁, 피부관리가 필요한 모든 시간대에 사용 가능 합니다.
                    </div>
                </li>
                <li>
                    <div class="q">5. 꼭 화장솜과 사용해야 할까요?</div>
                    <div class="a">
                        섬세한 노폐물 관리가 필요할 때는 화장솜에 적혀서, 깊은 보습감을 원하실 때는 손에 덜어 흡수시키듯 발라주시면 더욱 효과적입니다.
                        필요에 따라 사용하시기 바랍니다.
                    </div>
                </li>
                <li>
                    <div class="q">6. 임신 중 사용해도 될까요?</div>
                    <div class="a">
                        저자극 인체적용시험 완료한 제품이나, 임신 중에는 호르몬 영향으로 평소보다 피부가 민감할 수 있으므로 전문의와 상담 후 사용하시기를 권장합니다.
                    </div>
                </li>
                <li>
                    <div class="q">7. pH가 얼마인가요?</div>
                    <div class="a">
                        건강한 피부와 유사한 pH 5.5(± 1.0)입니다.
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
                        <a href="javascript:gd_open_write_popup('goodsqa', '71')" class="write">문의 작성하기</a>
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
                        제조일로부터 36개월
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
                        화장품 제조업자 : 코스맥스(주)<br/>
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
                        정제수, 글리세린, 부틸렌글라이콜, 글리세레스-26, 나이아신아마이드, 펜틸렌글라이콜, 클로렐라 불가리스추출물, 소듐하이알루로네이트, 멕시칸주니퍼오일, 하이드롤라이즈드식물성단백질, 센티드제라늄꽃오일, 로즈마리잎오일, 베르가모트오일, 드럼스틱씨추출물, 블랙윌로우나무껍질추출물, 왕귤껍질오일, 에난티아 클로란타껍질추출물, 다이프로필렌글라이콜, 하이드록시에틸우레아, 1,2-헥산다이올, 베타인, 트레할로오스, 글루코오스, 카프릴릴글라이콜, 프룩토올리고사카라이드, 프룩토오스, 판테놀, 폴리글리세릴-10라우레이트, 프로판다이올, 아크릴레이트/C10-30알킬아크릴레이트크로스폴리머, 에틸헥실글리세린, 트로메타민, 아데노신, 엑토인, 소듐파이테이트, 말토덱스트린, 바이오사카라이드검-4, 락토바이오닉애씨드, 토코페롤, 올레아놀릭애씨드, 시트로넬올, 카라멜
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        스킨사용 단계에서 적당량을 손에 덜어 부드럽게 펴바른 후 두드리며 흡수시켜줍니다.
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
