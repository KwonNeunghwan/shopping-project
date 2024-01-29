<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>아이디 찾기</title>
</head>
<body>

  <h1>아이디 찾기</h1>

  <form action="find.jsp" method="post">
    <label for="nickname">닉네임:</label>
    <input type="text" id="nickname" name="nickname" required>
    <br>
    <button type="submit">아이디 찾기</button>
  </form>

  <c:if test="${not empty dto.id}">
    <c:choose>
      <c:when test="${dto.id eq param.nickname}">
        <p>찾은 아이디는: ${dto.id}</p>
      </c:when>
      <c:otherwise>
        <p>일치하는 아이디가 없습니다.</p>
      </c:otherwise>
    </c:choose>
  </c:if>

</body>
</html>