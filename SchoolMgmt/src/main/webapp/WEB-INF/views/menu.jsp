<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">




<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.servletContext.contextPath}/css/jquery.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="${pageContext.servletContext.contextPath}/css/customstyle.css"
	rel="stylesheet">

    <script src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/scripts.js"></script>



</head>

<body>
<div class="container">
 <div class="row">
   <div class="col-md-3">
				<div class="list-group">
				    <a href="<%=request.getContextPath() %>/users/Hello?method=GET" class="list-group-item">
				    <span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> News n' Announcements </a>
					<a href="<%=request.getContextPath() %>/users/myprofile?method=GET&param1=${UserDetails.mobilenumber}" class="list-group-item">
					 <span class="glyphicon glyphicon-user" aria-hidden="true" ></span> My Profile </a> <a
						href="<%=request.getContextPath() %>/users/reportcard" class="list-group-item">
						<span class="glyphicon glyphicon-education" aria-hidden="true"></span> Report Card</a> <a
						href="<%=request.getContextPath() %>/users/leaves" class="list-group-item">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Leaves and Calendar</a> <a href="#"
						class="list-group-item">
						<span class="glyphicon glyphicon-picture" aria-hidden="true"></span> Creative Corner</a>
						 
				</div>
			</div>
 </div>
</div>

<script type="text/javascript"> 
$(function(){
    console.log('ready');
    
    $('.list-group a').click(function(e) { 
        $that = $(this);
        $('.list-group a').removeClass('active');
        $that.addClass('active');
        
        
    });
})

// $(".list-group a").click(function(e) {
//    $(".list-group a").removeClass("active");
//    $(e.target).addClass("active");
// });
 </script> 




</body>
</html>
