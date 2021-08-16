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
    <div class="goods_wrap goods_52">
        <div class="top_box">
            <div class="top_visual bg52">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
플루시온 17 크렘
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">POUR-TION 17 CRÈME</div>
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
<div class="item_goods_sec view52">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 52.플루시온 17 크렘 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_52.jpg" style="display:none;">
		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg52 mb200">
					<div class="img_title">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/52/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						끈적임 없이 산뜻한 발림성의 수분 가득 수딩젤 텍스쳐
					</div>
					<div class="detail_desc">
						디마르3의 제형 노하우로 수분을 가득 머금을 수 있으면서도<br>
						끈적이지 않고 산뜻한 최적의 발림성과 사용성을 구현하였습니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/456807464.sd.mp4?s=09745051544982939ca3f4883044a795c6a90646&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt left">
							* 플루시온 17 크렘 제형을 활용하여 촬영한 영상입니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						워터락(Water Lock) 기술 적용,<br>
						수분막을 형성해 최대 72시간* 촉촉하게
					</div>
					<div class="detail_desc">
						워터락은 Glycerin, Caprylic/Capric Triglyceride, Hydrogenated Lecithin, Ceramide NP 등을<br>
						활용하여 피부의 보습력을 강화하는 기술입니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/456807469.sd.mp4?s=2a74d7b21ae6835d5785fa5292ff56c1aa7f0ef6&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt left">
							* 플루시온 17 크렘 제형을 활용하여 촬영한 영상입니다.
						</div>
					</div>
					<div class="detail_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/52/detail_img_test1.jpg" alt="">
						<div class="txt left">
							* 개인차가 있을 수 있습니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						Natural NMF* 성분이 물분자를 유인,<br>
						피부에 수분을 강하게 끌어당기다
					</div>
					<div class="detail_desc">
						*Natural NMF 구성 성분: Saccharide Isomerate, Water, Sodium Citrate, Citric Acid<br>
						*NMF(Natural Moisturizing Factor)는 피부 속의 천연 보습 인자로, 피부의 수분 증발을 막아줍니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/413000617.hd.mp4?s=7cd70874a7fa681932a759ef6b2231c359817419&amp;profile_id=169" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt left">
							* 이해를 돕기 위한 가상의 이미지 입니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						인체 적용 시험 결과 경표피 수분 손실량 개선*
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/466089507.sd.mp4?s=3b3c7e88189eec4f090c38601c114c62c3e0ef83&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt left">
							* 이해를 돕기 위한 가상의 이미지 입니다.
						</div>
					</div>
					<div class="detail_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/52/detail_img_test2.jpg" alt="">
						<div class="txt left">
							* 개인차가 있을 수 있습니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/52/detail_img1.jpg" alt="">
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg52"></div>
					<div class="detail_step">
						<div class="detail_img_box mb120">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/52/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>수분감이 오랫동안 유지되길 바란다.</li>
								<li>가벼우면서도 속당김 없는 수분크림을 원한다.</li>
								<li>끈적이지 않는 마무리감을 원한다.</li>
								<li>듬뿍 발라도 부담 없는 수분크림을 원한다.</li>
								<li>쿨링 스틱과 함께 쓸 수 있는 수분크림을 원한다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/52/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							세안 후 토너와 앰플로 피부결 정돈 및 수분을 공급해준 뒤,<br>
							적당량을 손에 덜어 피부 위에 가볍게 도포해줍니다.
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents mb150">
				<div class="lab">
					<div class="layer">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/52/lab_layer.png" alt="">
					</div>
				</div>
				<div class="inner">
					<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/52/detail_lab.jpg" alt="">
				</div>
			</div>
		</div>
		<!-- //52.플루시온 17 크렘 -->
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
                    <div class="q">1. 민감성 피부가 사용해도 되나요?</div>
                    <div class="a">
                        플루시온 17 크렘은 피부 저자극 테스트를 완료한 제품입니다. 평소 예민한 피부라면 사용 전 팔 안쪽에 소량 테스트 후 이상이 없을 시에 사용을 권해드립니다.<br>
                        <span style="color:#ccc;">*저자극 인체적용시험 완료 (시험기관: ㈜OATC 피부임상시험센터, 시험 인원: 31명, 시험 기간: 2020년 06월 17일 ~ 2020년 06월 19일)</span>
                    </div>
                </li>
                <li>
                    <div class="q">2. 냉장 보관하여 사용해도 되나요?</div>
                    <div class="a">
                        네, 가능합니다. 플루시온 17 크렘은 안정성이 높은 수딩젤 제형으로 실온 및 냉장 보관이 가능합니다.
                    </div>
                </li>
                <li>
                    <div class="q">3. 쿨링 스틱과 함께 사용해도 되나요?</div>
                    <div class="a">
                        네, 가능합니다. 쿨링스틱 등 소도구를 함께 활용하여 쿨링 효과를 극대화할 수 있습니다. 쿨링스틱 등 도구를 이용할 경우 피부에 자극이 가지 않도록 양을 충분히 얹어 사용하길 권해드립니다.
                    </div>
                </li>
                <li>
                    <div class="q">4. 제품 pH가 어떻게 되나요?</div>
                    <div class="a">
                        플루시온 17 크렘의 pH는 4.50±1.00로 약산성 제품입니다.
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
                        <a href="javascript:gd_open_write_popup('goodsqa', '52')" class="write">문의 작성하기</a>
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
                    <th>제품 출시일</th>
                    <td>2020.9.11</td>
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
                        주름 개선 기능성
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
                        정제수, 부틸렌글라이콜, 글리세린, 메틸프로판다이올, 카프릴릴메티콘, 비닐다이메티콘, 펜틸 렌글라이콜, 1,2-헥산다이올, 세라마이드엔피, 베타인, 자일리톨, 클로렐라 불가리스추출물, 인도멀구슬 나무잎추출물, 인도멀구슬나무꽃추출물, 아이비고드열매추출물, 가지열매추출물, 홀리바질잎추출물, 참산호말추출물, 코코넛야자열매추출물, 구주소나무잎오일, 울금뿌리추출물, 자일리틸글루코사이드, 실리카, 글루코오스, 바이오사카라이드검-1, 아데노신, 시트릭애씨드, 소듐시트레이트, 토코페롤, 안하이드로자일리톨, 사카라이드아이소머레이트, 암모늄아크릴로일다이메틸타우레이트/베헤네스-25메타크라일레이트크로스폴리머, 세테아릴올리베이트, 솔비탄올리베이트, 소듐파이테이트, 카프릴릭/카프릭트라이글리세라이드, 하이드로제네이티드레시틴, 아크릴레이트/C10-30알킬아크릴레이트크로스폴리머, 카프릴릴글라이콜, 프룩토오스, 프룩토올리고사카라이드, 에틸헥실글리세린, 트로메타민, 알로에베라꽃추출물, 해바라기씨오일불검화물
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>본품 적당량을 취해 피부에 골고루 펴 바른다</td>
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
