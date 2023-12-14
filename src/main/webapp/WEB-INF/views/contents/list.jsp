<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>상품 목록</title>
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyTq8RP2Zl+8jhnd0Y4I3il2Op+1L+q4ce"
          crossorigin="anonymous">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
    <!-- Font Awesome 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
          integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyTq8RP2Zl+8jhnd0Y4I3il2Op+1L+q4ce"
          crossorigin="anonymous">
    <!-- 사용자 정의 스타일 -->
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Nanum Gothic', sans-serif;
        }

        .container {
            margin-top: 50px;
        }

        table {
            margin-top: 20px;
        }

        th, td {
            text-align: center;
            vertical-align: middle;
        }

        img {
            max-width: 100px;
            max-height: 100px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        img:hover {
            transform: scale(1.1);
        }

        .new-icon {
            margin-left: 5px;
            color: #28a745;
        }

        .btn-primary, .btn-dark, .btn-warning, .btn-danger, .btn-info {
            font-family: 'Nanum Gothic', sans-serif;
        }

        .btn-group {
            margin-top: 10px;
        }

        .btn-group button {
            margin-right: 10px;
        }

        .fade-in {
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
    </style>
</head>
<body>

<div class="container fade-in">

    <h2 class="text-center mb-4">상품 목록</h2>

    <form action="./list">
        <div class="row mb-3">
            <div class="col-md-4 mb-2">
                <select class="form-control" name="col">
                    <option value="cateno" <c:if test="${col=='cateno'}"> selected </c:if>>상품 분류 (Jean: 1, Bag: 2)</option>
                    <option value="pname" <c:if test="${col=='pname'}"> selected </c:if>>상품명</option>
                    <option value="price" <c:if test="${col=='price'}"> selected </c:if>>가격</option>
                    <option value="total" <c:if test="${col=='total'}"> selected </c:if>>전체 출력</option>
                </select>
            </div>

            <div class="col-md-4 mb-2">
                <input type="text" class="form-control" placeholder="검색어 입력" name="word" value="${word}">
            </div>

            <div class="col-md-4">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..." name="word" value="${word}">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="submit">검색</button>
                        <button class="btn btn-dark" type="button" onclick="location.href='../admin/create'">등록</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>번호</th>
            <th>상품 이미지</th>
            <th>상품명</th>
            <th>가격</th>
            <th>등록 날짜</th>
            <th>재고</th>
            <th>수정/삭제/이미지 수정</th>
        </tr>
        </thead>
        <tbody>

        <c:choose>
            <c:when test="${empty list}">
                <tr>
                    <td colspan="7" class="text-center">등록된 상품이 없습니다.</td>
                </tr>
            </c:when>
            <c:otherwise>

                <c:forEach var="dto" items="${list}" varStatus="loop">
                    <tr class="fade-in">
                        <td>${dto.contentsno}</td>
                        <td>
                            <img src="/contents/storage/${dto.filename}" class="img-fluid img-thumbnail"
                                 alt="${dto.pname}">
                        </td>
                        <td>
                            <a href="javascript:read('${dto.contentsno}')">${dto.pname}</a>
                            <c:if test="${util:newimg(dto.rdate) }">
                                <span class="new-icon"><i class="fas fa-star"></i></span>
                            </c:if>
                        </td>
                        <td>${dto.price}</td>
                        <td>${dto.rdate}</td>
                        <td>${dto.stock}</td>
                        <td>
                            <div class="btn-group">
                                <button class="btn btn-warning"
                                        onclick="location.href='./update/${dto.contentsno }'">수정
                                </button>
                                <button class="btn btn-danger"
                                        onclick="del('${dto.contentsno }','${dto.filename}')">삭제
                                </button>
                                <button class="btn btn-info"
                                        onclick="location.href='./updateFile/${dto.contentsno }/${dto.filename}'">이미지
                                    수정
                                </button>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </c:otherwise>
        </c:choose>

        </tbody>
    </table>
    <div class="text-center">${paging}</div>
</div>

<!-- 부트스트랩 JS 및 필수 라이브러리 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"
        integrity="sha384-3hojGjnoa3a91tLzTzK9zISezeEi27sWp8xjTqz2n0F8fs/kqYFRhlt3pJmR4461"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyTq8RP2Zl+8jhnd0Y4I3il2Op+1L+q4ce"
        crossorigin="anonymous"></script>
<!-- Font Awesome JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyTq8RP2Zl+8jhnd0Y4I3il2Op+1L+q4ce"
        crossorigin="anonymous"></script>

</body>
</html>