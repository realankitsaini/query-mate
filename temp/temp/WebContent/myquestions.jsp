<%@page import="beans.questionData"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, width=device-width" name="viewport">
	<title>My Questions-Query-Mate</title>

	<!-- css -->
	<link href="css/base.min.css" rel="stylesheet">

	<!-- favicon -->
	<!-- ... -->

	<!-- ie -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body class="avoid-fout">
	<%
					
					String u=(String)session.getAttribute("username");
					String uid=(String)session.getAttribute("uid");
					%>
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
		
		<li>
			
					<a class="btn btn-alt waves-button waves-effect waves-light" href="start.jsp">Home</a>
			</li>
			
			<li>
			
					<a class="btn btn-alt waves-button waves-effect waves-light" href="contact-us.html">Contact Us</a>
			</li>
			<li>
			
					<a class="btn btn-alt waves-button waves-effect waves-light"href="about-us.html">About Us</a>
			</li>
			
		
		
		<li>
			
					<a class="header-logo">Welcome <b><%=u %></b></a>
			</li>
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
					<a class="menu-logo" href="index.jsp">Query-Mate</a>
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
					<hr>
					
					
					
				</div>
			</div>
		</div>
	</nav>
	<nav class="menu menu-right" id="profile">
		<div class="menu-scroll">
			<div class="menu-wrap">
				<div class="menu-top">
					<div class="menu-top-img">
						<span class="avatar"><img alt="alt text for John Smith avatar" src="fetchImage?uid=<%=uid%>"></span>
					</div>
					<div class="menu-top-info">
						<a class="menu-top-user" href="javascript:void(0)"><span class="avatar pull-left"><img alt="alt text for John Smith avatar" src="fetchImage?uid=<%=uid%>"></span><h3>Hi! &nbsp;<%=u %></h3></a>
					</div>
					<div class="menu-top-info-sub">
						<!-- <small>Some additional information about <</small> -->
					</div>
				</div>
				<div class="menu-content">
					<ul class="nav">
						<li>
							<a href="MyQuestionsServlet"><span class="icon icon-lg">add_to_photos</span>My Questions</a>
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
			<div class="container">
				<h1 class="heading">Query-Mate</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner">
				<h2 class="content-sub-heading">My Questions</h2>
			
				<div class="tile-wrap">
				
				<%
		
	ArrayList<questionData> questions=(ArrayList<questionData>)request.getAttribute("questions");
		
	
				if(questions.isEmpty()){
				%>
				<div class="tile">
						<h3>No Question Asked... Go and ask some :)</h3>
					</div>
				
				<%
				}else{
		
							for(questionData quest:questions){ %>
				
					<div class="tile">
						<div class="pull-left tile-side">
							<div class="avatar">
								<span class="avatar" ><img alt="John Smith Avatar"  src="fetchImage?uid=<%=quest.getUserid()%>"></span>
							</div>
						</div>
						<div class="tile-action tile-action-show">
							<ul class="nav nav-list pull-right">
								
								
								<li class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown"><span class="icon">delete</span></a>
									<ul class="dropdown-menu">
										<li>
									<a href="DeleteMyQuestionServlet?uid=<%=uid%>&qid=<%=quest.getQid()%>"><span class="icon margin-right-sm" >delete</span> Delete this question</a>
										</li>
										<li>
											<a href="javascript:void(0)"><span class="icon margin-right-sm">replay</span>Cancel</a>
										</li>
										
									</ul>
								</li>
							</ul>
						</div>
						<div class="tile-inner">
							<span class="text-overflow"><%=quest.getQuestion() %></span>
						</div>
					</div>
					
					<%}} %>
					
					
				</div>				
			</section>
		</div>
	</div>
	


	<script src="js/jquery.min.js"></script>
	<script src="js/base.min.js"></script>
</body>

</html>