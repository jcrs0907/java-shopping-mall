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
                    <span class="img_photo_big"><a href="#lyZoom" id="mainImage" class="zoom_layer_open btn_open_layer"><img src="/data/goods/21/03/12/68/68_detail_067.jpg" width="500" alt="시그니처 알페 디 36 앰플" title="시그니처 알페 디 36 앰플" class="middle"  /></a></span>
                    <a href="#lyZoom" class="btn_zoom zoom_layer_open btn_open_layer"><img src="/data/skin/front/mime/img/icon/goods_icon/icon_zoom.png" alt=""></a>
                </div>
                <div id="testZoom" style="display:none">
                    <img src="/data/goods/21/03/12/68/68_magnify_078.jpg" width="500" alt="시그니처 알페 디 36 앰플" title="시그니처 알페 디 36 앰플" class="middle"  />
                </div>
                <!-- //item_photo_big -->
                <div class="item_photo_slide">
                    <button type="button" class="slick_goods_prev"><img src="/data/skin/front/mime/img/icon/shop_cart/btn_slide_prev.png" alt="이전 상품 이미지"/></button>
                    <ul class="slider_wrap slider_goods_nav">
                        <li><a href="javascript:gd_change_image('0', 'detail');"><img src="/data/goods/21/03/12/68/t50_68_detail_067.jpg" width="68" alt="시그니처 알페 디 36 앰플" title="시그니처 알페 디 36 앰플" class="middle"  /></a></li>
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
    <div class="goods_wrap goods_68">
        <div class="top_box">
            <div class="top_visual bg68">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
시그니처 알페 디 36 앰플
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">SIGNATURE ALPE DI 36 AMPOULE</div>
                <div class="show_text2" style="margin:30px 0;text-align:center;font-size:20px;">
                    시그니처 알페 디 36 앰플은 성분배합 강화로 제품력이 향상된 제품입니다.
                </div>
                <div class="goods_volume minerva">
                    제품용량 : 30ml
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
<div class="item_goods_sec view68">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 68. 시그니처 알페 디 36 엠플 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_68.jpg" style="display:none;">
		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg68 mb200">
					<div class="img_title">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/68/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						숙면한 피부는<br>
						1.6배 어려진다
					</div>
					<div class="detail_desc">
						수면시간을 5시간에서 7시간으로 늘리자 노화점수 기준 1.6배 어려졌습니다.<br>
						수면부족 피부는 주름과 피부처짐의 급속 노화현상이 발생됩니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/343597326.sd.mp4?s=334f7e6df2abfcb66d6b396dbd1fb6b3a0a6f890&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">
							※ 숙면효과에 대한 논문내용을 기반으로 제작되었으며, 개인별 차이가 있을 수 있습니다.<br>
							※ 논문출처: The Effects of Sleep Deprivation on the Biophvsica, Baron-Sleep-on Skin- aging-and-other-Dermatologic-Conditions.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						숙면피부를 연구한<br>
						노하우를 담다
					</div>
					<div class="detail_desc">
						Peptide 성분 8가지 선정, 배합
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/343597366.sd.mp4?s=36588646e5c0ffd9ae1b5a0378c551070b1ff687&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg3"></div>
					<div class="detail_step" style="padding-top:70px;">
						<div class="detail_img_box" style="margin-bottom:60px;">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/68/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>세안 후 칙칙한 피부톤을 개선하고 싶다.</li>
								<li>탄력없이 푸석한 피부가 신경 쓰인다.</li>
								<li>매끄럽지 못한 피부결로 화장시 들뜸 현상이 있다.</li>
								<li>가볍고 산뜻한 타입의 고농축 앰플이 필요하다.</li>
								<li>촉촉함이 오랜시간 지속되는 물광피부를 연출하고 싶다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/68/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							토너 사용 후, 적당량을 덜어 피부결을 따라<br>
							부드럽게 바르면서흡수시켜줍니다.
						</div>
					</div>
					
					<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/68/use.jpg" alt="" style="margin-top:70px;">
				</div>
			</div>
		</div>
		<!-- //68. 시그니처 알페 디 36 엠플 -->
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
                        토너 > 시그니처 알페 디 36 앰플 > 로션 또는 크림
                    </div>
                </li>
                <li>
                    <div class="q">2. 임신 중 사용이 가능한가요?</div>
                    <div class="a">
                        임신 중 사용 가능합니다. 다만, 임신 중에는 호르몬 변화의 영향으로 평소보다 피부가 민감할 수 있으므로<br>
                        팔 안쪽 등에 소량 테스트 후 사용을 권해드립니다.
                    </div>
                </li>
                <li>
                    <div class="q">3. 스포이드가 휘어져있는 것이 정상인가요?</div>
                    <div class="a">
                        점성이 높은 제형을 잘 빨아들이기 위해 스포이드 끝 부분이 휘어져 있습니다. 이는 불량이 아니며 정상적인 제품입니다.
                    </div>
                </li>
                <li>
                    <div class="q">4. 스포이드에 내용물이 잘 올라오지 않는데 어떻게 해야 하나요?</div>
                    <div class="a">
                        점성이 높은 제형의 특성상 가벼운 펌핑만으로 내용물이 잘 올라오지 않는 경우가 생길 수 있습니다.<br>
                        이런 경우에는 다음과 같은 방법으로 사용해주시면 원활하게 이용하실 수 있습니다.<br>
                        ① 스포이드 안의 내용물이 없는 상태에서 스포이드를 용기 밖으로 꺼내주세요.<br>
                        ② 스포이드 손잡이 부분을 꾹 눌러주신 채로 용기 안에 넣어주세요.<br>
                        ③ 잡고 있던 스포이드 손잡이에서 손을 떼어주세요.<br>
                        ④ 스포이드를 다시 꺼내 눌러보시면 내용물이 충분히 흘러나오는 것을 확인하실 수 있습니다.
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
                        <a href="javascript:gd_open_write_popup('goodsqa', '68')" class="write">문의 작성하기</a>
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
                        30ml
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
                        병풀추출물, 글리세린, 메틸프로판다이올, 에탄올, 글리세레스-26, 1,2-헥산다이올, 나이아신아마이드, 정제수, 베타인, 트레할로오스, 무화과추출물, 에델바이스추출물, 노티드랙추출물, 엘더꽃추출물, 아세틸헥사펩타이드-8, 카퍼트라이펩타이드-1, 트라이펩타이드-1, 팔미토일테트라펩타이드-7, 팔미토일트라이펩타이드-1, 팔미토일펜타펩타이드-4, 헥사펩타이드-9, 아데노신, 당아욱추출물, 레몬밤잎추출물, 레이디스맨틀추출물, 서양톱풀추출물, 스피드웰추출물, 페루기네움철쭉추출물, 페퍼민트잎추출물, 황산앵초추출물, 도라지뿌리추출물, 밀싹추출물, 양파추출물, 카카오추출물, 헛개나무열매추출물, 피그미핑크캘러스배양추출물, 겔리듐 카르틸라기네움추출물, 레몬밤추출물, 살비아잎추출물, 쌀추출물, 컴프리잎추출물, 한련초추출물, 녹차추출물, 하이드로제네이티드레시틴, 소듐하이알루로네이트, 쿠쿠이나무씨오일, 폴리글리세릴-10라우레이트, 카보머, 트로메타민, 셀룰로오스검, 글리세릴폴리메타크릴레이트, 부틸렌글라이콜, 다이소듐이디티에이, 실크아미노산, 아이소말트, 세라마이드엔피, 카라멜, 프로필렌글라이콜, 아라비아고무나무검, 말토덱스트린, 레시틴, 시트릭애씨드, 화산재, 노나펩타이드-1, 소듐하이드록사이드, 향료, 펜틸렌글라이콜, 카프릴릴글라이콜, 리날룰, 벤질벤조에이트, 에틸헥실글리세린, 소듐벤조에이트, 포타슘솔베이트
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        밤 8시간 숙면시간에 피부회복을 돕도록 설계된 고농축 앰플로 저녁시간에 사용하세요.<br>
                        (프로텍터 앰플과 함께 사용하면 더 효과적입니다.)
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
