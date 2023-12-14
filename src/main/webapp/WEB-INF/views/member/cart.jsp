<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>장바구니 페이지</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 부트스트랩 CDN 추가 -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* 추가한 스타일 */
        body {
            background-color: #f8f9fa;
        }
        .container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }
        h2 {
            color: #007bff;
        }
        .cart-item {
            border: 1px solid #ced4da;
            border-radius: 5px;
            margin-bottom: 10px;
            padding: 10px;
            background-color: #ffffff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        .total-price {
            font-weight: bold;
            font-size: 18px;
            color: #dc3545;
        }
        button.btn-danger {
            background-color: #dc3545;
            border: 1px solid #dc3545;
        }
        button.btn-danger:hover {
            background-color: #c82333;
            border: 1px solid #c82333;
        }
    </style>
</head>
<body>

<div class="container p-4">
    <h2 class="text-center mb-4">장바구니</h2>

    <!-- 장바구니 아이템 목록 -->
    <div id="cartItems">
        <!-- 여기에 동적으로 아이템이 추가됩니다. -->
    </div>

    <!-- 총 가격 표시 -->
    <div class="total-price mt-3 text-right">
        <p class="mb-0">총 가격: <span id="totalPrice" class="text-danger">0</span>원</p>
    </div>

</div>

<!-- 부트스트랩 및 자바스크립트 CDN 추가 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    // (이전 JavaScript 코드를 그대로 유지)
</script>

</body>
</html>
