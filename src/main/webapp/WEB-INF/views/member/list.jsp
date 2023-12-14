<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>회원목록</title>
    <meta charset="utf-8">
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyTq8RP2Zl+8jhnd0Y4I3il2Op+1L+q4ce"
          crossorigin="anonymous">
    <!-- 사용자 정의 스타일 -->
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Nanum Gothic', sans-serif;
        }

        .container {
            margin-top: 30px;
        }

        .form-select, .form-control {
            font-family: 'Nanum Gothic', sans-serif;
        }

        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
            border-color: #5a6268;
        }

        .table-bordered th, .table-bordered td {
            text-align: center;
            vertical-align: middle;
            background-color: #ecf0f1;
        }

        .table-bordered img {
            max-width: 200px;
            max-height: 200px;
            border-radius: 50%;
        }

        .btn-group {
            margin-top: 10px;
        }

        .btn-group button {
            margin-right: 10px;
        }
    </style>
</head>
<body>

<div class="container mt-3">
    <h2 class="mb-4 text-secondary">회원목록</h2>
    ${admin} <br>

    <form method="post" action="list">
        <div class="row">
            <div class="col-md-4 mb-2">
                <select class="form-select" name="col">
                    <option value="mname" <c:if test="${col=='mname' }">selected</c:if>>성명</option>
                    <option value="id" <c:if test="${col=='id' }">selected</c:if>>아이디</option>
                    <option value="email" <c:if test="${col=='email' }">selected</c:if>>이메일</option>
                    <option value="total" <c:if test="${col=='total' }">selected</c:if>>전체출력</option>
                </select>
            </div>

            <div class="col-md-4 mb-2">
                <input type="text" class="form-control" name="word" required="required" value="${word}">
            </div>

            <div class="col-md-4">
                <div class="btn-group">
                    <button class="btn btn-secondary" type="submit">검색</button>
                    <button class="btn btn-secondary" type="button" onclick="location.href='create'">등록</button>
                </div>
            </div>
        </div>
    </form>

    <br>

    <c:forEach var="dto" items="${list}">
        <table class="table table-bordered">
            <tr>
                <td rowspan="5" class="col-sm-2">
                    <img src="${root}/member/storage/${dto.fname}" class="img-fluid img-thumbnail" alt="${dto.id}">
                </td>
                <th class="col-sm-2 bg-secondary text-white">아이디</th>
                <td class="col-sm-8"><a href="javascript:read('${dto.id}')">${dto.id}</a></td>
            </tr>
            <tr>
                <th class="col-sm-2 bg-secondary text-white">성명</th>
                <td class="col-sm-8">${dto.mname}</td>
            </tr>
            <tr>
                <th class="col-sm-2 bg-secondary text-white">전화번호</th>
                <td class="col-sm-8">${dto.tel}</td>
            </tr>
            <tr>
                <th class="col-sm-2 bg-secondary text-white">이메일</th>
                <td class="col-sm-8">${dto.email}</td>
            </tr>
            <tr>
                <th class="col-sm-2 bg-secondary text-white">주소</th>
                <td class="col-sm-8">(${dto.zipcode}) ${dto.address1} ${dto.address2}</td>
            </tr>
        </table>
    </c:forEach>
    ${paging}
</div>

<!-- 부트스트랩 및 스크립트 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"
        integrity="sha384-3hojGjnoa3a91tLzTzK9zISezeEi27sWp8xjTqz2n0F8fs/kqYFRhlt3pJmR4461"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyTq8RP2Zl+8jhnd0Y4I3il2Op+1L+q4ce"
        crossorigin="anonymous"></script>

</body>
</html>