<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>남성 의류</title>
    <!-- 부트스트랩 CDN 추가 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJhpu7DlA8E1S5Wiqg1SBoLq87Kdlt69CzoMPeDCh4u5uqD3B6gBxkTw2AWQI7Y" crossorigin="anonymous">
    <!-- Font Awesome CDN 추가 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha384-FhO1rA9/4ZR9vko8ImCjwy1tvzR9ti2h8l+KVSj+6C4JZve5qF5w5qUpQg6ff5Fa" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
        }

        header {
            background-color: #1a1a1a;
            color: #fff;
            padding: 20px;
            text-align: center;
            font-size: 32px;
            border-bottom: 2px solid #333;
        }

        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }

        .product-card {
            width: 300px;
            margin: 20px;
            background-color: #fff;
            border: none;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .product-card:hover {
            transform: scale(1.05);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.3);
        }

        .product-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-bottom: 2px solid #eee;
        }

        .product-info {
            padding: 20px;
            text-align: center;
        }

        h3 {
            font-size: 20px;
            margin-bottom: 10px;
            color: #333;
        }

        span {
            display: block;
            font-size: 16px;
            color: #555;
            margin-bottom: 5px;
        }

        .discount {
            color: #e44d26;
            font-weight: bold;
        }

        .btn-buy {
            background-color: #e44d26;
            color: #fff;
            border: none;
            padding: 12px;
            width: 100%;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out;
        }

        .btn-buy:hover {
            background-color: #333;
        }
    </style>
</head>

<body>
    <header>
        <i class="fas fa-tshirt"></i> 남성 의류 <i class="fas fa-tshirt"></i>
    </header>
    <div class="product-container">
        <div class="product-card">
            <img src="/images/kapa-img8.jpg" alt="Product 1" class="product-image">
            <div class="product-info">
                <h3><i class="fas fa-tshirt"></i> USA 국가대표 스키팀 미드레이어 후드 자켓</h3>
                <span>기존 가격: 159,000원</span>
                <span class="discount">할인 가격: 111,300원 (-30%)</span>
                <button class="btn-buy">구매하기</button>
            </div>
        </div>

        <div class="product-card">
            <img src="/images/kapa-img10.jpg" alt="Product 2" class="product-image">
            <div class="product-info">
                <h3><i class="fas fa-jacket"></i> 카고형 트랙 셋업 자켓</h3>
                <span>기존 가격: 159,000원</span>
                <span class="discount">할인 가격: 111,300원 (-30%)</span>
                <button class="btn-buy">구매하기</button>
            </div>
        </div>

        <div class="product-card">
            <img src="/images/kapa-img12.jpg" alt="Product 3" class="product-image">
            <div class="product-info">
                <h3><i class="fas fa-tshirt"></i> AS MONACO 2024 어웨이 레플리카 저지</h3>
                <span>기존 가격: 159,000원</span>
                <span class="discount">할인 가격: 111,300원 (-30%)</span>
                <button class="btn-buy">구매하기</button>
            </div>
        </div>
        
        <div class="product-card">
            <img src="/images/kapa-img13.jpg" alt="Product 4" class="product-image">
            <div class="product-info">
                <h3><i class="fas fa-tshirt"></i> AS MONACO 2024 어웨이 레플리카 저지</h3>
                <span>기존 가격: 159,000원</span>
                <span class="discount">할인 가격: 111,300원 (-30%)</span>
                <button class="btn-buy">구매하기</button>
            </div>
        </div>
    </div>
    <!-- 부트스트랩 및 Font Awesome 스크립트 추가 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-qYKGxGKABjs5VmZvFyyPz0Dc4jcN+7HQ4G5c9+MO/5AiS6OW/iVhqZss9bs0eE3x" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js" integrity="sha384-...."></script>
</body>
</html>
