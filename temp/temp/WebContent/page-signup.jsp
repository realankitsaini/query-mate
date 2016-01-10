<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, width=device-width" name="viewport">
	 <link href="css/prism.css" rel="stylesheet">
    <link href="css/base.min.css" rel="stylesheet">
     <link href="http://fonts.googleapis.com/css?family=Inconsolata" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script>
      window.liveSettings = {
        api_key: "a0b49b34b93844c38eaee15690d86413",
        picker: "bottom-right",
        detectlang: true,
        dynamic: true,
        autocollect: true
      };
    </script>
<title>Signup Query-Mate</title>
</head>
<body class="avoid-fout">
	<div class="avoid-fout-indicator avoid-fout-indicator-fixed">
		<div class="progress-circular progress-circular-alt progress-circular-center">
			<div class="progress-circular-wrapper">
				<div class="progress-circular-inner">
					<div class="progress-circular-left">
						<div class="progress-circular-spinner"></div>
					</div>
					<div class="progress-circular-gap"></div>
					<div class="progress-circular-right">
						<div class="progress-circular-spinner"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<header class="header">
		<a class="header-logo" href="start.jsp">Query-Mate</a>
	</header>
	<div class="content">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-lg-push-4 col-sm-6 col-sm-push-3">
					<section class="content-inner">
						<div class="card-wrap">
							<div class="card">
								<div class="card-main">
									<div class="card-header">
										<div class="card-inner">
											<h1 class="card-heading">Signup!</h1>
										</div>
									</div>
									<div class="card-inner">
										<p class="text-center">
											<span class="avatar avatar-inline avatar-lg">
												<img alt="Login" src="images/users/avatar-001.jpg">
											</span>
										</p>
										<form class="form" action="signupServlet" enctype="multipart/form-data" method="post">
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="signup-username">Username<text color="red">*</text></label>
														<input class="form-control" required  name="signup-username" type="text">
													</div>
												</div>
											</div>
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="signup-email">Email*</label>
														<input class="form-control" type="email" required name="signup-email" type="text">
													</div>
												</div>
											</div>
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="signup-password">Password*</label>
														<input class="form-control" required name="signup-password" type="password">
													</div>
												</div>
												
											
											</div>
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="image">Profile Picture*</label>
														<input class="form-control" required name="image" type="file">
													</div>
												</div>
												
											
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<button class="btn btn-block btn-blue waves-button waves-effect waves-light">Sign Up</button>
													</div>
												</div>
											</div>
										
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="clearfix">
							<p class="margin-no-top pull-left"><a href="javascript:void(0)">Need help?</a></p>
							<p class="margin-no-top pull-right"><a href="javascript:void(0)">Create an account</a></p>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<p>Query-Mate</p>
		</div>
	</footer>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/base.min.js"></script>
</body>
</html>