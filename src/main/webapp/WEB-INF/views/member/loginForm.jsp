<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>로그인 처리</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WySzkyydExRyq4a2iFFgH+KbAGbBRWFGuZ" crossorigin="anonymous">
    
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha384-gnvP+OTKs8UBlF0a9yKaB8I9ZipXg8UEGSOAa4KtLXqcjzg1y0YD4ErHJ5YFv8uE" crossorigin="anonymous">
    
    <!-- Your custom styles go here -->
    <style>
        body {
            background-color: #f8f9fa; /* Bootstrap default background color */
        }
        
        .container {
            max-width: 400px; /* Set the maximum width for better responsiveness */
            margin-top: 5%;
        }

        .mb-2 {
            text-align: center;
        }

        .btn-outline-info, .btn-outline-success, .btn-outline-dark {
            width: 100%; /* Make buttons full-width */
            margin-bottom: 10px; /* Add some spacing between buttons */
        }

        .collapse {
            margin-top: 20px; /* Add some spacing between login form and collapse */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class='mb-2'>로그인</h2>
        <form action="/member/login" method="post">
            <!-- Your existing form elements go here -->

            <!-- Example using Font Awesome icons -->
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                </div>
                <input type="text" class="form-control" id="id" placeholder="Enter id" name="id" required="required" value='${c_id_val}'>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                </div>
                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="passwd" required="required">
            </div>

            <!-- Your existing form elements go here -->

            <button type="submit" class="btn btn-outline-info">로그인</button>
            <button type="button" class="btn btn-outline-success" onclick="location.href='agree'">회원가입</button>
            <button type="button" data-toggle="collapse" data-target="#demo" onclick="location.href='logincheck'" class="btn btn-outline-dark">아이디 찾기</button>
            <button type="button" data-toggle="collapse" data-target="#demo" onclick="change(2)" class="btn btn-outline-dark">패스워드 찾기</button>
        </form>

        <div id="demo" class="collapse">
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Enter name" id="first">
            </div>
            <div class="input-group mb-3">
                <input type="email" class="form-control" placeholder="Enter email" id="second">
            </div>
            <div class="input-group mb-3">
                <button type="button" class="btn btn-outline-dark" onclick="find()">찾기</button>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js" integrity="sha384-JKS8ZyUqouX0i60g5K1v7r5EvpOTKtvw7E23eI4EAXgT9IlDv2te85J53iwO0dZj" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WySzkyydExRyq4a2iFFgH+KbAGbBRWFGuZ" crossorigin="anonymous"></script>

    <!-- Font Awesome JS (Optional, if you want to use icons with JS) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KC6b98iZhkrvb5u7JCA+PPt5s3f2g7DFOmIq27SkE3" crossorigin="anonymous"></script>

    <!-- Your custom scripts go here -->
    <script type="text/javascript">
        // Your existing JavaScript code goes here
    </script>
</body>
</html>
