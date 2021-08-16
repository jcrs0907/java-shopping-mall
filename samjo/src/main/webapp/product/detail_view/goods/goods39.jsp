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



<!-- bang -->
<div class="content_box">
    <div class="location_wrap" style="display:none">
        <div class="location_cont">
            <em><a href="#" class="local_home">HOME</a></em>
            <span>&nbsp;&gt;&nbsp;</span>
            <div class="location_select">
                <div class="location_tit"><a href="#"><span>효능별</span></a></div>
                <ul style="display:none;">
                    <li><a href="./goods_list.php?cateCd=010"><span>라인별</span></a></li>
                    <li><a href="./goods_list.php?cateCd=009"><span>효능별</span></a></li>
                    <li><a href="./goods_list.php?cateCd=008"><span>유형별</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //location_wrap -->
    <!-- 상품 상단 -->
    <div class="item_photo_info_sec">
        <div class="item_photo_view_box" style="display:none">
            <div class="item_photo_view">
                <div class="item_photo_big">
                    <span class="img_photo_big"><a href="#lyZoom" id="mainImage" class="zoom_layer_open btn_open_layer"><img src="https://www.demar3.com/data/goods/19/09/39/39/39_detail_04.jpg" width="500" alt="렘로즈 25 실드 크렘" title="렘로즈 25 실드 크렘" class="middle"  /></a></span>
                    <a href="#lyZoom" class="btn_zoom zoom_layer_open btn_open_layer"><img src="https://www.demar3.com/data/skin/front/mime/img/icon/goods_icon/icon_zoom.png" alt=""></a>
                </div>
                <div id="testZoom" style="display:none">
                    <img src="/data/goods/19/09/39/39/39_magnify_07.jpg" width="500" alt="렘로즈 25 실드 크렘" title="렘로즈 25 실드 크렘" class="middle"  />
                </div>
                <!-- //item_photo_big -->
                <div class="item_photo_slide">
                    <button type="button" class="slick_goods_prev"><img src="/data/skin/front/mime/img/icon/shop_cart/btn_slide_prev.png" alt="이전 상품 이미지"/></button>
                    <ul class="slider_wrap slider_goods_nav">
                        <li><a href="javascript:gd_change_image('0', 'detail');"><img src="/data/goods/19/09/39/39/t50_39_detail_04.jpg" width="68" alt="렘로즈 25 실드 크렘" title="렘로즈 25 실드 크렘" class="middle"  /></a></li>
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
    <div class="goods_wrap goods_39">
        <div class="top_box">
            <div class="top_visual bg39">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
렘로즈 25 실드 크렘
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">REM-ROSE 25 SHIELD CREME</div>
                <div class="goods_volume minerva">
                    제품용량 : 65ml
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
<div class="item_goods_sec view39">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 39. 렘로즈 25 실드크렘 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_39.jpg" style="display:none;">
		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg39 mb200">
					<div class="img_title">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/39/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						주름이 빨리 생기는 피부를 연구하다
					</div>
					<div class="detail_desc">
						피부의 손상 정도에 따라 같은 자극에도 주름이 생기는 정도가 달라진다 .
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/433475592.hd.mp4?s=39fc5d4f198040c7e80486bfd7d5eb8772a6082e&amp;profile_id=174" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/39/detail_img1.jpg" alt="">
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg39"></div>
					<div class="detail_step" style="padding-top:90px;">
						<div class="detail_img_box mb80">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/39/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title" style="margin-bottom:10px;">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>탄력없이 푸석한 피부를 개선하고 싶다.</li>
								<li>웃을 때 입가, 눈가에 자글자글한 주름이 진다.</li>
								<li>귀밑부터 굵게 생긴 목주름이 신경 쓰인다.</li>
								<li>화장 후, 파데끼임이 심하고 부분적으로 푹 꺼진 피부가 보인다.</li>
								<li>갈수록 깊어지는 주름을 장기적으로 단계별 집중 케어하고 싶다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/39/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							<b>기초케어 마무리용 고농축 주름개선크림 입니다.</b><br>
							세안 후, 스킨케어 마지막 단계에 사용해주세요.
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //39. 렘로즈 25 실드크렘 -->
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
                    <div class="q">1. 아침/저녁 모두 사용 가능한가요?</div>
                    <div class="a">
                        아침, 저녁 모두 사용이 가능합니다.
                    </div>
                </li>
                <li>
                    <div class="q">2. 사용 방법은 어떻게 되나요?</div>
                    <div class="a">
                        피부 타입에 맞게 적당량을 덜어 얼굴 전체에 펴 바른 후, 흡수시켜 주시면 됩니다.
                    </div>
                </li>
                <li>
                    <div class="q">3. 자외선 차단제나 메이크업 제품을 발라도 되나요?</div>
                    <div class="a">
                        스킨 케어 마무리 후 자외선 차단제, 메이크업 제품을 사용하시면 됩니다.
                    </div>
                </li>
                <li>
                    <div class="q">4. 임산부 사용이 가능한가요?</div>
                    <div class="a">
                        임신 중 사용 가능합니다. 단, 임신 중에는 호르몬 변화로 평소보다 피부가 민감하므로 팔 안쪽에 소량 테스트 후 사용을 권해드립니다.
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
                        65ml
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
                        정제수, 글리세린, 부틸렌글라이콜, 아이소프로필미리스테이트, 스테아릴헵타노에이트, 다이카프릴릴카보네이트, 다이메티콘, 1, 2-헥산다이올, 글리세레스-26, 나이아신아마이드, 사이클로펜타실록세인, 다이프로필렌글라이콜, 피이지/피피지-17/6코폴리머, 스테아릴카프릴레이트, 글리세릴스테아레이트, 폴리솔베이트80, 폴리글리세릴-3다이스테아레이트, 솔비탄스테아레이트, 하이드록시프로필사이클로덱스트린, 스피룰리나막시마추출물, 스피룰리나플라텐시스추출물, 레스베라트롤, 카르노신, 솔비탄올리베이트, 사이클로헥사실록세인, 하이드록시아세토페논, 세테아릴알코올, C14-22알코올, 피이지-100스테아레이트, 하이드록시에틸아크릴레이트/소듐아크릴로일다이메틸타우레이트코폴리머, 베헤닐알코올, 카보머, 클로페네신, 세테아릴글루코사이드, 알지닌, 소듐아크릴레이트/소듐아크릴로일다이메틸타우레이트코폴리머, 돌콩스테롤, 글리세릴스테아레이트시트레이트, 아이소헥사데칸, 카프릴릴글라이콜, 베타인, C12-20알킬글루코사이드, 에틸헥실글리세린, 하이드로제네이티드레시틴, 당근잎추출물, 타라열매추출물, 다이메티콘올, 소듐폴리아크릴레이트, 제니스테인, 하이드록시에틸셀룰로오스, 아데노신, 향료, 글리세릴아크릴레이트/아크릴릭애씨드코폴리머, 폴리글리세릴-10다이스테아레이트, 다이소듐이디티에이, 코토니추출물, 솔비탄아이소스테아레이트, 솔비탄올리에이트, 아르간커넬오일, 시어버터, 호호바씨오일, 피이지/피피지-18/18다이메티콘, 트라이데세스-6, 배초향추출물, 하이드록시프로필비스라우라마이드엠이에이, 소듐아세테이트, 동백나무꽃추출물, 글루코오스, 소듐하이알루로네이트, 셀룰로오스, 노근추출물
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        아침, 저녁 스킨 케어 마지막 단계에 적당량을 덜어 얼굴 전체에 펴 발라줍니다.
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
                        


                        4. 고온 또는 저온의 장소를 피해서 보관할 것
    



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
