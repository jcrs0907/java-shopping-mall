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
    <div class="goods_wrap goods_40">
        <div class="top_box">
            <div class="top_visual bg40">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
시타 듀 실드 크림
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">CITA DU SHIELD CREAM</div>
                <div class="goods_volume minerva">
                    70g
                </div>
					<%-- price & button 영역 --%>
                <%@ include file="/product/detail_view/goods/goods_btn.jspf" %>



                <div class="btn_wrap">
                
                    <!-- 품절설정 -->
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
<div class="item_goods_sec view40">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 40.  시타 듀 실드 크림 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_40.jpg" style="display:none;">
		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg40">
					<div class="img_title">
						<img src="/data/skin/front/mime/img/goods/new/40/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						쉽게 피부를 망가트리는 피부틈새 발견
					</div>
					<div class="detail_desc">
						외부자극에 의한 틈새 형태의 피부 손상은 여러 피부문제를 일으킨다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/488795573.sd.mp4?s=fef895ed9643daa39489fe99e72bc8ab66f63d92&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt right">* 이해를 돕기 위한 영상입니다. </div>
					</div>
					<div class="detail_img_box">
						<img src="/data/skin/front/mime/img/goods/new/40/detail_img1.jpg" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						피부틈새 방치 시<br>
						악화되는 피부변화
					</div>
					<div class="detail_desc">
						피부틈새를 방치하면 외부자극에 취약한 민감성 피부로 변화됩니다.<br>
						이로써 다양한 피부문제를 겪을 수 있습니다.
					</div>
					<div class="video_box">
						<video src="https://player.vimeo.com/external/488795589.sd.mp4?s=e92ba591081b474c2f7b8d4f7848d10153eeee14&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt">
							* 해당 이미지는 Skin Damage Mechanisms Related to Airborne Particulate Matter Exposure.(Magnai ND, 2016)<br>
							논문 중 일부 내용을 발췌하여 재구성하였습니다.
						</div>
					</div>
					<div class="detail_img_box">
						<img src="/data/skin/front/mime/img/goods/new/40/detail_img2.jpg" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						시타 듀 실드 크림 사용자 만족도
					</div>
					<div class="detail_desc">
						시험기관으로부터 검증된 시타 듀 실드 크림  사용자 만족도 입니다.
					</div>
					<div class="detail_img_box">
						<img src="/data/skin/front/mime/img/goods/new/40/detail_img3.jpg" alt="">
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg40"></div>
					<div class="detail_step" style="padding-top:90px;">
						<div class="detail_img_box mb80">
							<img src="/data/skin/front/mime/img/goods/new/40/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title" style="margin-bottom:10px;">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>열심히 세안해도 수 시간 안에 번들거린다.</li>
								<li>피부 불쾌감이나 찝찝함을 자주 느낀다.</li>
								<li>메이크업이 금방 무너진다.</li>
								<li>유분은 많으나 속당김을 느낀다.</li>
								<li>특정 부위에 피지가 과도하게 분비된다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_img_box">
						<img src="/data/skin/front/mime/img/goods/new/40/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							스킨케어 마지막 단계에서 적당량을 도포 후<br>
							가볍게 마사지하여 흡수시켜 주세요.<br>
							<b>*시타듀 1·2제와 함께 사용하시는 것을 권장합니다.</b>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //40.  시타 듀 실드 크림 -->
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
                        시타 듀 라인은 피부성질 개선을 목적으로 같이 연구된 제품들 입니다. 세안 후 DX 시타 듀 토너 2.0 다음 단계 1제와 2제를 순서대로 발라주세요. 그리고 시타 듀 크림으로 마무리 해주시면 됩니다. (DX 시타 듀 토너 2.0 > 시타 듀 1제 > 시타 듀 2제 > 시타 듀 크림)
                    </div>
                </li>
                <li>
                    <div class="q">3. 임산부 사용이 가능한가요?</div>
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
                        <a href="javascript:gd_open_write_popup('goodsqa', '40')" class="write">문의 작성하기</a>
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
                        70g
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
                        정제수, 글리세린, 다이카프릴릴에터, 1,2-헥산다이올, 나이아신아마이드, 다시마추출물, 한련초잎추출물, 올레라케아아크멜라추출물, 병풀추출물, 무화과추출물, 녹차추출물, 드럼스틱씨추출물, 버지니아풍년화추출물, 서양산딸기추출물, 야생딸기추출물, 연꽃잎추출물, 티트리잎추출물, 호스테일켈프추출물, 황금추출물, 흰버드나무껍질추출물, 살구추출물, 오레가노잎추출물, 율무씨추출물, 인동덩굴꽃추출물, 질경이추출물, 트루로즈오브예리코추출물, 편백잎추출물, 쇠비름추출물, 락토바실러스/콩발효추출물, 육계나무껍질추출물, 사과추출물, 얼룩파인애플추출물, 유칼립투스잎추출물, 키위추출물, 포도추출물, 국화추출물, 매실나무꽃추출물, 병풀잎추출물, 복사나무잎추출물, 복숭아추출물, 비치스트로베리추출물, 뽕나무줄기추출물, 스페인감초뿌리추출물, 쑥잎추출물, 약모밀추출물, 양벚나무열매추출물, 지치뿌리추출물, 탱자추출물, 황벽나무껍질추출물, 회화나무뿌리추출물, 녹차수, 라벤더오일, 하이드로제네이티드레시틴, 캐모마일꽃오일, 소듐하이알루로네이트, 다이메티콘/비닐다이메티콘크로스폴리머, 헥실데실라우레이트, 헥실데칸올, 부틸렌글라이콜, 암모늄아크릴로일다이메틸타우레이트/브이피코폴리머, 카보머, 트로메타민, 폴리글리세릴-10미리스테이트, 폴리쿼터늄-51, 아데노신, 프룩토올리고사카라이드, 잔탄검, 베타-글루칸, 하이드롤라이즈드하이알루로닉애씨드, 라피노오스, 마데카소사이드, 바이오틴, 베타인, 식물성스쿠알란, 아이소헥사데칸, 칸디다 봄비콜라/글루코오스/메틸레이프씨데이트발효물, 판테놀, 세라마이드엔피, 알지닌, 팔미토일펜타펩타이드-4, 류코노스톡/무발효여과물, 테르무스 테르모필루스발효물, 다이프로필렌글라이콜, 소듐하이알루로네이트크로스폴리머, 글리세릴스테아레이트, 팔미토일트라이펩타이드-5, 하이알루로닉애씨드, 글리세릴카프릴레이트, 노나펩타이드-1, 세라마이드에이에스, 세라마이드에이피, 세라마이드엔에스, 세라마이드이오피, 아세틸헥사펩타이드-8, 리날룰, 카퍼트라이펩타이드-1, 콜레스테롤, 트라이펩타이드-1, 팔미토일테트라펩타이드-7, 팔미토일트라이펩타이드-1, 하이드롤라이즈드소듐하이알루로네이트, 헥사펩타이드-9, 에틸헥실글리세린, 펜틸렌글라이콜, 카프릴릴글라이콜, 왜당귀뿌리추출물
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        시타 듀 1.6 버닝과 함께 연구된 제품으로 시타 듀 제품 사용 후 실드크림으로 마무리 해주시면 지성피부 정상화에 더욱 효과적입니다. 적당량을 도포 후 가볍게 마사지하여 흡수시켜 주세요
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
                    <td>02-6010-1177</td>
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


