	$(document).ready(function() {
	
	
	//구매하기에서 뒤로가기 눌렀을 경우 reset check
  	resetCheck();
		
	//checkbox 클릭 이벤트
	//체크박스 전체 아이템 수, 클릭된 아이템 수
	$(document).on('change','#frmCart input:checkbox[name="cartSno"], #allCheck1',function(e){
		e.stopPropagation();
		e.preventDefault();
		let checkItem = $('#frmCart input:checkbox[name="cartSno"]');
		let checkAllItem = $('#allCheck1');
		let allCount = checkItem.length;
		let deleteBtn = $(".btn_order_choice_del");
		let target = $(this);
		
		
		
		
		//checkbox 라벨 체크 스타일 변경
		$('label[for=' + target.attr('id') + ']').toggleClass('on');
			
		//전체 선택 checkbox일 경우 각 checkbox 스타일, 체크 상태 만들기 
		if(target.hasClass('gd_select_all_goods') && $('label[for=' + target.attr('id') + ']').hasClass('on') ){
			checkItem.prop('checked',true);
			checkItem.next('label.check_s').addClass('on');
		}else if(target.hasClass('gd_select_all_goods') && !$('label[for=' + target.attr('id') + ']').hasClass('on')){
			checkItem.prop('checked',false);
			checkItem.next('label.check_s').removeClass('on');
		}
		
		let checkedItem = $('#frmCart tbody input:checkbox[name="cartSno"]:checked');
		let checkedItemCount = checkedItem.length;
		
		
		//구매할 상품 개수, 전체 상품 개수 비교 
		if(checkedItemCount == allCount){
			checkAllItem.prop('checked',true);
			checkAllItem.next('label.check_s').addClass('on');
			deleteBtn.data('action-type','clear');
		}else if(checkedItemCount != allCount){
			deleteBtn.data('action-type','delete');
			checkAllItem.prop('checked',false);
			checkAllItem.next('label.check_s').removeClass('on');
		}else if(checkedItemCount == 0){
			deleteBtn.data('action-type','');
			checkAllItem.prop('checked',false);
			checkAllItem.next('label.check_s').removeClass('on');
		}
		
		deleteBtn.data('member-id',checkedItem.eq(0).data("member-id"));
		
		//total 구하기
		getTotal();
		
		
	});
	
	
	//상품 수량 변경, sum price 수정 
	$(".goods_cnt").on("click",function(){
		let countBox = $(this).closest('.goods_qty');
		let row = countBox.closest('tr');
		let quantityInput = countBox.find('input[name="goodsCnt[]"]');
		let count = quantityInput.val();
		let price = row.find('.fno.price').text();
		let checkBox = row.find('input[name="cartSno"]');
		let sum = row.find('.order_sum_txt');
		if($(this).hasClass("up")){
			count++;
			
		}else{
			count--;	
			if(count < 1) return;
		}		
		
		
		let regex = /[^0-9]/g;// 숫자가 아닌 문자열을 선택하는 정규식
		let changePrice = price.replace(regex, "");// 원래 문자열에서 숫자가 아닌 모든 문자열을 빈 문자로 변경
		let total = count * changePrice;
		let cn1 = total.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		sum.html(cn1);
		
		checkBox.data('quantity',"");
		checkBox.data('quantity',count);
		quantityInput.empty()
		quantityInput.val(count);
		
		getTotal();
	});
	
	
	function getTotal(){
		let total = 0;
		let cn1;
		$("#totalSettlePrice").html("0");
		
		if($('input[name="cartSno"]:checked').length){

		 $('input[name="cartSno"]:checked').each(function () {
	   	let row = $(this).closest('tr');
		let quantityInput = row.find('input[name="goodsCnt[]"]');
		let count = quantityInput.val();
		let price = row.find('.fno.price').text();
		
		let regex = /[^0-9]/g;// 숫자가 아닌 문자열을 선택하는 정규식
		let changePrice = price.replace(regex, "");// 원래 문자열에서 숫자가 아닌 모든 문자열을 빈 문자로 변경
		
		
		total += changePrice * count;
		
		cn1 = total.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		
		});
		return $("#totalSettlePrice").html(cn1);
		}
	}

	function resetCheck(){
		$("#totalSettlePrice").html("0");
		$('input:checkbox[name="cartSno"]').prop('checked',false);

	}
	
	
	
});
				

