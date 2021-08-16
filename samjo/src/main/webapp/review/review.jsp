<%@page import="web.data.dao.ProductDAO"%>
<%@page import="web.data.dto.ProductDTO"%>
<%@page import="web.data.dao.ReviewDAO"%>
<%@page import="java.util.List"%>
<%@page import="web.data.dto.ReviewDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link type="text/css" rel="stylesheet" href="css/board.css">
<%
	List<ReviewDTO> reviewList = ReviewDAO.getDAO().selectAllReview();
%>
<style type="text/css">
#container {margin-top: 70px;}
</style>

<div id="container">
	<div id="contents">
		<div class="sub_content">
<div class="content">
<div class="board_zone_sec">
    <div class="board_zone_tit">
        <h2>REVIEW</h2>
    </div>
	<div class="board_zone_cont" style="padding-top:19px;">
        <div class="board_zone_list" align="left">
        	<% for(ReviewDTO review:reviewList) { %>
        		<% ProductDTO product = ProductDAO.getDao().selectIdProduct(review.getProductId()); %>
				<div class="reviewList">
					<div class="list head" data-bd-id='goodsreview' data-sno="223157"  data-auth="y">
						<div class="div1" style="text-align: center;">
							<span>
								<img src="<%=request.getContextPath() %>/product/image/<%=product.getpImg() %>" alt="공지" width="80" height="80" />
							</span>
						</div>
						<div class="div2">
							<a>
								<span class="s1"><%=product.getpName() %></span>
								<span class="s2">
									<%=review.getReviewSubject() %>
								</span>
							</a>
						</div>
						<div class="div4"><%=review.getMemberId() %></div>
						<div class="div5"><%=review.getReviewDate().substring(0, 10) %></div>
					</div>
					<div class="view cont"  style="display:none;">
						<div class="review_text">
							<p class="word"><%=review.getReviewContext() %></p>
						</div>
					</div>
				</div>
			<% } %>

            <div class="pagination"><ul><li class="on"><span>1</span></li></ul></div>
        </div>
    </div>
</div>

<div id="layerDim" class="dn">&nbsp;</div>


<script type="text/javascript" src="/data/skin/front/mime/js/gd_board_list.js" charset="utf-8"></script>
<script>
/* $(document).ready(function () {
    $('img.js_image_load').error(function () {
                $(this).css('background', 'url("/data/skin/front/mime/board/skin/review/img/etc/noimg.png") no-repeat center center');
                $(this).attr('src', '/data/skin/front/mime/img/etc/blank.gif');
            })
            .each(function () {
                $(this).attr("src", $(this).attr("src"));
            })
}); */
</script>
<script>
$(document).ready(function(){
	//Add Inactive Class To All Accordion Headers
	$('.list.head').toggleClass('inactive-header');
	
	//Set The Accordion Content Width
	var contentwidth = $('.list.head').width();
	$('.view.cont').css({'width' : contentwidth });
	

	// The Accordion Effect
	//codefix
    $('.list.head').click(function () {

        if($(this).is('.inactive-header') ) {

            var auth = $(this).data('auth');

            var target = $(this);

            switch (auth) {
                case 'n' :
                case 'y' :
                    codefixViewContent(target);
                    break;
                case 'c' :
                    passwordListLayer.show();
                    passwordListLayer.inputEl.bind('keydown', function () {
                        if (event.keyCode == 13) {
                            passwordListLayer.btnEl.trigger('click');
                        }
                    });
                    passwordListLayer.btnEl.unbind('click').bind('click', function () {
                        if (passwordListLayer.inputEl.val() == '') {
                            alert(__('비밀번호를 입력해주세요.'));
                            return false;
                        }

                        $("#lyPassword .ly_close ").click();
                        codefixViewContent(target,auth);


                    });
                    break;
            }


        }else {
            $(this).toggleClass('active-header').toggleClass('inactive-header');
            $(this).next().slideToggle().toggleClass('open-content');
        }
    });
    //codefix
	
	//return false;
});


function codefixViewContent(target,auth) {

    var sno = $(target).data('sno');
    var bdId = $(target).data('bd-id');

    if(auth =='c') {

        $.ajax({
            method: "POST",
            url: "../board/board_ps.php",
            data:{mode: 'viewContent', sno: sno, bdId: bdId, writerPw: $("#frmWritePassword input[name='writerPw']").val()},
            dataType: 'json'
        }).success(function (data) {

            if (data['result'] == 'ok') {
                $(target).next('div.view').html(data.msg);
                $('.active-header').toggleClass('active-header').toggleClass('inactive-header').next().slideToggle().toggleClass('open-content');
                $(target).toggleClass('active-header').toggleClass('inactive-header');
                $(target).next().slideToggle().toggleClass('open-content');
            } else {
                alert(data['msg']);
                return;
            }

        }).error(function (e) {
            if(e.responseText)
                alert(e.responseText);
        });

    } else {

        $('.active-header').toggleClass('active-header').toggleClass('inactive-header').next().slideToggle().toggleClass('open-content');
        $(target).toggleClass('active-header').toggleClass('inactive-header');
        $(target).next().slideToggle().toggleClass('open-content');

    }

}


$(document).ready(function(){
	$( ".sortBox" ).click(function() {
		$( this ).toggleClass( "on" );
	});
	$('html').click(function(e) { 
		if (!$(e.target).is('.sortingBox')) {
			if($('#sortingBox').hasClass('on')){
				$('#sortingBox').removeClass('on')
			}
		}
	});
});
</script>

<script type="text/javascript">
    // DOM 로드
    $(function () {
        $('.scroll_right_cont').todayGoods();
    });

    // 최근본상품 리스트 페이징 처리 플러그인
    $.fn.todayGoods = function () {
        // 기본값 세팅
        var self = $(this);
        var setting = {
            page: 1,
            total: 0,
            rowno: 4
        };
        var element = {
            goodsList: self.find('ul > li'),
            closeButton: self.find('ul > li > button'),
            prev: self.find('.scr_paging > .bnt_scroll_prev'),
            next: self.find('.scr_paging > .bnt_scroll_next'),
            paging: self.find('.scr_paging')
        };

        // 페이지 갯수 설정
        setting.total = Math.ceil(element.goodsList.length / setting.rowno);

        // 화면 초기화 및 갱신 (페이지 및 갯수 표기)
        var init = function () {
            if (setting.total == 0) {
                setting.page = 0;
                element.paging.hide();
            }
            self.find('ul').hide().eq(setting.page - 1).show();
            self.find('.scr_paging .js_current').text(setting.page);
            self.find('.scr_paging .js_total').text(setting.total);
        }

        // 삭제버튼 클릭
        element.closeButton.click(function(e){
            $.post('../goods/goods_ps.php', {
                'mode': 'delete_today_goods',
                'goodsNo': $(this).data('goods-no')
            }, function (data, status) {
                // 값이 없는 경우 성공
                if (status == 'success' && data == '') {
                    location.reload(true);
                }
                else {
                    console.log('request fail. ajax status (' + status + ')');
                }
            });
        });

        // 이전버튼 클릭
        element.prev.click(function (e) {
            setting.page = 1 == setting.page ? setting.total : setting.page - 1;
            init();
        });

        // 다음버튼 클릭
        element.next.click(function (e) {
            setting.page = setting.total == setting.page ? 1 : setting.page + 1;
            init();
        });

        // 화면 초기화
        init();
    };
</script>
		</div>
	</div>
</div>
</div>

<!-- Enliple Common Tracker v3.6 [공용] start -->
<script type="text/javascript">
    <!--
    function mobRf() {
        var rf = new EN();
        rf.setData("userid", "demar3adm");
        rf.setSSL(true);
        rf.sendRf();
    }
    //-->
</script>
<script src="https://cdn.megadata.co.kr/js/en_script/3.6/enliple_min3.6.js" defer="defer" onload="mobRf()"></script>
<!-- Enliple Common Tracker v3.6 [공용] end -->

<!-- WIDERPLANET HOME SCRIPT START 2019.12.17 -->
<div id="wp_tg_cts" style="display:none;"></div>
<script type="text/javascript">var wp_conf = 'ti=47892&v=1&device=web';</script>
<script type="text/javascript" defer src="//cdn-aitg.widerplanet.com/js/wp_astg_2.0_mall.js"></script>
<!-- // WIDERPLANET HOME SCRIPT END 2019.12.17 -->


<!-- 외부 스크립트 -->
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K2B84RG"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) --><!-- WIDERPLANET HOME SCRIPT START 2016.10.12 -->
        <div id="wp_tg_cts" style="display:none;"></div>
        <script type="text/javascript">var wp_conf = 'ti=47892&v=1&device=web';</script>
        <script type="text/javascript" defer src="//cdn-aitg.widerplanet.com/js/wp_astg_2.0_mall.js"></script>
        <!-- // WIDERPLANET HOME SCRIPT END 2016.10.12 -->