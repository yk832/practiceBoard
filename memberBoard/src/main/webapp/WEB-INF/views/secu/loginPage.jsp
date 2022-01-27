<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<div class="wrapper fadeInDown">
	  <div id="formContent">
	    <div class="fadeIn first">
	      <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
	    </div>
	    <!-- Login Form -->
	    <form action="/login" method="post">
	      <input type="text" class="fadeIn second" name="loginId" placeholder="login">
	      <input type="text" class="fadeIn third" name="loginPw" placeholder="password">
	      <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
	      <input type="submit" class="fadeIn fourth" value="Log In">
	    </form>
	    <div id="formFooter">
	      <a class="underlineHover" href="#">Forgot Password?</a>
	    </div>
	  </div>
	</div>
</body>
</html>


