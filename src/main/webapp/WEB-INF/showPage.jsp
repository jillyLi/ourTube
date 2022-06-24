<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	<title>Video</title>
</head>
<body class="all">
	
<!-- =================== NAVBAR ======================== -->
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
				       <input type="search" name="sVal" placeholder="Search..." style="color:grey"  aria-label="Search" class="form-control me-2">
				         <button class="btn btn-outline-success" ><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMUNzwnS56vpMgfGeUXku8sBS_qJaM7Q8lng&usqp=CAU" style="width:30px; height:30px"/></button>	
				      </form>
			    </li>
	<!--  ======================================================================== -->
		
			   
			     <c:if test="${userId==null || userId==0}">
		        <li class="nav-item">
		          <a class="nav-link" href="/ourTube/login" style="margin-left:300px">Sign In</a>
		        </li>
		        </c:if>
		         <c:if test="${userId!=null }">
			     	 <a class="nav-link" href="/ourTube/profile" style="margin-left:300px">H! ${name }</a>
			     	 
			     </c:if>
			      <c:if test="${userId!=null }">
			     	 <a class="nav-link" href="/logout" style="margin-left:50px">Log out</a>
			     	 
			     </c:if>
		      </ul>
		     
		    </div>
		  </div>
	</nav>
	
	
	
<!--========================= VIDEO ========================  -->
<div class="restBody">
	<div class="videoWrapper">
		 <iframe  src="${thisVideo.link}" title="YouTube video player" 
		frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
		allowfullscreen  >
		
		</iframe>
	</div>
	
	<div class="infoSection">
		<p>
			<span class="titleShow">${thisVideo.title}</span>
			<div class="groupB">
				<span><a href="/like/${thisVideo.id}" style="text-decoration:none; color:pink; border-style:solid; padding:5px">${thisVideo.likes } Like</a></span>
				<span ><a href="/dislike/${thisVideo.id }" style="text-decoration:none; color:pink; margin-left:30px; border-style:solid; padding:5px">${thisVideo.dislikes } Dislike</a></span>
			</div>
		</p>
	</div>
	
	<p class="summaryShow"> Description <br/>${thisVideo.summary}</p>
	
<!-- =======================Comments =========================== -->
	<div class="videoComment">
		<hr/>
		<h2 style="margin-left:10%">Comments</h2>
		<form:form action="/addComment" method="post" modelAttribute="newComment" class="formShow">
			<p>
		        
		        <form:errors  path="comments" class="error"/>
		        <form:input type="text" path="comments" width="100px" height="50px" placeholder="write comments ..."/>
		    	
		    	<form:input type="hidden" path="video" value="${id }"/>
				<form:input type="hidden" path="author" value="${name}"/>
		    	<button>Submit</button>
		    </p>
			
		</form:form>
		
	</div> 
	<%-- <h1>here size: ${allComments.size() }</h1>
	 --%>
	
	
	<div class="videoComments">
		<div class="comm">
			<c:forEach var="eachComment" items="${allComments}">
				<div class="commBorder">
					<div class="authorShow">
						${eachComment.author }:
					</div> 
					<div class="commentShow">
						<p>${eachComment.comments}</p>
					</div>
					
					<c:if test="${eachComment.author== name}">
					<%-- 	<h3>${eachComment.id }</h3> --%>
						<a href="/delete/${eachComment.id}/${eachComment.video.getId()}" style="margin-left:20px; border-style:solid; height:30px;padding:3px; text-decoration:none">Delete</a>
					
					</c:if>
				</div>
			</c:forEach>
		</div>
	
	</div>
	




</div>
	
	
	
</body>
</html>