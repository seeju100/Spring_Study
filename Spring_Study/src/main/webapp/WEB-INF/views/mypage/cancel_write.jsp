<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CONO:취소 사유 작성</title>
<!--  common-layout -->
<script type="text/javascript" src="//image.msscdn.net/static/common/1.2.0/chunk-vendors.js"></script>
<link type="text/css" rel="stylesheet" href="//image.msscdn.net/static/common/1.2.0/pc.css"/>
<link rel="stylesheet" type="text/css" href="https://static.msscdn.net/ui/build/pc/css/common.css">

<!--
  magazine_common.css 먼저 선언 후에 layout.min.css 선언 필요
  - .footer .snb_store 와 .footer .snb 선택자가 layout.min.css 의 스타일이 적용되야 문제없이 footer 출력.
-->
<link type="text/css" rel="stylesheet" href="//static.msscdn.net/skin/musinsa/css/magazine_common.css?202206161419"/>
<link type="text/css" rel="stylesheet" href="//static.msscdn.net/skin/musinsa/css/guide.min.css?202206161419"/>
<link type="text/css" rel="stylesheet" href="//static.msscdn.net/skin/musinsa/css/layout.min.css?202206161419"/>
<link type="text/css" rel="stylesheet" href="//static.msscdn.net/skin/musinsa/css/media_query.css?202206161419"/>
<link type="text/css" rel="stylesheet" href="//static.msscdn.net/skin/musinsa/css/new.css?202206161419"/>
<link type="text/css" rel="stylesheet" href="//static.msscdn.net/skin/musinsa/css/style.min.css?202206161419"/>
<link type="text/css" rel="stylesheet" href="//static.msscdn.net/skin/musinsa/css/store_common.css?202206161419"/>
<link type="text/css" rel="stylesheet" href="//static.msscdn.net/skin/musinsa/css/sub.css?202206161419"/>

<link rel="stylesheet" href="//image.msscdn.net/ui/musinsa/resources/common/css/icon.min.css?202101051200"/>

<!-- lib -->
<script type="text/javascript" src="//static.msscdn.net/mfile_outsrc/js/vendor/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="//static.msscdn.net/mfile_outsrc/js/vendor/jquery.easing.js?202206161419"></script>
<script type="text/javascript" src="//static.msscdn.net/skin/musinsa/js/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="//static.msscdn.net/skin/musinsa/js/m_js/jquery-ui.min.js"></script>
<script type="text/javascript" src="//static.msscdn.net/skin/musinsa/js/clipboard.min.js"></script>
<script type="text/javascript" src="//static.msscdn.net/skin/musinsa/js/jquery.bxslider.js"></script>
<script type="text/javascript" src="//static.msscdn.net/skin/musinsa/js/jquery.cycle.all.js"></script>
<script type="text/javascript" src="//static.msscdn.net/skin/musinsa/js/jslib.js"></script>

<!-- Swiper -->
<link type="text/css" rel="stylesheet" href="//static.msscdn.net/swiper/swiper.min.css?20200316"/>
<script type="text/javascript" src="//static.msscdn.net/swiper/swiper.min.js?20200316"></script>

<!--jqModal-->
<link type="text/css" rel="stylesheet" href="//static.msscdn.net/skin/musinsa/css/jqModal.css"/>
<script type="text/javascript" src="//static.msscdn.net/skin/musinsa/js/jqModal.min.js"></script>
<!--//jqModal-->

<!-- 스토어, 매거진 공통 스크립트 -->
<script type="text/javascript" href="//static.msscdn.net/mfile_outsrc/js/common/base.js?202206161419"></script>
<script type="text/javascript" href="//static.msscdn.net/mfile_outsrc/js/common/common.js?202206161419"></script>
<script src="${path}/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		if($("#insertCheck").val() != "" && $("#insertCheck").val() != null) {
			opener.location.reload();
			window.close();
		}
		$("#goods_text").on("keyup", function() {
			var content = $(this).val();
			$("#cnt").html(content.length + " 자");
			if(content.length > 500) {
			 	alert("최대 500자까지 입력 가능합니다.");
			    $(this).val(content.substring(0, 500));
			    $('#goods_text .info span').html(500);
			}
		});
	});
</script>
</head>
<body>
<section class="mypage-cont">
            <form action="uploadCancel" id="reviewForm" name="reviewForm" method="post">
            <input type="hidden" id="insertCheck" name="insertCheck" value="${insertCheck }"> 
    <header class="n-section-title">
        <h1 class="tit">취소작성</h1>
    </header>

    <ul class="n-info-txt">
        <li>작성하신 내용은 관리자가 확인이 가능합니다.</li>
        <li>쿠폰을 사용해서 결제를 했다면, 쿠폰은 다시 복구가 됩니다.</li>
        <li>취소 접수 후 관리자가 확인 후 취소 사유가 정당하다 판단되면 구매자의 코인으로 환불이 됩니다.</li>
        <li>취소 요청시 주의사항
            <br>- 상품과 관련없거나 허위 신고를 할 경우 서비스 이용에 제제를 당할 수 있습니다.
            <br>- 개인정보 및 광고, 비속어가 포함된 내용의 취소 요청은 처리가 불가합니다.
        </li>
    </ul>

			
                <div class="my-review-write" id="reviewWrap">
                    <!-- 상품 -->
                    <div class="n-prd-row">
                        <a href="/app/goods/1459843" class="img-block">
                            <img src="resources/upload/file/${itemInfo.img_name}">
                        </a>
                        <ul class="info">
                            <li class="brand"><a href="null/brands/runninghigh">${itemInfo.item_title }</a></li>
                            <li class="option">${itemInfo.item_quantity}</li>
                        </ul>
                    </div>
                    <!-- //상품 -->
					
                    <div class="review-write">
                        <label for="goods_text" class="label">상품 취소 사유를 작성해주세요.</label>
                        <!-- 입력 영역 -->
                        <div class="n-comment-input tab-wrap is-active">

                            <div class="input-area">
                                <!-- Text -->
                                <div class="tab-block is-active" data-tab="text">
                                    <textarea id="goods_text" placeholder="내용" name="cancel_content"></textarea>
                                    <p class="info" id="text_size"><span id="cnt">0 자</span> / 500자 이하</p>
                                </div>
                            </div>
                        </div>
                        <!-- //입력 영역 -->
                    </div>
                    <!-- //후기 작성 -->
                    <div class="n-btn-group">
                    	<input type="hidden" name="ord_idx" value="${ord_idx}">
                    	<input type="hidden" name="item_idx" value="${itemInfo.item_idx}">
                        <input type="submit" class="n-btn btn-accent" id="btnSave" value="등록">
                    </div>
                </div>
            </form>
        </section>
</body>
</html>