<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html> 
<html> 
<head>
<!-- Add Swiper CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

<!-- Add Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>


<script>
	document.addEventListener('DOMContentLoaded', function () {
    var mySwiper = new Swiper('.swiper-container', {
        // Autoplay 설정
        autoplay: {
            delay: 3000, // 3초마다 자동 전환
        },
        // 추가적인 옵션들...
    });
});

    
    var swiper = new Swiper('.swiper-container', {
        direction: 'vertical', // 세로 슬라이드
        slidesPerView: 1,
        spaceBetween: 30,
        mousewheel: true, // 마우스 휠로 슬라이드
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
    });
</script>

  <title>기본페이지</title>
  <meta charset="utf-8">
<style type="text/css">
  .swiper-container {
    width: 100%;
    height: 100%;
}

.swiper-slide {
    text-align: center;
    font-size: 18px;
    /* 추가적인 스타일링 */
}

.image-with-text {
      position: relative;
   }

   .image-text {
      position: absolute;
      bottom: 10px; /* 아래쪽 여백 조절 */
      left: 10px; /* 왼쪽 여백 조절 */
      color: white;
      font-size: 16px;
      font-weight: bold;
      /* 추가적인 텍스트 스타일링 */
   }
   body {
            margin: 0;
        }

        .swiper-container {
            width: 100%;
            height: 100vh;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;
            /* Center slide text vertically */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        img {
            max-width: 100%;
            height: auto;
        }

        .image-with-text {
            text-align: center;
        }

        .image-text {
            color: #fff;
            margin: 0;
        }
      
        .swiper-button-next,
        .swiper-button-prev {
            color: #fff;
        }
    
      table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 20px; /* 이미지 간격 조절 */
    }

    td {
        vertical-align: top;
    }

   .product-info {
            position: relative;
            overflow: hidden;
            border: 1px solid #ddd;
            border-radius: 8px;
            margin-bottom: 20px;
            background-color: #fff;
            transition: box-shadow 0.3s ease-in-out;
        }

        .product-info img {
            width: 100%;
            max-width: 100%;
            height: auto;
            border-radius: 8px 8px 0 0;
            transition: transform 0.3s ease-in-out;
        }

        .product-info:hover {
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        .product-text {
            padding: 10px;
            text-align: left;
        }

        .product-name,
        .product-detail,
        .product-price {
            margin: 0;
            line-height: 1.5;
            font-family: 'Nanum Gothic', sans-serif; /* 한글 글꼴 적용 */
        }

        .product-name {
            font-weight: bold;
            font-size: 18px;
            color: #333;
        }

        .product-detail {
            font-size: 14px;
            color: #666;
        }

        .product-price {
            font-size: 16px;
            color: #f00; /* 가격 색상을 원하는 색상으로 변경하세요 */
        }

        .product-info:hover .product-text {
            background-color: #fff; /* 마우스 호버 시 흰 배경으로 변경 */
        }

        .product-info:hover img {
            transform: scale(1.1); /* 이미지 확대 효과 */
        }
</style>
</head>
<body> 


	<tr>
	<div class="swiper-container">
    <div class="swiper-wrapper">
	<div class="swiper-slide">
         <div class="image-with-text">
            <img src="/images/kappa-image2.jpg">
            <p class="image-text" style = "margin-bottom:400px; font-size:50px;">Football uniform : 6 Team</p>
            <p class="image-text" style = "margin-bottom:300px; font-size:40px; font-weight: 300;">카파의 프로페셔널한 홈 져지유니폼</p>
            <h2 class="image-text">01 </h2>
         </div>
      </div>
      
      
      

        <div class="swiper-slide">
         <div class="image-with-text">
            <img src="/images/kappa-image1.jpg" >
            <p class="image-text" style = "margin-bottom:400px; font-size:50px;"></p>
            <p class="image-text" style = "margin-bottom:300px; font-size:40px; font-weight: 300;"></p>
            <h2 class="image-text">02 </h2>
         </div>
      </div>
      
      
        <div class="swiper-slide">
         <div class="image-with-text">
            <img src="/images/kappa-image3.jpg">
            <p class="image-text" style = "margin-bottom:200px; font-size:100px;">2023 F/W Collection</p>
            <p class="image-text" style = "margin-bottom:140px; font-size:40px">스포티함 가득한 카파 뉴 컬렉션을 만나보세요</p>
            <h2 class="image-text">03 </h2>
         </div>
      </div>
      
      
        <div class="swiper-slide">
         <div class="image-with-text">
            <img src="/images/kappa-image4.jpg">
            <p class="image-text" style = "margin-bottom:200px; font-size:100px;">KAPPA x L.POINT</p>
            <p class="image-text" style = "margin-bottom:140px; font-size:40px">통합회원 멤버쉽 혜택1% 적립 및 사용</p>
            <h2 class="image-text">04 </h2>
         </div>
      </div>
        
    	<!-- Add Pagination -->
    <div class="swiper-pagination"></div>
    <!-- Add Navigation -->
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    </div>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</div>
</tr>

<tr>
	<div class="container" style="margin-top: 120px;">
    <h3 style="font-weight: bold; font-family: 'Nanum Gothic', sans-serif;">All New</h3>
    
    <table>
    <tr>
        <td>
            <div class="product-info">
                <img src="/images/kapa-img8.jpg">
                <p class="product-name mt-3">Men</p>
                <p class="product-detail mt-3">USA 국가대표 스키팀 미드레이어 후드 자켓</p>
                <p class="product-price">203,000</p>
            </div>
        </td>

        <td>
            <div class="product-info">
                <img src="/images/kapa-img9.jpg">
                <p class="product-name mt-3">UNISEX</p>
                <p class="product-detail mt-3">LOGO BERLIN</p>
                <p class="product-price">48,300</p>
            </div>
        </td>

        <td>
            <div class="product-info">
                <img src="/images/kapa-img10.jpg">
                <p class="product-name mt-3">UNISEX</p>
                <p class="product-detail mt-3">R.D.K 베이직 패딩점퍼</p>
                <p class="product-price">111,300</p>
            </div>
        </td>

        <td>
            <div class="product-info">
                <img src="/images/kapa-img11.jpg">
                <p class="product-name mt-3">Men</p>
                <p class="product-detail mt-3">바야돌리드 2024 홈 쇼츠</p>
                <p class="product-price">48,300</p>
            </div>
        </td>

        <td>
            <div class="product-info">
                <img src="/images/kapa-img12.jpg">
                <p class="product-name mt-3">Men</p>
                <p class="product-detail mt-3">AS MONACO 2024 어웨이 레플리카 저지</p>
                <p class="product-price">69,300</p>
            </div>
        </td>

        <td>
            <div class="product-info">
                <img src="/images/kapa-img13.jpg">
                <p class="product-name mt-3">Men</p>
                <p class="product-detail mt-3">바야돌리드 2024 홈 저지</p>
                <p class="product-price">76,300</p>
            </div>
        </td>
        
    </tr>
    
</table>
</div>
</tr>

<tr>
	<img src="/images/kapa-img14.jpg" style="margin-top: 300px">
</tr>


<tr>
	<table>
		<td>
	<img src="/images/kapa-img15.jpg" style="margin-top: 300px; padding-left: 100px;width:900px;">
	</td>
	
	<td>
	<img src="/images/kapa-img16.jpg" style="margin-top: 300px; padding-right: 100px; width:900px;">
	</td>
	</table>
	
</tr>



<tr>
	<div class="container" style="margin-top: 120px;">
    <h3 style="font-weight: bold; font-family: 'Nanum Gothic', sans-serif;">Weekly Best</h3>
    
    <table>
    <tr>
        <td>
            <div class="product-info">
                <img src="/images/kapa-img17.jpg">
                <p class="product-name mt-3">Men</p>
                <p class="product-detail mt-3">USA 국가대표 스키팀 미드레이어 후드 자켓</p>
                <p class="product-price">203,000</p>
            </div>
        </td>

        <td>
            <div class="product-info">
                <img src="/images/kapa-img18.jpg">
                <p class="product-name mt-3">UNISEX</p>
                <p class="product-detail mt-3">LOGO BERLIN</p>
                <p class="product-price">48,300</p>
            </div>
        </td>

        <td>
            <div class="product-info">
                <img src="/images/kapa-img19.jpg">
                <p class="product-name mt-3">UNISEX</p>
                <p class="product-detail mt-3">R.D.K 베이직 패딩점퍼</p>
                <p class="product-price">111,300</p>
            </div>
        </td>

        <td>
            <div class="product-info">
                <img src="/images/kapa-img20.jpg">
                <p class="product-name mt-3">Men</p>
                <p class="product-detail mt-3">바야돌리드 2024 홈 쇼츠</p>
                <p class="product-price">48,300</p>
            </div>
        </td>

        <td>
            <div class="product-info">
                <img src="/images/kapa-img21.jpg">
                <p class="product-name mt-3">Men</p>
                <p class="product-detail mt-3">AS MONACO 2024 어웨이 레플리카 저지</p>
                <p class="product-price">69,300</p>
            </div>
        </td>

        <td>
            <div class="product-info">
                <img src="/images/kapa-img22.jpg">
                <p class="product-name mt-3">Men</p>
                <p class="product-detail mt-3">바야돌리드 2024 홈 저지</p>
                <p class="product-price">76,300</p>
            </div>
        </td>
        
    </tr>
    
</table>
</div>
</tr>

<div style="margin-top: 300px; border-bottom: 1px solid #ddd; padding-bottom: 20px;">
    <ul>
        <li style="display: inline-block;"><a href="/footer/privacypolicy" class="privacy" data-v-752d9266="" style="margin-right: 10px; font-family: 'Nanum Gothic', sans-serif; color: #f00; font-size: 12px;">개인정보처리방침</a></li>
        <li style="display: inline-block;"><a href="/footer/terms" data-v-752d9266="" style="margin-right: 10px; font-family: 'Nanum Gothic', sans-serif; color: #000; font-size: 12px;">이용약관</a></li>
        <li style="display: inline-block;"><a href="/footer/story" data-v-752d9266="" style="margin-right: 10px; font-family: 'Nanum Gothic', sans-serif; color: #000; font-size: 12px;">About Kappa</a></li>
        <li style="display: inline-block;"><a href="/footer/store" data-v-752d9266="" style="font-family: 'Nanum Gothic', sans-serif; color: #000; font-size: 12px;">Store</a></li>
        <li style="float: right; margin-left: 20px; margin-right:10px"><a href="https://www.instagram.com/kappa_kr/" class="fa-brands fa-instagram" style="font-size: 20px;"></a></li>
        <li style="float: right; margin-left: 20px; margin-right:10px"><a href="https://www.facebook.com/kappakorea/" class="fa-brands fa-facebook" style="font-size: 20px;"></a></li>
        <li style="float: right; margin-left: 20px; margin-right:10px"><a href="https://t.me/kappakorea" class="fa-brands fa-telegram" style="font-size: 20px;"></a></li>
    </ul>
</div>

<div style="display: flex; flex-wrap: wrap; justify-content: space-between;">
    <table style="flex: 0 0 48%; border-collapse: collapse; margin-top: 10px;">
        <tr>
            <td style="padding: 5px; font-family: 'Nanum Gothic', sans-serif; font-size: 18px; font-weight: bold; letter-spacing: -0.5px;">회사소개</td>
        </tr>
        <tr>
            <td style="padding: 5px; font-family: 'Nanum Gothic', sans-serif; font-size: 14px; letter-spacing: -0.3px;">롯데지에프알 주식회사</td>
        </tr>
        <tr>
            <td style="padding: 5px; font-family: 'Nanum Gothic', sans-serif; font-size: 12px; letter-spacing: -0.2px;">대표자명: 권능환 / 주소: 서울 강남구 영동대로 320(국민제2빌딩) 롯데지에프알</td>
        </tr>
        <tr>
            <td style="padding: 5px; font-family: 'Nanum Gothic', sans-serif; font-size: 12px; letter-spacing: -0.2px;">사업자등록번호: 120-86-49655</td>
        </tr>
        <tr>
            <td style="padding: 5px; font-family: 'Nanum Gothic', sans-serif; font-size: 12px; letter-spacing: -0.2px;">통신판매업신고번호: 2018-서울강남-00025</td>
        </tr>
        <tr>
            <td style="padding: 5px; font-family: 'Nanum Gothic', sans-serif; font-size: 12px; letter-spacing: -0.2px;">개인정보보호 책임자: 이규홍 / 고객센터 전화문의: 1644-6862</td>
        </tr>
    </table>
    <div style="flex: 0 0 48%; margin-top: 50px; font-family: 'Nanum Gothic', sans-serif; font-size: 12px; letter-spacing: -0.2px;">
        <p>고객센터 1644-6862</p>
        <p>상담시간 : 평일(월~금) 09:30 - 17:00 점심시간 : 12:30 - 13:30 (토/일 공휴일 휴무)</p>
        <p>입금계좌 : 신한 140-013-410230 롯데지에프알(주)</p>
        <p>교환ㆍ반품주소 : 경기도 화성시 동탄산단 1길 4, 롯데지에프알 물류센터(우:18487)</p>
        <p>E-mail 주소 : gfrhelp@lotte.net / FAX번호 : 02-6250-7899</p>
    </div>
</div>



</body> 
</html>