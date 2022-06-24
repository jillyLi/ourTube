<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<title>Sign Up Page</title>
</head>
<body style="background-color:white">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<nav class="navbar navbar-light bg-light">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="/ourTube">
		      <img src="https://www.seekpng.com/png/small/1006-10064683_youtube-dark-icon-logo-youtube-play-png.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
		      OurTube
		    </a>
		  </div>
		</nav>
		  <div class="container-fluid">
		    
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		        
	<!--    ============================== SEARCH BAR =========================  -->
		        <li class=nav-item style="margin-left:350px"> 
		        	
		        	
		        	<form action="/search" method="post" class="d-flex">
				       <input type="search" name="sVal" placeholder="Search..." style="color:grey" aria-label="Search" class="form-control me-2">
				        <button class="btn btn-outline-success" ><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMUNzwnS56vpMgfGeUXku8sBS_qJaM7Q8lng&usqp=CAU" style="width:30px; height:30px"/></button>	
				      </form>
			    </li>
	<!--  ======================================================================== -->
		
			     
		        <li class="nav-item">
		          <a class="nav-link" href="/ourTube/login" style="margin-left:300px">Sign In</a>
		        </li>
		      </ul>
		     
		    </div>
		  </div>
	</nav>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		
	<div class="leftContainer">
			<h1>Register</h1>
			<form:form action="/register" method="post" modelAttribute="newUser">
				<p>
			        <form:label path="userName">Name:</form:label>
			        <form:errors  path="userName" class="error"/>
			        <form:input path="userName"/>
			    </p>
			    <p>
			        <form:label path="email">Email:</form:label>
			        <form:errors  path="email" class="error"/>
			        <form:input path="email"/>
			    </p>
			    <p>
			        <form:label path="password">Password:</form:label>
			        <form:errors  path="password" class="error"/>
			        <form:input path="password"/>
			    </p>
			    <p>
			        <form:label path="confirm">Confirm PW:</form:label>
			        <form:errors  path="confirm" class="error"/>
			        <form:input path="confirm"/>
			    </p>
			    <button>Register</button>
			
			</form:form>
			
	</div>
</body>
</html>