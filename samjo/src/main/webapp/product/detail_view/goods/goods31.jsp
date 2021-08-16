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
                    <span class="img_photo_big"><a href="#lyZoom" id="mainImage" class="zoom_layer_open btn_open_layer"><img src="/data/goods/21/04/14/69/31_detail_069.jpg" width="500" alt="시그니처 비트 로제 바이탈 크렘" title="시그니처 비트 로제 바이탈 크렘" class="middle"  /></a></span>
                    <a href="#lyZoom" class="btn_zoom zoom_layer_open btn_open_layer"><img src="/data/skin/front/mime/img/icon/goods_icon/icon_zoom.png" alt=""></a>
                </div>
                <div id="testZoom" style="display:none">
                    <img src="/data/goods/21/04/14/69/31_magnify_018.jpg" width="500" alt="시그니처 비트 로제 바이탈 크렘" title="시그니처 비트 로제 바이탈 크렘" class="middle"  />
                </div>
                <!-- //item_photo_big -->
                <div class="item_photo_slide">
                    <button type="button" class="slick_goods_prev"><img src="/data/skin/front/mime/img/icon/shop_cart/btn_slide_prev.png" alt="이전 상품 이미지"/></button>
                    <ul class="slider_wrap slider_goods_nav">
                        <li><a href="javascript:gd_change_image('0', 'detail');"><img src="/data/goods/21/04/14/69/t50_31_detail_069.jpg" width="68" alt="시그니처 비트 로제 바이탈 크렘" title="시그니처 비트 로제 바이탈 크렘" class="middle"  /></a></li>
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
    <div class="goods_wrap goods_69">
        <div class="top_box">
            <div class="top_visual bg69">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
시그니처 비트 로제 바이탈 크렘
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">SIGNATURE VIT ROISE VITAL CRÈME</div>
                <div class="show_text2" style="margin:30px 0;text-align:center;font-size:20px;">
                    시그니처 비트로제 바이탈 크렘은<br>
                    성분배합 강화로 제품력이 향상된 제품입니다.
                </div>
                <div class="goods_volume minerva">
                    제품용량 : 50ml
                </div>

                <%-- price & button 영역 --%>
                <%@ include file="/product/detail_view/goods/goods_btn.jspf" %>





                <div style="width:617px;margin:50px  auto 0;">
                    <img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/69/banner.jpg" alt="">
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
<div class="item_goods_sec view69">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 69. 시그니처 비트 로제 바이탈 크렘 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_69.jpg" style="display:none;">
		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg69 mb200">
					<div class="img_title">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/69/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						피부 균열 사이로<br>
						파고들 수 있는 노폐물
					</div>
					<div class="detail_desc">
						누구에게나 발생하는 피부 균열은 피부가 유해환경에 무방비하게 노출되게 합니다.<br>
						이것들은 피부에 달라붙어 모공을 막거나, 깊숙이 침투하여 해를 끼칩니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/346361139.sd.mp4?s=fbd0d046b1c1fd1b91608aa1cd801ff4aa0a421b&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">
							※ 피부가 건조해져 각질화가 발생하는 것을 피부 균열이라고 표현했습니다. 논문을 바탕으로 외부 유해환경으로 발생할 수 있는 피부 변화를 가상으로 표현한 것으로, 실제 임상결과와는 무관합니다.
							참고 논문: The Survival Rate of Cultured Epithelial Keratinocyte Cell and Dermal Fibroblast Cell treated with Particulate matter / Evaluation of the impact of urban pollution on the quality of skin:
							a multicenter study in Mexico / Toxicity and health effects of Asian dust: a literature review
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						PBS 구조체 연구 (Polymer Balance Structure)
					</div>
					<div class="detail_desc">
						시그니처 비트 로제 바이탈 크렘은 PBS 구조체의 핵심이 되는 피부 지질 구성 성분을 연구했습니다.<br>
						본 구조체는 피부 지질과 유사한 배합비의 복합 성분으로, 여러 피부 문제에 도움을 줄 가능성이 있습니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/346361150.sd.mp4?s=19f5cb12475b8b82c49c24e7eae1ab3b1c5ac968&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">
							※ PBS 구조체: 피부장벽에 영향을 미칠 수 있게 가능성을 제시해주는 고분자 밸런스 구조체를 말합니다.<br>
							※ PBS 구조체 성분: *세라마이드, *콜레스테롤, *플릭애씨드, *하이드롤라이즈드하이알루로닉애씨드, *시트릭애씨드<br>
							※ 참고 논문 : Study on Characteristics of Nanoliposomes Containing Lipid Classes in Stratum Corneum<br>
							※ 이해를 돕기 위한 영상이며 실제 임상결과와는 무관합니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						정상 피부와 밸런스가 무너진 피부의 차이
					</div>
					<div class="detail_desc">
						외부 활동 등으로 인해 자극받은 피부와 정상 피부 간의 차이 관찰
					</div>
					<div class="video_box">
						<video class="mb0" src="https://player.vimeo.com/external/388384648.sd.mp4?s=351f0a9370ce7d45b5bd75696352ac97ae4cece4&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
					</div>
					<div class="detail_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/69/detail_img3.jpg" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						피부 표면 발림성
					</div>
					<div class="detail_desc">
						시그니처 비트 로제 바이탈 크렘의 조밀한 제형은 피부에 자연스럽게 녹아 도포됩니다.<br>
						탄탄하면서도 무겁지 않은 제형으로 영양감을 제공합니다.
					</div>
					<div class="video_box mb150">
						<video src="https://player.vimeo.com/external/415737024.hd.mp4?s=273f9f1ebf35fb24640c11da72e9e3df8062ec1f&amp;profile_id=174" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">
							※ 피부 도포율 : 피부에 고르고 조밀하게 도포되는 제형의 모습을 현미경 확대 촬영한 영상입니다.
						</div>
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg69"></div>
					<div class="detail_step" style="padding-top:70px;">
						<div class="detail_img_box mb50">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/69/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>피부가 건조하고 들뜬다.</li>
								<li>전체적인 지성피부지만 속당김이 느껴진다.</li>
								<li>피부가 쉽게 붉어지고, 예민하다.</li>
								<li>외출시에 피부가 자극됨을 느낀다.</li>
								<li>부분∙전체적으로 푸석하다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/69/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							토너나 스킨으로 피부결을 정돈한 후 필요에 따라<br>
							앰플등 을 발라줍니다.<br><br>
							
							그 후 ,<br>
							<b>시그니처 비트 로제 바이탈 크렘</b>을 얼굴 전체에 도포하여 보습해줍니다.<br>
							추가적으로 건조함이 느껴지는 부분엔 얇게 레이어링<br>
							하여 마무리 합니다.
						
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //69. 시그니처 비트 로제 바이탈 크렘 -->
            </div>
        </div>
    
    </div>
    <!-- //01.상품 기술서 -->
    
    <!-- 세트 상품 제품 -->
    <!-- 세트 상품 제품 -->
    
    
    

    
    <!-- 자주 묻는 질문 -->
    <div class="detail_faq_box">
        <div class="goods_faq ">
            <h3>
                자주 묻는 질문
            </h3>
            <ul class="faq_ul">
                <li>
                    <div class="q">1. 어떤 순서로 사용해야 하나요?</div>
                    <div class="a">
                        아침, 저녁 세안 후 스킨 케어 마지막 단계에서 사용해 주시면 됩니다.
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
            </ul>
        </div>
        
        
        <!-- 제품문의 
        <div class="detail_cont">
            <div id="qna" class="qna_cont">
                <h3>제품문의(0)</h3>
                <div class="sort">
                    <div class="right btn_up">
                        <a href="javascript:gd_open_write_popup('goodsqa', '69')" class="write">문의 작성하기</a>
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
                        50ml
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
                        온천수, 프로판다이올, 사이클로헥사실록세인, 스쿠알란, 다이카프릴릴카보네이트, 부틸렌글라이콜, 1,2-헥산다이올, 나이아신아마이드, 메도우폼씨오일, 세틸알코올, 정제수, 폴리메틸실세스퀴옥세인, 피토스테릴/베헤닐/옥틸도데실라우로일글루타메이트, 다시마추출물, 한련초잎추출물, 병풀추출물, 쇠비름추출물, 맥아추출물, 로즈마리잎추출물, 마트리카리아꽃추출물, 귀리커넬추출물, 봉의꼬리추출물, 아티초크잎추출물, 카바카바잎/뿌리/줄기추출물, 인삼열매추출물, 에델바이스추출물, 드럼스틱씨추출물, 부들레야추출물, 타임추출물, 엘더꽃추출물, 페루기네움철쭉추출물, 노티드랙추출물, 하이드로제네이티드레시틴, 소듐하이알루로네이트, 콜레스테롤, 베타-글루칸, 프룩토올리고사카라이드, 세라마이드엔피, 알란토인, 판테놀, 하이드롤라이즈드하이알루로닉애씨드, 라피노오스, 팔미토일펜타펩타이드-4, 소듐아세틸레이티드하이알루로네이트, 아보카도오일, 코코넛야자오일, 쿠쿠이나무씨오일, 녹차수, 베헤닐알코올, 세테아릴올리베이트, 글리세린, 폴리글리세릴-2스테아레이트, 솔비탄올리베이트, 세테아릴알코올, 소듐스테아로일글루타메이트, 글리세릴스테아레이트, 메틸프로판다이올, 스테아릴알코올, 다이프로필렌글라이콜, 글리세릴스테아레이트에스이, 아크릴레이트/C10-30알킬아크릴레이트크로스폴리머, 알지닌, 암모늄아크릴로일다이메틸타우레이트/브이피코폴리머, 하이드로제네이티드폴리아이소부텐, 에틸헥실글리세린, 잔탄검, 아데노신, 폴리쿼터늄-51, 다이소듐이디티에이, 토코페롤, 폴릭애씨드, 트로메타민, 시트릭애씨드, 소듐벤조에이트,포타슘솔베이트, 말토덱스트린, 화산재, 향료, 리날룰, 벤질벤조에이트
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        토너나 앰플 사용 후 다음 단계에서 적당량을 덜어 얼굴 전체에 펴 발라줍니다.
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
