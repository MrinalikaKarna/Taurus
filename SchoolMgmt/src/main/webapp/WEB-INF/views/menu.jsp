<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.servletContext.contextPath}/css/simple-sidebar.css" rel="stylesheet">

    

</head>

<body>

<div class="list-group">
 
    <a href="<%=request.getContextPath() %>/users/myprofile" class="list-group-item">My Profile</a>
    <a href="page.htm?pageNo=2" class="list-group-item">Page 2</a>
    <a href="page.htm?pageNo=3" class="list-group-item">Page 3</a>
    <a href="page.htm?pageNo=4" class="list-group-item">Page 4</a>
 
  </div>


     
    <script src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.servletContext.contextPath}/js/bootstrap.min.js"></script>
        </body>
        </html>
  