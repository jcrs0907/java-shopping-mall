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
    <div class="goods_wrap goods_47">
        <div class="top_box">
            <div class="top_visual bg47">
            </div>
            <div class="top_goods_info">
                <div class="goods_name">
플루시온 17 토너
                    <!-- 품절설정 -->
                </div>
                <div class="goods_model minerva">POUR TION 17 TONER</div>
                <div class="goods_volume minerva">
                    제품용량 : 200g
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
<div class="item_goods_sec view47">
    
    <!-- 01.상품 기술서 -->
    <div class="detail_cont bg">
        <div id="detail" class="descript_cont">
            <div class="txt-manual">
                <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                
                <!-- 47. 플루시온 17 토너 -->
		<img src="https://demar3-src.s3.ap-northeast-2.amazonaws.com/front/mime/img/goods/thumb_47.jpg" style="display:none;">
		<style>
			.cocoen {width:100%;}
			.cocoen_area {height:522px;margin-bottom:3px;}
			.cocoen_area .layer {position:absolute;left:33px;bottom:20px;}
			.cocoen-drag:before {margin-top:-70px;}
		</style>
		
		<div class="detail_wrap">
			<div class="tab_contents">
				<div class="visual_box bg47">
					<div class="img_title">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/47/visual_title.png" alt="">
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						NMF : 피부 속에 자연적으로 존재하는 천연 보습인자
					</div>
					<div class="detail_desc">
						NMF(Natural Moisturizing Factor)는 피부 속의 천연 보습 인자로, 피부의 수분 증발을 막아줍니다.<br>
						하지만, 나이가 들수록 NMF는 사라지게 되어 우리 피부는 건조해집니다.<br><br>
						플루시온 17 토너의 3중 수분 성분이 피부의 보습 능력을 강화하고,<br>
						수분 밸런스를 유지하는 데에 도움을 줍니다.
					</div>
					<div class="video_box mb0">
						<video src="https://player.vimeo.com/external/413000617.hd.mp4?s=7cd70874a7fa681932a759ef6b2231c359817419&amp;profile_id=169" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt left" style="margin-bottom:20px;">
							* 이해를 돕기 위한 가상의 이미지 입니다.
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						우수한 발림성
					</div>
					<div class="detail_desc">
						피부 보습을 위해 잘 전달 될 수 있도록 노력하였습니다.<br>
						촉촉하지만 끈적이지 않는 제형으로 빠르게 흡수됩니다.
					</div>
					<div class="video_box mb0">
						<video src="https://player.vimeo.com/external/423444624.hd.mp4?s=30abf9059024411efd665ced6b7ca65246c837c6&amp;profile_id=174" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt left" style="margin-bottom:20px;">
							* 실제  플루시온17 토너를 사용한 이미지 입니다(개인차 있을 수있음)
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						3중 피부 보습 성분
					</div>
					<div class="detail_desc">
						플루시온 17 토너는 3중 수분 성분을 함유하여 피부의 보습을 돕습니다.
					</div>
					<div class="video_box mb0">
						<video src="https://player.vimeo.com/external/423444656.hd.mp4?s=e5004bf9aab19fc715cd91666c85f80938ca4873&amp;profile_id=174" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt left" style="margin-bottom:20px;">
							* 플루시온17 토너를 도포하는 장면을 촬영한 영상입니다.<br>
							* 함유 성분: Aqua Moisture, Aquaxy.l, Aqua GG<br>
							* 개인차 있을 수 있습니다
						</div>
					</div>
				</div>
				<div class="detail_contents mb150">
					<div class="detail_title">
						피부 근원적인 문제인 수분, NMF의 차이
					</div>
					<div class="detail_desc">
						NMF는 피부 수분도에 전반적인 영향을 끼칠 수 있습니다.
					</div>
					<div class="cocoen_area">
						<div class="cocoen">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/47/img_before.jpg" alt="">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/47/img_after.jpg" alt="">
						</div>
						<script>
							!function(e){if("object"==typeof exports&&"undefined"!=typeof module)module.exports=e();else if("function"==typeof define&&define.amd)define([],e);else{var t;t="undefined"!=typeof window?window:"undefined"!=typeof global?global:"undefined"!=typeof self?self:this,t.Cocoen=e()}}(function(){return function e(t,n,i){function s(o,a){if(!n[o]){if(!t[o]){var l="function"==typeof require&&require;if(!a&&l)return l(o,!0);if(r)return r(o,!0);var d=new Error("Cannot find module '"+o+"'");throw d.code="MODULE_NOT_FOUND",d}var h=n[o]={exports:{}};t[o][0].call(h.exports,function(e){var n=t[o][1][e];return s(n?n:e)},h,h.exports,e,t,n,i)}return n[o].exports}for(var r="function"==typeof require&&require,o=0;o<i.length;o++)s(i[o]);return s}({1:[function(e,t,n){"use strict";function i(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}var s=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var i in n)Object.prototype.hasOwnProperty.call(n,i)&&(e[i]=n[i])}return e},r=function(){function e(e,t){for(var n=0;n<t.length;n++){var i=t[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(e,i.key,i)}}return function(t,n,i){return n&&e(t.prototype,n),i&&e(t,i),t}}(),o=function(){function e(t,n){i(this,e),this.options=s({},e.defaults,n),this.element=t||document.querySelector(".cocoen"),this.init()}return r(e,[{key:"init",value:function(){this.createElements(),this.addEventListeners(),this.dimensions()}},{key:"createElements",value:function(){var e=document.createElement("span");e.className=this.options.dragElementSelector.replace(".",""),this.element.appendChild(e);var t=document.createElement("div"),n=this.element.querySelector("img:first-child");t.appendChild(n.cloneNode(!0)),n.parentNode.replaceChild(t,n),this.dragElement=this.element.querySelector(this.options.dragElementSelector),this.beforeElement=this.element.querySelector("div:first-child"),this.beforeImage=this.beforeElement.querySelector("img")}},{key:"addEventListeners",value:function(){this.element.addEventListener("click",this.onTap.bind(this)),this.element.addEventListener("mousemove",this.onDrag.bind(this)),this.element.addEventListener("touchmove",this.onDrag.bind(this)),this.dragElement.addEventListener("mousedown",this.onDragStart.bind(this)),this.dragElement.addEventListener("touchstart",this.onDragStart.bind(this)),window.addEventListener("mouseup",this.onDragEnd.bind(this)),window.addEventListener("resize",this.dimensions.bind(this))}},{key:"dimensions",value:function(){this.elementWidth=parseInt(window.getComputedStyle(this.element).width,10),this.elementOffsetLeft=this.element.getBoundingClientRect().left+document.body.scrollLeft,this.beforeImage.style.width=this.elementWidth+"px",this.dragElementWidth=parseInt(window.getComputedStyle(this.dragElement).width,10),this.minLeftPos=this.elementOffsetLeft+10,this.maxLeftPos=this.elementOffsetLeft+this.elementWidth-this.dragElementWidth-10}},{key:"onTap",value:function(e){e.preventDefault(),this.leftPos=e.pageX?e.pageX:e.touches[0].pageX,this.requestDrag()}},{key:"onDragStart",value:function(e){e.preventDefault();var t=e.pageX?e.pageX:e.touches[0].pageX,n=this.dragElement.getBoundingClientRect().left+document.body.scrollLeft;this.posX=n+this.dragElementWidth-t,this.isDragging=!0}},{key:"onDragEnd",value:function(e){e.preventDefault(),this.isDragging=!1}},{key:"onDrag",value:function(e){e.preventDefault(),this.isDragging&&(this.moveX=e.pageX?e.pageX:e.touches[0].pageX,this.leftPos=this.moveX+this.posX-this.dragElementWidth,this.requestDrag())}},{key:"drag",value:function(){this.leftPos<this.minLeftPos?this.leftPos=this.minLeftPos:this.leftPos>this.maxLeftPos&&(this.leftPos=this.maxLeftPos);var e=this.leftPos+this.dragElementWidth/2-this.elementOffsetLeft;e/=this.elementWidth;var t=100*e+"%";this.dragElement.style.left=t,this.beforeElement.style.width=t,this.options.dragCallback&&this.options.dragCallback(e)}},{key:"requestDrag",value:function(){window.requestAnimationFrame(this.drag.bind(this))}}]),e}();o.defaults={dragElementSelector:".cocoen-drag",dragCallback:null},t.exports=o},{}]},{},[1])(1)});
							
							document.addEventListener('DOMContentLoaded', function(){
								new Cocoen();
							});
						</script>
						<div class="layer">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/47/layer.png" alt="">
						</div>
					</div>
					<div class="video_box mb0">
						<video src="https://player.vimeo.com/external/413003057.sd.mp4?s=4b84b47c219880a65f6a7cfc91d01f03f89af545&amp;profile_id=165" muted="" playsinline="" autoplay="" loop="" poster=""></video>
						<div class="txt left" style="margin-bottom:20px;">
							* 이해를 돕기 위한 가상의 이미지 입니다.<br><br><br>
							참고 논문자료<br>
							* Clive R. Harding and Anthony V. Rawlings: Effects of Natural Moisturizing Factor and Lactic Acid Isomers on Skin Function, Dry Skin and Moisturizers: Chemistry and Function P187-209<br>
							* Eugene Pashkovski, Alex Lips, Mike Petko: Mechanisms of natural moisturizing factors for skin hydration, J AM ACAD DERMATOL MARCH 2009 P1023
						</div>
					</div>
				</div>
				<div class="detail_step_wrap">
					<div class="detail_video_box bg47"></div>
					<div class="detail_step" style="padding-top:90px;">
						<div class="detail_img_box mb80">
							<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/47/detail_info.png" alt="">
						</div>
						<div class="with_text_box">
							<div class="with_title" style="margin-bottom:10px;">이런 분들에게 추천합니다.</div>
							<ul class="with_ul">
								<li>기초를 덧발라도 건조하다.</li>
								<li>피부 속당김이 있다.</li>
								<li>자극이 적으며 산뜻한 마무리를 원한다.</li>
								<li>유수분 조절이 잘되는 제품을 찾는다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="tab_contents">
				<div class="step_contents">
					<div class="step_img_box">
						<img src="https://www.demar3.com/data/skin/front/mime/img/goods/new/47/detail_step.png" alt="">
					</div>
					<div class="step_text_box">
						<div class="step_title">사용방법</div>
						<div class="step_text1">
							- 세안 후 솜에 적당량을 덜어 가볍게 닦아내 줍니다.<br>
							- 세안 후 손에 적당량을 덜어 가볍게 두드려 흡수 시켜 줍니다.<br>
							- 자극이 적은 솜에 적셔 부분 수분팩으로 사용 가능합니다
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
		<!-- //47. 플루시온 17 토너 -->
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
                    <div class="q">2. 남자나 지성피부가 사용해도 괜찮나요?</div>
                    <div class="a">
                        유수분 밸런스가 적절한 제품으로 사용하셔도 무관합니다.
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
                        <a href="javascript:gd_open_write_popup('goodsqa', '47')" class="write">문의 작성하기</a>
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
                        200g
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
                        정제수, 프로판다이올, 1,2-헥산다이올, 나이아신아마이드, 메틸프로판다이올, 글리세레스-26, 병풀추출물, 무화과추출물, 우엉뿌리추출물, 아마씨추출물, 알로에베라잎추출물, 오크라열매추출물, 당느릅나무뿌리추출물, 줄맨드라미씨추출물, 구주소나무잎오일, 하이드로제네이티드레시틴, 라피노오스, 부틸렌글라이콜, 소듐폴리아크릴레이트, 알란토인, 옥틸도데세스-16, 아크릴레이트/C10-30알킬아크릴레이트크로스폴리머, 아데노신, 자일리틸글루코사이드, 트로메타민, 다이소듐이디티에이, 안하이드로자일리톨, 자일리톨, 글리세릴글루코사이드, 글루코오스, 세라마이드엔피, 글리세린, 1-메틸하이단토인-2-이미드, 글라이신, 글루코사민에이치씨엘, 글루타믹애씨드, 글루타민, 다이포타슘포스페이트, 라이신, 류신, 마그네슘시트레이트, 마그네슘클로라이드, 마그네슘피씨에이, 메티오닌, 발린, 세린, 소듐락테이트, 수크로오스, 시스테인, 시트룰린, 씨솔트, 아스파라진, 아스파틱애씨드, 아이소류신, 알라닌, 알지닌, 암모니아, 오르니틴, 녹색201호, 우레아, 우릭애씨드, 황색4호, 카퍼트라이펩타이드-1, 칼슘클로라이드, 타우린, 타이로신, 트레오닌, 트립토판, 페닐알라닌, 포타슘하이드록사이드, 프롤린, 히스티딘, 하이드록시아세토페논, 에틸헥실글리세린, 포믹애씨드
                    </td>
                </tr>
                <tr>
                    <th>사용방법</th>
                    <td>
                        세안 후 적당량을 화장솜 또는 손에 덜어 피부 안쪽에서 바깥쪽으로 피부결에 따라 골고루 펴 발라준 후 가볍게 두드려 주면서 흡수시켜줍니다.
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
