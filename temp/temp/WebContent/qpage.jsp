<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.answerData"%>
<%@page import="beans.Applogic"%>
<%@page import="beans.questionData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	<meta charset="UTF-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, width=device-width" name="viewport">
	<title>Question Page Query-Mate</title>

	<!-- css -->
	<link href="css/base.min.css" rel="stylesheet">
	

	<!-- favicon -->
	<!-- ... -->

	<!-- ie -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		<script type="text/javascript" src="jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="js/jsfile.js"></script>
		<script type="text/javascript">
		
	function main(){
		
		alert("login first");
		window.location.href="page-login.html";
		//alert("call");
	}
		
		
		</script>
		
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
		<%
					
					String u=(String)session.getAttribute("username");
					String uid=(String)session.getAttribute("uid");
					if(u==null&&uid==null){
						%>
						<script type="text/javascript">
						main();
						
						</script>
						<%
						
						
						
					//response.sendRedirect("page-login.html");
				
					
					}
					
					else{
					
					%>
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
					<span class="access-hide"><%=Applogic.fetchName(Integer.parseInt(uid)) %></span>
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
					
					
					<hr>
					
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
						<a class="menu-top-user" href="javascript:void(0)"><span class="avatar pull-left"><img alt="alt text for John Smith avatar" src="fetchImage?uid=<%=uid%>"></span><%=u %></a>
					</div>
					<div class="container" height="100px" color="red">
			<section class="content-inner">
				<p class="margin-half-top">
				
			</section>
		</div>
					<div class="menu-top-info-sub">
						<!-- <small>Some additional information about John Smith</small> -->
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
										<!-- <li>under construction....</li>
										<li>....................</li>
										<li>..............................</li> -->
									</ul>
								</section>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<section class="content-inner">
						<h2 class="content-sub-heading">Question Page..</h2>
						<ul>
						<li>
						<div class="col-lg-3 col-md-4 col-sm-6" style="height:200px;width:650px">
							<div class="card card-alt-bg">
							
								<div class="card-main">
								<div class="card-header">
									<%int userid = Integer.parseInt(request.getParameter("uid")); %>
					
										<div class="card-header-side pull-left">
											<div class="avatar">
												<img alt="John Smith Avatar" src="fetchImage?uid=<%=userid%>">
											</div>
										</div>
										<div class="card-inner">
										
											<span><%=Applogic.fetchName(userid) %></span>
										</div>
									</div>
									<div class="card-inner">
										<p class="card-heading"><%=request.getParameter("qtitle") %></p>
										<p>
										<%=request.getParameter("qdetail")%>
										</p>
									</div>
									<div class="card-action">
										<ul class="nav nav-list pull-left">
										
										
											
										</ul>
										
									</div>
								</div>
							</div>
						</div>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<h3>ANSWERS</h3></li>
						
							<%
		
	ArrayList<answerData> answers=(ArrayList<answerData>)request.getAttribute("qdata");
		
	
		if(answers!=null){
		
							for(answerData answer:answers){ %>
						<div class="col-lg-3 col-md-4 col-sm-6" style="height:200px;width:650px">
					
							<div class="card">
							
								<div class="card-main">
								<div class="card-header">
								
				
								
								
										<div class="card-header-side pull-left">
											<div class="avatar">
												<img alt="John Smith Avatar" src="fetchImage?uid=<%= answer.getUid() %>">
											</div>
										</div>
										<div class="card-inner">
											<span><%=Applogic.fetchName(answer.getUid()) %></span>
										</div>
									</div>
									<div class="card-inner">
										<p class="card-heading"><%=answer.getAnstitle() %></p>
										<p>
											<%=answer.getAnsdetail() %>
										</p>
									</div>
									<div class="card-action">
										<ul class="nav nav-list pull-left">
										
										
										</ul>
										<ul class="nav nav-list pull-right">
										<% ResultSet i=Applogic.checkLike(Integer.parseInt((String)session.getAttribute("uid")),answer.getAid());
										if(i.next()){
										 %>
										 
										 	<li>
										 	<p class="card-heading"><%=Applogic.numberOfLikes(answer.getAid()) %></p>
										 	</li>
										 
											<li>
												<a href="javascript:void(0)" ><span  class="icon icon-2x" style="color: green">thumb_up</span></a>
											</li>
											<%} else{%>
											<li>
										 	<p class="card-heading"><%=Applogic.numberOfLikes(answer.getAid()) %></p>
										 	</li>
											<li>
												<a href="javascript:void(0)" ><span  class="icon icon-2x" id="manish_<%=(String)session.getAttribute("uid")%>_<%=answer.getAid()%>">thumb_up</span></a>
											</li>
											
											
											<%} %>
										
											
											
													
											
									</ul>
									</div>
								</div>
							</div>
							<%}} %>
							
						
							
							
							
							<div class="col-lg-3 col-md-4 col-sm-6" style="height:200px;width:650px">
							<div class="card">
							
								<div class="card-main">
								<div class="card-header">
								
				
								
								
										<div class="card-header-side pull-left">
											<div class="avatar">
												<img alt="John Smith Avatar" src="fetchImage?uid=<%=uid%>">
											</div>
										</div>
										<div class="card-inner">
											<span> <%=Applogic.fetchName(Integer.parseInt(uid))%> </span>
										</div>
									</div>
									<div class="card-inner">
										<!-- Inner Data -->
										<form action="inputAnswerServlet">
														<fieldset>
						<legend>Answer this question</legend>
						
						<div class="form-group form-group-label">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-text">Answer Title</label>
									<input class="form-control" name="ans-title" type="text" required>
								</div>
							</div>
						</div>
						<input type="hidden" value="<%=request.getParameter("id")%>" name="qid">
						<input type="hidden" value="<%=(String)session.getAttribute("uid")%>" name="uid">
						
						<div class="form-group form-group-label">
							<div class="row">
								<div class="col-lg-6 col-sm-8">
									<label class="floating-label" for="float-textarea">Answer Details</label>
									<textarea class="form-control" name="ans-detail" rows="5" required></textarea>
								</div>
							</div>
						</div>
						
						<button class="btn btn-alt waves-button waves-effect waves-light">Submit your Answer</button>
						
						
					</fieldset>
					</form>
										
										
									</div>
									
								</div>
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
	<%} %>

	

	
	<script src="js/jquery.min.js"></script>
	<script src="js/base.min.js"></script>
</body>
</html>