<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>상품 등록</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyTq8RP2Zl+8jhnd0Y4I3il2Op+1L+q4ce"
        crossorigin="anonymous">
    <script type="text/javascript" defer src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
    <script type="text/JavaScript" src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script type="text/JavaScript" src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"
        integrity="sha384-3hojGjnoa3a91tLzTzK9zISezeEi27sWp8xjTqz2n0F8fs/kqYFRhlt3pJmR4461"
        crossorigin="anonymous"></script>
    <script type="text/JavaScript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyTq8RP2Zl+8jhnd0Y4I3il2Op+1L+q4ce"
        crossorigin="anonymous"></script>

    <script type="text/JavaScript">
        $(function () {
            CKEDITOR.replace('detail');
        });

        function checkIn(f) {
            if (f.pname.value == "") {
                alert("상품명을 입력하세요");
                f.pname.focus()
                return false;
            }
            if (f.price.value == "") {
                alert("가격을 입력하세요");
                f.price.focus();
                return false;
            }
            if (CKEDITOR.instances['detail'].getData() == '') {
                window.alert('내용을 입력해 주세요.');
                CKEDITOR.instances['detail'].focus();
                return false;
            }
            if (f.stock.value == "") {
                alert("재고를 입력하세요");
                f.stock.focus();
                return false;
            }
        }
    </script>

    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Nanum Gothic', sans-serif;
        }

        .container {
            margin-top: 30px;
            background-color: #fff; /* 배경색 추가 */
            padding: 20px; /* 안팎 간격 추가 */
            border-radius: 8px; /* 모서리 둥글게 */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
        }

        .form-group {
            margin-bottom: 20px; /* 각 폼 그룹간 간격 추가 */
        }

        .btn-primary {
            background-color: #007bff; /* Primary 버튼 색상 변경 */
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Primary 버튼 호버 색상 변경 */
            border-color: #0056b3;
        }

        .form-select,
        .form-control {
            font-family: 'Nanum Gothic', sans-serif;
        }

        textarea {
            resize: none;
        }
    </style>
</head>

<body>
    <div class="container mt-3">
        <h3 class="mb-4">상품 등록</h3>
        <form class="" action="/contents/create" method="post" enctype="multipart/form-data" onsubmit="return checkIn(this)">

            <div class="form-group row">
                <label for="cateno" class="col-sm-2 col-form-label">상품분류</label>
                <div class="col-sm-6">
                    <select class="form-select" name="cateno">
                        <option value="1" <c:if test="${cateno==1}"> selected </c:if>>Jean</option>
                        <option value="2" <c:if test="${cateno==2}"> selected </c:if>>Bag</option>
                        <option value="3" <c:if test="${cateno==3}"> selected </c:if>>Shoes</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label for="pname" class="col-sm-2 col-form-label">상품명</label>
                <div class="col-sm-6">
                    <input type="text" name="pname" id="pname" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label for="price" class="col-sm-2 col-form-label">가격</label>
                <div class="col-sm-6">
                    <input type="text" name="price" id="price" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label for="detail" class="col-sm-2 col-form-label">상세정보</label>
                <div class="col-sm-8">
                    <textarea rows="12" cols="7" id="detail" name="detail" class="form-control"></textarea>
                </div>
            </div>

            <div class="form-group row">
                <label for="stock" class="col-sm-2 col-form-label">재고</label>
                <div class="col-sm-6">
                    <input type="text" name="stock" id="stock" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label for="filenameMF" class="col-sm-2 col-form-label">상품이미지</label>
                <div class="col-sm-6">
                    <input type="file" name="filenameMF" id="filenameMF" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-6">
                    <button class="btn btn-primary">등록</button>
                </div>
            </div>
        </form>
    </div>
</body>

</html>