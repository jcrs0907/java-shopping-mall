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
    <div class="goods_wrap goods_22">
        <div class="top_box">
            <div class="top_visual bg22">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
엑스퍼트 렘로즈 25 버닝 2단계
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">EXPERT REOM-ROSE 25 BURNING Ⅱ</div>
                <div class="show_text2" style="margin:30px 0;text-align:center;font-size:20px;">
                    효능 개선을 위한 “엑스퍼트“ 포뮬라 추가 및 제품 리뉴얼
                </div>
                <div class="goods_volume minerva">
                   제품용량 : 80ml
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
<div class="item_goods_sec view22">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 22. 렘로즈 25 버닝 2제 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_22.jpg" style="display:none;">
		<div class="detail_wrap">
			<div class="pop_bg"></div>
			<div class="tab_contents">
				<div class="visual_box bg22 mb200">
					<div class="img_title">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/22/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						피부탄력 붕괴시키는<br>
						‘멍울주름’ 발견
					</div>
					<div class="detail_desc">
						멍울 주름이란?<br>
						피부탄력 구성물질 변화로 생긴 주름을 칭한다.
					</div>
					<div class="video_box">
						<video class="mb0" src="https://player.vimeo.com/external/320125409.sd.mp4?s=dbb7ba4ab9ae1e61ce3b17fe875d9bfd32dd580a&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/51/detail_img1.jpg" alt="">
						</div>
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/529204395.sd.mp4?s=ad4e48bfec8a78e5e200baf0caa2dcad0a006ff4&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt right">
							*임상연구 특수 장비 ‘MARK-VU’의 광택광을 통해 재구성한 미래주름 예상도 (실제주름과는 무관)
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						1· 2단계 *리프팅 케어 시스템<br>
						고농축 주름개선 앰플
					</div>
					<div class="detail_desc" style="font-size:20px;">
						<b>식약처 보고</b> 주름개선 성분 포함
					</div>
					<div class="video_box">
						<video class="mb0" src="https://player.vimeo.com/external/529204378.hd.mp4?s=579be889eaaf2fe7d1c90bec90dec965284ce4a1&amp;profile_id=174" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt right">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/51/detail_img2.jpg" alt="" style="margin-bottom: 15px;">
							*식약처 주름개선 기능성 보고 제품 (고시성분: 아데노신)
						</div>
					</div>
					<div class="img_cursor">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/ico_img_cursor.png" alt="">
					</div>
					<div class="detail_desc" style="font-size:20px;">
						10종 이상, 다량의 특수 펩타이드 포함
					</div>
					<div class="video_box">
						<video class="mb0" src="https://player.vimeo.com/external/320125529.sd.mp4?s=781e67e81f5c051d5a799d7da6ed83dad4424bc4&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/51/detail_img3.jpg" alt="">
						</div>
					</div>
					<div class="detail_img_box" style="margin-top:160px;">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/51/detail_img6.jpg" alt="">
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg20"></div>
					<div class="detail_step">
						<div class="detail_img_box mb120">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/22/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title">이런 분들에게 추천합니다.</div>
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
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/22/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							<b>세안 후, Ⅰ를 주름 부위에만 충분히 흡수 시킨 후,<br>
								Ⅱ를 얼굴 전체에 골고루 도포해 주세요.</b><br>
							그 후, 크림을 발라주어 보습을 해주세요.
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //22. 렘로즈 25 버닝 2제 -->
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
                    <div class="q">1. 아침 / 저녁 모두 사용 가능한가요?</div>
                    <div class="a">
                        아침, 저녁 모두 사용이 가능합니다.
                    </div>
                </li>
                <li>
                    <div class="q">2. 사용 순서가 어떻게 되나요?</div>
                    <div class="a">
                        세안 후 스킨 다음 단계에서 Ⅰ, Ⅱ를 순서대로 발라주세요. (스킨) > 렘로즈 Ⅰ(주름 부위 국소 사용) > 렘로즈 Ⅱ(얼굴 전체 사용) > 크림
                    </div>
                </li>
                <li>
                    <div class="q">3. 적정 사용량이 있나요?</div>
                    <div class="a">
                        Ⅰ는 1~2방울 정도 덜어 주름 부위에, Ⅱ는 3~4번 정도 펌핑해 얼굴 전체에 발라줍니다. 피부 타입과 스킨 케어 방법에 따라 사용량은 적절하게 조절해주시면 됩니다.
                    </div>
                </li>
                <li>
                    <div class="q">4. 임산부 사용이 가능한가요?</div>
                    <div class="a">
                        임신 중 사용 가능합니다. 단, 임신 중에는 호르몬 변화로 평소보다 피부가 민감하므로 팔 안쪽에 소량 테스트 후 사용을 권해드립니다.
                    </div>
                </li>
                <li>
                    <div class="q">5. 왜 Ⅰ, Ⅱ로 나눠져 있나요? 하나만 바르면 안되나요?</div>
                    <div class="a">
                        Ⅰ, Ⅱ는 서로의 기능을 증폭시켜주는 성분으로 설계되어 있습니다. 효능 극대화를 위해 개별 사용보다, 함께 사용을 권해드립니다.
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
                        80ml
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
                        정제수, 글리세린, 글리세레스-26, 부틸렌글라이콜, 나이아신아마이드, 펜틸렌글라이콜, 다이프로필렌글라이콜, 1,2-헥산다이올, 카카오씨추출물, 스위트아몬드추출물, 헵타소듐헥사카복시메틸다이펩타이드-12, 글라이코젠, 사이클로펜타실록세인, 트로메타민, 베타인, 트레할로오스, 하이드록시에틸셀룰로오스, 다이메티콘올, 아데노신, 에틸헥실글리세린, 덱스트린, 카프릴릴글라이콜, 팔미토일트라이펩타이드-5, 폴리솔베이트20, 솔비탄라우레이트, 토코페롤, 아스코빅애씨드폴리펩타이드, 아세틸다이펩타이드-1세틸에스터, 알지닌/라이신폴리펩타이드, 헥사펩타이드-2, 팔미토일트라이펩타이드-1, 팔미토일테트라펩타이드-7, 바이오틴, 아세틸헥사펩타이드-8, 팔미토일펜타펩타이드-4, 카보머, 잔탄검, 다이소듐이디티에이, 향료
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        렘로즈 1제와 더불어, 주름 개선 성분이 포함된 렘로즈25 버닝 2단계는 주름 부위의 집중 케어를 도와줍니다.
                        렘로즈 1제를 충분히 흡수 시킨 후, 2제를 얼굴 전체에 골고루 도포하여 주세요.
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


