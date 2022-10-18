<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page language="java" pageEncoding="UTF-8" %>
<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login V15</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--===============================================================================================-->
  <link rel="icon" type="image/png" href=" <c:url value="/resources/layout_login/images/icons/favicon.ico"/>">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/layout_login/vendor/bootstrap/css/bootstrap.min.css"/> ">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/layout_login/fonts/font-awesome-4.7.0/css/font-awesome.min.css" /> ">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/layout_login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/layout_login/vendor/animate/animate.css"/> ">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/layout_login/vendor/css-hamburgers/hamburgers.min.css" />">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/layout_login/vendor/animsition/css/animsition.min.css" />">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/layout_login/vendor/select2/select2.min.css" /> ">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/layout_login/vendor/daterangepicker/daterangepicker.css" /> ">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/layout_login/css/util.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/layout_login/css/main.css"/>">
  <!--===============================================================================================-->
</head>
<body>

<div class="limiter">
  <div class="container-login100">
    <div class="wrap-login100">
      <div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
      </div>

      <form:form class="login100-form validate-form" modelAttribute="loginForm" servletRelativeAction="/processLogin" method="POST">
        <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
          <span class="label-input100">Username</span>
          <form:input path="userName" class="input100"  placeholder="Enter username"/>
          <span class="focus-input100"></span>
          <div class="has-error">
            <form:errors path="userName" cssClass="help-block"></form:errors>
          </div>
        </div>

        <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
          <span class="label-input100">Password</span>
          <form:password path="password" class="input100" placeholder="Enter password"/>
          <span class="focus-input100"></span>
          <div class="has-error">
            <form:errors path="password" cssClass="help-block"></form:errors>
          </div>
        </div>

        <div class="flex-sb-m w-full p-b-30">
          <div class="contact100-form-checkbox">
            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
            <label class="label-checkbox100" for="ckb1">
              Remember me
            </label>
          </div>

          <div>
            <a href="#" class="txt1">
              Forgot Password?
            </a>
          </div>
        </div>

        <div class="container-login100-form-btn">
          <button class="login100-form-btn">
            Login
          </button>
        </div>
      </form:form>
    </div>
  </div>
</div>

<!--===============================================================================================-->
<script src="<c:url value="/resources/layout_login//vendor/jquery/jquery-3.2.1.min.js"/>"></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/layout_login/vendor/animsition/js/animsition.min.js"/>"></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/layout_login/vendor/bootstrap/js/popper.js"/>"></script>
<script src="<c:url value="/resources/layout_login/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/layout_login/vendor/select2/select2.min.js"/>"></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/layout_login/vendor/daterangepicker/moment.min.js"/>"></script>
<script src="<c:url value="/resources/layout_login/vendor/daterangepicker/daterangepicker.js"/>"></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/layout_login/vendor/countdowntime/countdowntime.js"/>"></script>
<!--===============================================================================================-->
<script src="<c:url value="/resources/layout_login/js/main.js"/>"></script>

</body>
</html>