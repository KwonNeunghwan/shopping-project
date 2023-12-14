<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 리뷰</title>
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
            font-size: 24px;
        }

        .review-container {
            max-width: 800px;
            margin: 20px auto;
        }

        .review-card {
            background-color: #fff;
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }

        .review-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        .review-rating {
            color: #e44d26;
        }

        .review-text {
            margin-bottom: 20px;
        }

        .review-author {
            font-size: 14px;
            color: #555;
        }

        .btn-submit {
            background-color: #e44d26;
            color: #fff;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out;
        }

        .btn-submit:hover {
            background-color: #333;
        }
    </style>
</head>
<body>

<header class="bg-dark text-white">
    <h1><i class="fas fa-star"></i> 상품 리뷰 <i class="fas fa-star"></i></h1>
</header>

<div class="review-container">
    <!-- 리뷰 목록 -->
    <div class="review-card">
        <div class="review-header">
            <h3>좋은 상품이에요!</h3>
            <span class="review-rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
        </div>
        <p>구입한 상품: ${detail.pname}</p>
        <p class="review-text">상품이 예상보다 훨씬 좋아서 만족합니다. 다음에도 구매할게요!</p>
        <p class="review-author"><i class="fas fa-user"></i> 작성자: ${dto.id}</p>
    </div>

    <!-- 리뷰 작성 폼 -->
    <div class="review-card">
        <h3>리뷰 작성</h3>
        <form>
            <div class="mb-3">
                <label for="reviewText" class="form-label">리뷰 내용</label>
                <textarea class="form-control" id="reviewText" rows="3" required></textarea>
            </div>
            <div class="mb-3">
                <label for="rating" class="form-label">평점</label>
                <select class="form-select" id="rating" required>
                     <option value="5">★★★★★</option>
                    <option value="4">★★★★☆</option>
                    <option value="3">★★★☆☆</option>
                    <option value="2">★★☆☆☆</option>
                    <option value="1">★☆☆☆☆</option>
                </select>
            </div>
            <button type="submit" class="btn btn-submit"><i class="fas fa-pen"></i> 리뷰 작성</button>
        </form>
    </div>
</div>

<!-- 부트스트랩 및 Font Awesome 스크립트 추가 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-qYKGxGKABjs5VmZvFyyPz0Dc4jcN+7HQ4G5c9+MO/5AiS6OW/iVhqZss9bs0eE3x" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js" integrity="sha384-...."></script>

</body>
</html>
