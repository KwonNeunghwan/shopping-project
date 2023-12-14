<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>로그인 처리</title>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Login Form</title>
  <script type="text/javascript">
  	function change(no){
  		console.log(no);
  		if(no==1){
  			let ein = document.querySelector('#second');
  			ein.type = 'email';
  			ein.placeholder = 'Enter email';
  		}else{
  			let ein = document.querySelector('#second');
  			ein.type = 'text';
  			ein.placeholder = 'Enter id';
  		}
  	}
  </script>
  <style>
        body {
            background-color: #f8f9fa;
        }
        .login-wrapper {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 400px;
            margin: auto;
            margin-top: 100px;
        }
        .login-wrapper h2 {
            color: #343a40;
            text-align: center;
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-control {
            border-radius: 5px;
            padding: 10px;
        }
        .remember-check {
            display: flex;
            align-items: center;
        }
        .remember-check input {
            margin-right: 5px;
        }
        .login-btn {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .login-btn:hover {
            background-color: #218838;
        }
        .signup-btn {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .signup-btn:hover {
            background-color: #0056b3;
        }
        .find-btn {
            background-color: #343a40;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .find-btn:hover {
            background-color: #23272b;
        }
   
  
  </style>
</head>
<body>


<div class="login-wrapper">
    <h2>로그인</h2>
    <form action="/member/login" method="post" id="login-form">
        <div class="form-group">
            <input type="text" class="form-control" id="id" placeholder="아이디" name="id" required="required" value='${c_id_val}'>
        </div>

        <div class="form-group">
            <input type="password" class="form-control" id="pwd" placeholder="비밀번호" name="passwd" required="required">
        </div>

        <div class="form-group remember-check">
            <input class="form-check-input" type="checkbox" name="c_id" value="Y" <c:if test="${c_id == 'Y'}">checked</c:if>>
            <label class="form-check-label">아이디 저장하기</label>
        </div>

        <button type="submit" class="login-btn">로그인</button>
        <button type="button" class="signup-btn" onclick="location.href='agree'">회원가입</button>

        <button type="button" data-toggle="collapse" data-target="#demo" onclick="change(1)" class="find-btn">아이디 찾기</button>
        <button type="button" data-toggle="collapse" data-target="#demo" onclick="change(2)" class="find-btn">패스워드 찾기</button>
    </form>

    <div id="demo" class="collapse mt-3">
        <div class="row">
            <div class="col-sm-4">
                <input type="text" class="form-control" placeholder="이름" id="first">
            </div>
            <div class="col-sm-4">
                <input type="email" class="form-control" placeholder="이메일" id="second">
            </div>
            <div class="col-sm-4">
                <button type="button" class="find-btn" onclick="find()">찾기</button>
            </div>
        </div>
        <div class=""></div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


</body>
</html>
