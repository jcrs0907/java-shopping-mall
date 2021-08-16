<%@page import="web.data.dto.ReviewDTO"%>
<%@page import="java.util.List"%>
<%@page import="web.data.dao.ReviewDAO"%>
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
    <div class="goods_wrap goods_28">
        <div class="top_box">
            <div class="top_visual bg28">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
비트 로제 폼클렌저
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">VIT ROISE FOAM</div>
                <div class="show_text2" style="margin:30px 0;text-align:center;font-size:20px;">
                    거품력이 향상된 리뉴얼 제품입니다.
                </div>
                <div class="goods_volume minerva">
                    제품용량 : 100ml
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
<div class="item_goods_sec view28">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 28. 비트 로제 폼클렌저 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_28.jpg" style="display:none;">
		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg28 mb200">
					<div class="img_title">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/28/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						모공 속 노폐물<br>
						축적 과정
					</div>
					<div class="detail_desc">
						유해환경으로부터 무방비하게 노출되어 있는 현대인들의 피부, <br>
						이것들은 피부에 달라붙어 모공을 막거나, 깊숙이 침투하여 해를 끼친다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/343610525.sd.mp4?s=0f3b81b234e52635b1e15336e2bd6cddcd812347&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt right">
							* 이해를 돕기 위한 영상 입니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						노폐물 세정을<br>
						돕는 미세거품
					</div>
					<div class="detail_desc">
						피부를 겉도는 가벼운 거품으로는 모공 속 노폐물을 깨끗하게 세정하기 어렵습니다.<br>
						비트 로제 폼클렌저는 노폐물 세정에 도움을 줄 수 있는 진득하고 미세한 거품을 적용했습니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/341995496.sd.mp4?s=0ff3cd8043427c4720426a924e961a2ca80962e7&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">※ 참고 영상은 피부 확대 촬영 기기인 FXC500DE로 촬영한 영상이며, 500배율로 확대한 실제 피부 영상입니다.</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						핵심 성분의 특성에 따른<br>
						탁월한 세정력
					</div>
					<div class="detail_desc">
						단순히 잘 씻기는 느낌이 드는 것과 실제로 잘 씻기는 것은 다릅니다.<br>
						중요한 것은 노폐물을 세정하는 실제 세정력 입니다.
					</div>
					<div class="video_box mb0">
						<video class="mb0" src="https://player.vimeo.com/external/341995545.sd.mp4?s=44bbf786eb4df6b69a42048146f521f0171867b2&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="float_box">
							<div class="txt center desc">세안 전 피부에 남아 있는 노폐물</div>
						</div>
						<div class="float_box">
							<div class="txt center desc">비트 로제 폼 클렌저 사용 후</div>
						</div>
					</div>
					<div class="detail_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/28/detail_img2.jpg" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						피부 개선 성분 조사
					</div>
					<div class="detail_desc">
						디마르3는 유해한 외부 환경으로부터 피부가 겪을 수 있는 여러 원인자에 대해<br>
						조사하였으며, 피부 개선에 대한 가능성을 제시하였습니다.
						
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/28/detail_img3.jpg" alt="" style="position:absolute;right:0;top:-71px;">
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/343610487.sd.mp4?s=5d4058fb896b28efb6a7b4d1f30c9d77d7417f45&amp;profile_id=164" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">
							※ 이해를 돕기 위한 영상이며 실제 임상결과와는 무관합니다.
						</div>
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg28"></div>
					<div class="detail_step" style="padding-top:70px;">
						<div class="detail_img_box mb50">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/28/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>유해 환경에 자주 노출되고 있다.</li>
								<li>이중세안을 하지 않아도 메이크업을 깨끗이 지우고싶다.</li>
								<li>순하지만 세정력이 좋은 세안제가 필요하다.</li>
								<li>화이트헤드, 블랙헤드가 보인다.</li>
								<li>세안 후 피부가 당기지 않았으면 좋겠다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/28/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							실내외 활동 후, 또는 일상에서 유해 환경으로 인해 피부가<br>
							답답할 때, 물기가 있는 젖은 손에 비트로제 폼클렌저를<br>
							적당량 덜어내어 <b>충분히 거품을 내고 얼굴에 부드럽게<br>
							마사지 하듯 세안</b> 을 한 후 미온수로 헹구어 냅니다.
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //28. 비트 로제 폼클렌저 -->
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
                    <div class="q">2. 적정 사용량이 있나요?</div>
                    <div class="a">
                        기존에 사용하시던 세안제만큼 사용하시면 되지만,제품 특성상 적은 사용량에도 충분히 세정이 가능하도록 만들어진 제품입니다.
                    </div>
                </li>
                <li>
                    <div class="q">3. 2차 세안용 제품인가요?</div>
                    <div class="a">
                        선크림,파운데이션 등의 간단한 화장은 1차 세안제 없이 본 제품만으로도 세안이 가능합니다.<br>
                        피부 타입에 따라조금 더 꼼꼼한 세안을 원하신다면 1차 세안제를 함께 사용해 주셔도 됩니다.
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
                        <a href="javascript:gd_open_write_popup('goodsqa', '28')" class="write">문의 작성하기</a>
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
                        100ml
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
                        無
                    </td>
                </tr>
                <tr>
                    <th>화장품 제조자 및 책임판매업자</th>
                    <td>
                        화장품 제조업자 : (주)코리아나바이오<br/>
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
                        정제수, 스테아릭애씨드, 글리세린, 미리스틱애씨드, 포타슘하이드록사이드, 아크릴레이트코폴리머, 라우릭애씨드, 글리세릴스테아레이트, 바이오사카라이드검-4, 연꽃뿌리추출물, 비타민나무열매추출물, 흑효모발효물, 모과추출물, 육계나무껍질추출물, 감나무잎추출물, 쑥잎추출물, 크리산텔룸 인디쿰추출물, 녹차추출물, 글라이콜다이스테아레이트, 포타슘코코일글리시네이트, 포타슘코코에이트, 숯가루, 부틸렌글라이콜, 1,2-헥산다이올, 향료, 다이소듐이디티에이
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
                        
                        4. 눈에 직접 닿지 않도록 할 것. 눈에 들어갔을 경우 물로 깨끗이 씻어낼 것


    



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
