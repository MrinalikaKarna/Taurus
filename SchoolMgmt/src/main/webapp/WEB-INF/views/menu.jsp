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

<div class="leftPane">
   <ul class="leftMenu">
    <li><a href="<%=request.getContextPath() %>/users/myprofile">My Profile</a></li>
    <li><a href="page.htm?pageNo=2">Page 2</a></li>
    <li><a href="page.htm?pageNo=3">Page 3</a></li>
    <li><a href="page.htm?pageNo=4">Page 4</a></li>
   </ul>
  </div>


     
    <script src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.servletContext.contextPath}/js/bootstrap.min.js"></script>
        </body>
        </html>
  