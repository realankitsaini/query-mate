<%@page import="java.util.ListIterator"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="beans.Applogic"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.questionData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, width=device-width" name="viewport">
	<title>Query-Mate</title>

	<!-- css -->
	
	

	<!-- favicon -->
	
	<!-- ... -->

	<!-- ie -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    <!-- Favicons-->
    <link rel="apple-touch-icon-precomposed" href="images/favicon/apple-touch-icon-152x152.png">
    <meta name="msapplication-TileColor" content="#FFFFFF">
    <meta name="msapplication-TileImage" content="images/favicon/mstile-144x144.png">
    <link rel="icon" href="images/favicon/favicon-32x32.png" sizes="32x32">
    <!--  Android 5 Chrome Color-->
    <meta name="theme-color" content="#EE6E73">
    <!-- CSS-->
   <!--  <link href="css/ghpages-materialize.css" type="text/css" rel="stylesheet" media="screen,projection"> -->
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
    <script src="js/live.js"></script>
    <script type="text/javascript" src="jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="js/jsfile2.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	
		<ul class="nav nav-list pull-left">
			<li>
				<a data-toggle="menu" href="#menu">
					<span class="icon icon-lg">menu</span>
				</a>
			</li>
		</ul>
		<a class="header-logo" href="questionServlet">Query-Mate</a>
		
		<ul class="nav nav-list pull-right">
			<li>  <nav>
    <div class="nav-wrapper">
     
    </div>
  </nav></li><%
					
					String u=(String)session.getAttribute("username");
					String uid=(String)session.getAttribute("uid");
					%>
					
			<li>
			
					<a class="btn btn-alt waves-button waves-effect waves-light" href="start.jsp">Home</a>
			</li>
			
			<li>
			
					<a class="btn btn-alt waves-button waves-effect waves-light" href="contact-us.html">Contact Us</a>
			</li>
			<li>
			
					<a class="btn btn-alt waves-button waves-effect waves-light"href="about-us.html">About Us</a>
			</li>
			
			<li> <a class="header-logo">Welcome <b><%=u %></b> </a></li>
			<li>
				<a data-toggle="menu" href="#profile">
				
					<span class="access-hide"><%=u %></span>
					<span class="avatar"><img alt="alt text for John Smith avatar" src="fetchImage?uid=<%=uid%>"></span>
				</a>
			</li>
		</ul>
	</header>
	<nav class="menu" id="menu">
		<div class="menu-scroll">
			<div class="menu-wrap">
				<div class="menu-content">
					<a class="menu-logo" href="questionServlet">Query-Mate</a>
					<ul class="nav">
						<li>
			
					<a  href="start.jsp">Home</a>
			</li>
			
			<li>
			
					<a  href="contact-us.html">Contact Us</a>
			</li>
			<li>
					<a  href="terms.html">Terms of use</a>
			</li>
			<li>
			
					<a href="about-us.html">About Us</a>
			</li>
						
					</ul>
					
					
				</div>
			</div>
		</div>
	</nav>
	<nav class="menu menu-right" id="profile">
		<div class="menu-scroll">
			<div class="menu-wrap">
				<div class="menu-top">
					<div class="menu-top-img">
						<img alt="John Smith" src="fetchImage?uid=<%=uid%>">
					</div>
					<div class="menu-top-info">
						<a class="menu-top-user" href="javascript:void(0)"><span class="avatar pull-left"><img alt="alt text for John Smith avatar" src="fetchImage?uid=<%=uid%>"></span><h3>Hi! &nbsp;<%=u %></h3></a>
					</div>
					<div class="container" height="100px" color="red">
			<section class="content-inner">
				<p class="margin-half-top">
			
			</section>
		</div>
					<div class="menu-top-info-sub">
						<%-- <small>Welcome <%= System.out.printf(" ") %><%=uid %></small> --%>
					</div>
				
			
				</div>
				<div class="menu-content">
					<ul class="nav">
						<li>
							<a href="MyQuestionsServlet"><span class="icon icon-lg">account_box</span>My Question</a>
						</li>
						
						<li>
							<a href="signoutServlet"><span class="icon icon-lg">exit_to_app</span>Logout</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		
		
		
		
	</nav>
	<div class="content">
		<div class="content-heading">
			<div class="container container-full">
				<h1 class="heading">Query-Mate <small>Lets answer...</small></h1>
			</div>
		</div>
		<div class="container container-full">
			<div class="row row-fix">
				<div class="col-md-3 content-fix">
					<div class="content-fix-scroll">
						<div class="content-fix-wrap">
							<div class="content-fix-inner">
								<section class="content-inner">
									<h2 class="content-sub-heading"><!-- LHC --></h2>
									<ul>
										<!--  <li>under construction....</li>
										<li>....................</li>
										<li>..............................</li>  -->
									</ul>
								</section>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<section class="content-inner">
						<h2 class="content-sub-heading">Recent Questions</h2>
						<div class="col-lg-3 col-md-4 col-sm-6" style="height:200px;width:650px">
							
						
				<%
		
	ArrayList<questionData> questions=(ArrayList<questionData>)request.getAttribute("questions");
		
					ListIterator<questionData> l=questions.listIterator();
		while(l.hasNext()){
		l.next();}
		
							while(l.hasPrevious()){ 
							questionData quest=l.previous();
							%>
							<div class="card card-green">
								<div class="card-main">
									<div class="card-inner">
										<div class="card-header">
										<div class="card-header-side pull-left">
											<div class="avatar">
												<img alt="John Smith Avatar"  src="fetchImage?uid=<%=quest.getUserid()%>">
											</div>
										</div>
										<div class="card-inner">
											<span><%=Applogic.fetchName(quest.getUserid())%>
											 
											
											</span>
										</div>
									</div>
									<a href="questionAnswerServlet?id=<%=quest.getQid()%>&uid=<%=quest.getUserid() %>&qtitle=<%=quest.getQuestion() %>&qdetail=<%=quest.getQuestionDetails()%>">	<p class="card-heading text-green"><b> <%=quest.getQuestion() %></b></p>
										<p></a>
										<%=quest.getQuestionDetails() %>
										
										<!-- Tags settings start -->
										 <%String alltags= quest.getCategory();
										System.out.print(alltags);
										String[] tag = alltags.split(",");
										
										
										
										
										for(int i= 0; i<tag.length;i++){
										
										 %>
										        <div class="chip">
        												  <%=tag[i] %>
     										   </div>
  										<%} %>    					 				  
										</p>
									</div>
									
									<div class="card-action">
									
										<ul class="nav nav-list pull-left">
										
										<li><a class="btn btn-alt waves-button waves-effect waves-light" href="questionAnswerServlet?id=<%=quest.getQid()%>&uid=<%=quest.getUserid() %>&qtitle=<%=quest.getQuestion() %>&qdetail=<%=quest.getQuestionDetails()%>"><span class="fbtn-text"></span><span class="icon icon-2x"></span>    Answer</a>	</li>
										
											
									</ul>
									<ul class="nav nav-list pull-right">
									<% ResultSet i=Applogic.checkLike2(Integer.parseInt((String)session.getAttribute("uid")),quest.getQid());
										if(i.next()){
										 %>
										 <li>
										 	<p class="card-heading"><%=Applogic.numberOfLikesQ(quest.getQid()) %></p>
										 	</li>
											<li>
												<a href="javascript:void(0)"><span class="icon icon-2x" style="color:green;" id="saini_<%=(String)session.getAttribute("uid")%>_<%=quest.getQid()%>">thumb_up</span></a>
											</li>
											<%} else{%>
											<li>
										 	<p class="card-heading"><%=Applogic.numberOfLikesQ(quest.getQid()) %></p>
										 	</li>
											<li>
												<a href="javascript:void(0)" ><span  class="icon icon-2x" id="manish_<%=(String)session.getAttribute("uid")%>_<%=quest.getQid()%>">thumb_up</span></a>
											</li>
											<%} %>
											<!-- <li>
												<a href="javascript:void(0)"><span class="icon icon-2x">thumb_down</span></a>
											</li>
											
											<li class="dropdown">
												<a class="dropdown-toggle" data-toggle="dropdown"><span class="icon icon-2x">more_vert</span></a>
												<ul class="dropdown-menu">
													<li>
														<a href="javascript:void(0)"><span class="icon margin-right-sm">edit</span>&nbsp;Edit</a>
													</li>
													 -->
												</ul>
											</li>
													
											
									</ul>
									</div>
								</div>
						</div>
						<%} %>
						
						</div>
					</section>
				</div>
				<div class="col-md-3 content-fix">
					<div class="content-fix-scroll">
						<div class="content-fix-wrap">
							<div class="content-fix-inner">
								<section class="content-inner">
									<h2 class="content-sub-heading"><!-- RHC --></h2>
									<div class="tile-wrap">
										<!-- <div class="tile">
											<div class="pull-left tile-side">
												<span class="icon">chevron_right</span>
											</div> -->
											<div class="tile-inner">
												<!-- <span>lorem</span> -->
											</div>
										</div>
									
										</div>
									
								</section>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="fbtn-container">
		<div class="fbtn-inner">
			<a class="fbtn fbtn-red fbtn-lg" href="#modal3" data-toggle="modal"><span class="fbtn-text">Ask Question</span><span class="fbtn-ori icon">add</span><span class="fbtn-sub icon">close</span></a>
		</div>
	</div>

	<div aria-hidden="true" class="modal fade" id="modal3" role="dialog" tabindex="-1" style="siplay:none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-heading">
					<a class="modal-close" data-dismiss="modal">×</a>
					<h2 class="modal-title">Ask Your Question!</h2>
				</div>
				<div class="modal-inner">
					<div class="card-main">
									<div class="card-header">
										<div class="card-inner">
											<h1 class="card-heading">Ask your Question</h1>
										</div>
									</div>
									<div class="card-inner">
										
										<form class="form" action="askQuestionServlet">
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="question-title">Question Title</label>
														<input class="form-control" name="question-title" type="text" required>
													</div>
												</div>
											</div>
										
																						
											
											
											<div class="form-group form-group-label">
											<div class="row">
													<div class="col-md-10 col-md-push-1">
												<label class="floating-label" for="float-textarea-autosize">Question Details</label>
												<textarea class="form-control textarea-autosize" name="question-detail" rows="1" style="height: 35px;"required></textarea>
													</div>
											</div>
											</div>
											
											
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="question-title">Tags(Seperate with ",")</label>
														<input class="form-control" name="tags" type="text">
													</div>
												</div>
											</div>
								
					
											<div class="form-group">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<button class="btn btn-block btn-blue waves-button waves-effect waves-light">Submit Your Question</button>
													</div>
												</div>
											</div>
											<!-- <div class="form-group">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<div class="checkbox checkbox-adv">
															<label for="login-remember">
																<input class="access-hide" id="login-remember" name="login-remember" type="checkbox">Stay signed in
															<span class="circle"></span><span class="circle-check"></span><span class="circle-icon icon">done</span></label>
														</div>
													</div>
												</div>
											</div> -->
										</form>
									</div>
								</div>
				</div>






				<div class="modal-footer">
					<p class="text-right">
					
					<button class="btn btn-flat btn-alt" data-dismiss="modal" type="button">Close</button></p>
				</div>
			</div>
		</div>
	</div>
	
	<div aria-hidden="true" class="modal fade" id="modal" role="dialog" tabindex="-1">
		<div class="modal-dialog modal-xs">
			<div class="modal-content">
				<div class="modal-heading">
					<a class="modal-close" data-dismiss="modal">×</a>
					<h2 class="modal-title">Login</h2>
				</div>
				<div class="modal-inner">
					<div class="card-main">
									<div class="card-header">
										<div class="card-inner">
											<h1 class="card-heading">Login</h1>
										</div>
									</div>
									<div class="card-inner">
										<p class="text-center">
											<span class="avatar avatar-inline avatar-lg">
												<img alt="Login" src="images/users/avatar-001.jpg">
											</span>
										</p>
										<form class="form" action="loginServlet">
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="login-username">Username</label>
														<input class="form-control" name="login-username" type="text">
													</div>
												</div>
											</div>
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="login-password">Password</label>
														<input class="form-control" name="login-password" type="password">
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<button class="btn btn-block btn-blue waves-button waves-effect waves-light">Sign In</button>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<div class="checkbox checkbox-adv">
															<label for="login-remember">
																<input class="access-hide" id="login-remember" name="login-remember" type="checkbox">Stay signed in
															<span class="circle"></span><span class="circle-check"></span><span class="circle-icon icon">done</span></label>
														</div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
				</div>






				<div class="modal-footer">
					<p class="text-right">
					
					<button class="btn btn-flat btn-alt" data-dismiss="modal" type="button">Close</button></p>
				</div>
			</div>
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/base.min.js"></script>
</body>
</html>