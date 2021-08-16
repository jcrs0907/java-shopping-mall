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
    <div class="goods_wrap goods_70">
        <div class="top_box">
            <div class="top_visual bg70">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
시그니처 실트 벨 크렘 2.7
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">SIGNATURE SILT VALE CREME 2.7</div>
                <div class="show_text2" style="margin:30px 0;text-align:center;font-size:20px;">
                    기존 실트 벨 크렘2.7을 업그레이드 리뉴얼한 제품입니다.
                </div>
                <div class="goods_volume minerva">
                    제품용량 : 50ml
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
<div class="item_goods_sec view70">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 70. 시그니처 실트 벨 크렘 2.7 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_70.jpg" style="display:none;">
		
		<link rel="stylesheet" href="https://www.demar3.com/data/skin/front/mime/css/swiper.min.css">
		<script type="text/javascript" src="https://www.demar3.com/data/skin/front/mime/js/jquery/swiper.min.js"></script>
		<style>
			.swiper-slide {text-align:center;}
			.slide1_wrap {position:relative;margin-bottom:15px;}
			
			.swiper-pagination {bottom:35px !important;}
			.swiper-pagination-bullet {width:11px;height:11px;border:1px solid #909090;background:#171717;margin:0 5px !important;}
			.swiper-pagination-bullet-active {background:#909090;}
		</style>
		
		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg70 mb200">
					<div class="img_title">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/70/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						더욱 완성도 높은 ‘시그니처 실트 벨 크렘2.7’<br>
						자극은 덜어내고 편리성은 더하다
					</div>
					<div class="detail_desc">
						하나. 주요 성분 함량을 조정하여 제품 효과 증진<br>
						둘. 부드럽게 사용할 수 있도록 ‘부드러운 폴리호일 튜브’로 개선<br>
						셋. 보다 위생적인 사용을 위해 터치를 최소화한 ‘원터치캡’ 개선
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/461676223.sd.mp4?s=7c6a22b45dd669fe16acbf5fc315b3cbcbacaf93&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt right">
							* 이해를 돕기 위해 제작된 가상의 연출 영상입니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						내제된 피부의 능력을 활성화하는<br>
						피부 개선 성분 조사
					</div>
					<div class="detail_desc">
						디마르3는 피부 개선 가능성과 활성에 연관된 성분을 조사하였습니다.<br>
						이를 통해 ‘시그니처 실트 벨 크렘 2.7’의 성분은 피부개선 도움에 대한 가능성을 제시할 수 있습니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/334590415.sd.mp4?s=74b75d495a6c10945683320f5a6211eb859d16bd&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt right" style="margin-bottom:15px;">
							* 이해를 돕기 위해 제작된 가상의 연출 영상입니다.<br>
							* 성분적 특성에 한함
						</div>
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/70/detail_img2.jpg" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						케랄라 병풀, 식물성 스쿠알란, 베타글루칸,<br>
						벨기에 온천수 타고난 피부의 가능성을 열다
					</div>
					<div class="detail_desc">
						깊은 케랄라 정글에서 극소량만을 얻을 수 있는 야생 '케랄라 병풀', 고품질 올리브에서 추출되는 피부 친화력이 높은 유분인 '식물성 스쿠알란',<br>
						효모의 세포벽에 존재하는 고분자 성분 '베타글루칸', 미네랄 함량이 높은 '벨기에 온천수'를 통해 우리 피부를 편안하게 합니다.
					</div>
					<div class="detail_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/70/detail_img1.jpg" alt="">
						<div class="txt right">
							* 성분적 특성에 한함
						</div>
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg70"></div>
					<div class="detail_step" style="padding-top:50px;">
						<div class="detail_img_box mb80">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/70/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>피부가 매끄럽지 못한 느낌이다.</li>
								<li>칙칙하고 건조한 피부가 신경쓰인다.</li>
								<li>진하지만 끈적이지 않는 제품을 사용하고 싶다.</li>
								<li>자극적이지 않은 제품을 사용하고 싶다.</li>
								<li>야생 병풀추출물이 함유된 제품을 사용하고 싶다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/70/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							<b>토너  사용 후 충분히 펴 발라줍니다.</b><br>
								<b>그 후, 자외선 차단제/메이크업 제품을 바를 수도 있습니다.</b><br>
							피부가 매우 건조할 경우 크림 전 단계에서 앰플을 사용해도 좋습니다.
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script>
			new Swiper('.slide1', {
				pagination: {
					el: '.swiper-pagination'
				},
				speed : 600,
				loop : true,
				autoplay : {
					delay : 2000,
					disableOnInteraction: false
				}
			});
		</script>
		
		<!-- //70. 시그니처 실트 벨 크렘 2.7 -->
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
                        아침, 저녁 세안 후 스킨 케어 마지막 단계에서 사용해 주시면 됩니다.
                    </div>
                </li>
                <li>
                    <div class="q">2. 자외선 차단제나 메이크업 제품을 발라도 되나요?</div>
                    <div class="a">
                        스킨 케어 마무리 후 자외선 차단제, 메이크업 제품을 바르셔도 됩니다.
                    </div>
                </li>
                <li>
                    <div class="q">3. 임신 중 사용이 가능한가요?</div>
                    <div class="a">
                        임신 중 사용 가능합니다. 다만, 임신 중에는 호르몬 변화의 영향으로 평소보다 피부가 민감할 수 있으므로<br>
                        팔 안쪽 등에 소량 테스트 후 사용을 권해드립니다.
                    </div>
                </li>
                <li>
                    <div class="q">4. 기존 실트 벨 크렘2.7과 동일한 제품인가요?</div>
                    <div class="a">
                        기존 판매하던 실트 벨 크렘2.7에서 패키지를 개선시키는 등 업그레이드를 한 리뉴얼 제품입니다.<br>
                        기존 실트 벨 크렘2.7을 사용중이었다면 그대로 사용하셔도 좋습니다.
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
                        <a href="javascript:gd_open_write_popup('goodsqa', '70')" class="write">문의 작성하기</a>
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
                        온천수, 글리세린, 세틸에틸헥사노에이트, 카프릴릭/카프릭트라이글리세라이드, 정제수, 메틸프로판다이올, 나이아신아마이드, 폴리글리세릴-10다이스테아레이트, 세테아릴알코올, 베타인, 식물성스쿠알란, 암모늄아크릴로일다이메틸타우레이트/브이피코폴리머, 다시마추출물, 한련초잎추출물, 분홍바늘꽃꽃/잎/줄기추출물, 쇠비름추출물, 병풀추출물, 맥아추출물, 당느릅나무뿌리추출물, 줄맨드라미씨추출물, 귀리커넬추출물, 봉의꼬리추출물, 아티초크잎추출물, 올리브나무잎추출물, 에델바이스추출물, 노티드랙추출물, 엘더꽃추출물, 페루기네움철쭉추출물, 하이드로제네이티드레시틴, 소듐하이알루로네이트, 세라마이드엔피, 판테놀, 프룩토올리고사카라이드, 베타-글루칸, 마데카소사이드, 하이드롤라이즈드하이알루로닉애씨드, 아스코빌글루코사이드, 징크피씨에이, 아스코빅애씨드, 팔미틱애씨드, 스테아릭애씨드, 부틸렌글라이콜, 폴리쿼터늄-51, 소듐스테아로일글루타메이트, 아데노신, 다이소듐이디티에이, 토코페릴아세테이트, 미리스틱애씨드, 시트릭애씨드, 말토덱스트린, 화산재, 1,2-헥산다이올, 향료, 펜틸렌글라이콜, 카프릴릴글라이콜, 소듐벤조에이트, 포타슘솔베이트, 리날룰, 벤질벤조에이트
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        아침, 저녁 스킨 케어 마지막 단계에 얼굴 전체에 펴 발라줍니다.
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
