<%@page import="it.gutzu.controllers.beans.Sessione"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />

<html><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="${cp}/resources/css/login.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript">$(function() {

	$('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="${cp}/loginCheck" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="" type="text">
									</div>
									<div class="form-group">
										<input name="password" id="password" tabindex="2" class="form-control" placeholder="Password" type="password">
									</div>
									<div class="form-group text-center">
										<input tabindex="3" class="" name="remember" id="remember" type="checkbox">
										<label for="remember"> Remember Me</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In" type="submit">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="http://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
								</form>
								<form id="register-form" action="./login.php" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="" type="text">
									</div>
									<div class="form-group">
										<input name="name" id="username" tabindex="2" class="form-control" placeholder="Name" value="" type="text">
									</div>
									
									
									<div class="form-group">
										<input name="password" id="password" tabindex="3" class="form-control" placeholder="Password" type="password">
									</div>
									<div class="form-group">
										<input name="confirm-password" id="confirm-password" tabindex="4" class="form-control" placeholder="Confirm Password" type="password">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input name="register" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now" type="submit">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body></html>
