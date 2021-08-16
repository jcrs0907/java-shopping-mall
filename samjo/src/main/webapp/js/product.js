/**
 * 
 */

$(document).ready(function () {
    $('.btn_filter').click(function(){
        $(this).toggleClass('active');
        if($(this).hasClass('active')){
            $(this).find('span').html('필터열기');
            $('.category_bottom').slideUp();
        }else{
            $(this).find('span').html('필터닫기');
            $('.category_bottom').stop().slideDown();
        }
    })

    $('input[name="productType"]').click(function() {
        var cateCd = $(this).val();
        var parentCd = cateCd.substr(0,3);
        console.log(cateCd);

        $('.category_dl').not('.js-cate-'+cateCd.substr(0,3)).removeClass('active');
        $('.category_dl').not('.js-cate-'+cateCd.substr(0,3)).find('input[name="productType"]').prop("checked",false);
        if($('.js-cate-'+parentCd+' input[name="productType"]:checked').length) {
            $('.js-cate-'+parentCd).addClass("active");
        } else {
            $('.js-cate-'+parentCd).removeClass("active");
        }

        $('#allCategory').prop("checked",false);
        $("dl.all .checkcontainer").removeClass("on");
    });


    $('#allCategory').click(function() {
        console.log("c");
        $('input[name="productType"]').prop("checked",false);
        $('.category_dl').removeClass('active');
    });
});
