<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
 <c:choose>
    <c:when test="${not empty sessionScope.id && sessionScope.grade == 'A'}">
        <c:set var="str">관리자 페이지 입니다.</c:set>
    </c:when>
    <c:when test="${not empty sessionScope.id && sessionScope.grade != 'A'}">
        <c:set var='str'>안녕하세요 ${sessionScope.mname}(${sessionScope.id }) 님!</c:set>
    </c:when>
    <c:otherwise>
        <c:set var="str">기본 페이지 입니다.</c:set>
    </c:otherwise>
</c:choose> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>shop</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/71c72323b0.js" crossorigin="anonymous"></script>
    <style type="text/css">
          #grade{
          
           color :white;
    }  
    .header_snb .bt_logo {
    width: 44px;
    height: 70px;
    background-image: url(../images/ico_kappalogo_w.svg);
    background-size: 44px;
}
.bt_logo {
    display: inline-block;
    width: 44px;
    height: 70px;
    text-indent: -9999px;
    background-image: url(../images/ico_kappalogo_w.svg);
    background-repeat: no-repeat;
    background-position: center;
    background-size: 44px;
}
a {
    color: #1D1D1D;
    text-decoration: none;
    cursor: pointer;
}
html, body, div, p, span, strong, b, em, iframe, pre, h1, h2, h3, h4, h5, h6, img, dl, dt, dd, fieldset, form, legend, label, table, caption, thead, tbody, tfoot, tr, th, td, button, ul, ol, li, a, input, select, textarea, figure {
    padding: 0;
    margin: 0;
    border: 0 none;
    font-family: 'Open Sans', 'Noto Sans KR', MalgunGothic, '맑은 고딕','돋움', Dotum, AppleGothic, Sans-serif, Arial;
    font-weight: 400;
    line-height: 140%;
    box-sizing: border-box;
    transform: rotate(0.3);
}
* {
    -webkit-touch-callout: none;
}
* {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    -webkit-touch-callout: none;
}
user agent stylesheet
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
.logo {
    display: block;
    text-align: center;
}
h1, h2, h3, h4, h5, h6, th, strong, b {
    font-family: 'Open Sans', 'Noto Sans KR', MalgunGothic, '맑은 고딕','돋움', Dotum, AppleGothic, Sans-serif, Arial;
    font-weight: normal;
}
user agent stylesheet
h1 {
    font-size: 2em;
    font-weight: bold;
}
body {
    -webkit-text-size-adjust: none;
}
body {
    -webkit-tap-highlight-color: transparent;
}
body {
    color: #1D1D1D;
    font-family: 'Open Sans','Noto Sans KR', MalgunGothic, '맑은 고딕','돋움', Dotum, AppleGothic, Sans-serif, Arial;
    font-size: 14px;
    font-weight: 400;
    line-height: 150%;
    /* transform: rotate(0.04deg); */
}
:root {
    --sk-size: 40px;
    --sk-color: #333;
}
:root {
    --swiper-navigation-size: 44px;
}
:root {
    --swiper-theme-color: #007aff;
}

.header_search {
    width: 40px;
    height: 70px;
    text-indent: -9999px;
    background-image: url(../images/icon_tab_search.svg);
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100%;
}
body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .top-bar {
            background-color: black;
            color: white;
            padding: 10px;
            text-align: center;
        }

        .top-bar a {
            color: white;
            text-decoration: none;
        }
        .navbar-nav .nav-item:hover .dropdown-menu {
            display: block;
            margin-top: 0;
        }

        .dropdown-menu {
            margin-top: 0;
        }
        
         .navbar-nav .nav-item {
            margin-right: 15px; /* 간격 조정 */
        }

        .navbar-nav .nav-item a.nav-link {
            color: #1D1D1D; /* 글씨 색 조정 */
        }

        .navbar-nav .nav-item a.nav-link:hover {
            color: #007aff; /* 호버 시 글씨 색 조정 */
        }
  </style>
  
  <script type="text/javascript">
    function getCategory(){
        return fetch("/contents/getCategory")
                        .then(response => response.json());
    }
    window.onload=function(){
          getCategory()
                .then(data => {  
                   console.log(data);
               for (let i = 0; i < data.length; i++) {
                  $('#pmenu').append("<li><a  class='dropdown-item' href='/contents/mainlist/"+data[i].cateno+"'>" + data[i].catename + "</a></li>");
               }                  
                        
                }).catch(console.log);
    };//페이지로딩
        
  </script>
  </head>
  <body>
  <div class="top-bar">
    <a href="https://www.kappa.co.kr/event/323">KAPPA x L.POINT  1% 적립 및 사용 혜택 + 10% 쿠폰</a>
</div>
 <nav class="navbar navbar-expand-sm ">
  <div class="container-fluid">
  <a href = "/" class = "nav-item ml-2">
  <img src="/images/ico_kappalogo_b.png" aria-current="page" class="bt_logo nuxt-link-exact-active nuxt-link-active" data-v-5dc5cca5=""/>
  </button>
    
             
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        
        <li class="nav-item dropdown ml-2">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">New</a>
          <ul class="dropdown-menu" id="pmenu">
          </ul>
        </li>
        
        <li class="nav-item dropdown ml-2">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Best</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="${root}/member/mypage">Mypage</a></li>
            <li><a class="dropdown-item" href="${root}/contents/detail">Review</a></li>
            <li><a class="dropdown-item" href="${root}/notice/list">Notice</a></li>
            <li><a class="dropdown-item" href="#">Q&A</a></li>
          </ul>
        </li>
        
        <li class = "nav-item ml-2">
        	<a class="nav-link " href="${root}/member/men" role="button">Men</a>
        </li>
        
        <li class = "nav-item ml-2">
        	<a class="nav-link " href="${root}/member/women"role="button">Women</a>
        </li>
        
        <li class = "nav-item ml-2">
        	<a class="nav-link " href="#" role="button"> outlet</a>
        </li>
        
        <li class = "nav-item m1-2">
        	<a class="nav-link " href="#" role="button">Brand</a>
        </li>
        
        
        <li class="nav-item">
          <a class="nav-link" id="grade" href="#"><i class="fa-solid fa-cat"></i> ${str}</a>
        </li>
      </ul>
        <ul class="navbar-nav ms-auto">
        <c:choose>
        <c:when test="${empty sessionScope.id }">
            
        <li class="fa-solid fa-magnifying-glass nav-link m-2">
        	<a href="${root}/member/agree"></a>
        </li>
        
        
        <li class="nav-item">
            <a href="${root}/member/login" class="nav-link m-2"> Log in</a>
        </li>
        <li class="nav-item">
            <a href="${root}/member/agree" class="nav-link m-2 ">Join</a>
        </li>
        
         <li class="nav-item">
            <a href="${root}/member/login" class="nav-link m-2 ">cart(0)</a>
        </li>
        
        </c:when>
        <c:when test="${not empty sessionScope.id && sessionScope.grade == 'A'}">
        <li class="nav-item">
            <a href="${root}/admin/contents/create" class="nav-link m-2 "><i class="fa-brands fa-shopify"></i> 상품등록</a>
        </li>
        <li class="nav-item">
    		<a href="${root}/contents/list" class="nav-link m-2 "><i class="fa-brands fa-shopify"></i> 상품목록</a>
		</li>
        <li class="nav-item">
            <a href="${root}/admin/member/list" class="nav-link m-2 "><i class="fa-solid fa-user-group"></i> 회원목록</a>
        </li>
        <li class="nav-item">
            <a href="${root}/member/logout" class="nav-link m-2 "><i class="fa-solid fa-arrow-right-from-bracket"></i> Logout</a>
        </li>
        </c:when>
        <c:otherwise>
        <li class="nav-item">
            <a href="${root}/member/cart" class="nav-link m-2 "><i class="bi bi-cart4"></i> Cart</a>
        </li>
        <li class="nav-item">
            <a href="${root}/member/update/${sessionScope.id}" class="nav-link m-2 "><i class="fa-solid fa-user-pen"></i> 정보 수정</a>
        </li>
        <li class="nav-item">
            <a href="${root}/member/logout" class="nav-link m-2 "><i class="fa-solid fa-arrow-right-from-bracket"></i> Logout</a>
        </li>
         </c:otherwise>
       </c:choose> 
     </ul>
    </div>
  </div>
</nav>
</body>
</html>
