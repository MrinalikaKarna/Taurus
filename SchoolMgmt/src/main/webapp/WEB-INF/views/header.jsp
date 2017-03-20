<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false" %>


<!-- <div class="header"> -->
<%--  <h1>Welcome, ${UsersModel.userName}</h1> --%>
<%--  <a href="<%=request.getContextPath() %>/users/logout">Log Out</a> --%>
<!-- </div> -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>ABC School</title>


    <link href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/css/style.css" rel="stylesheet">

  </head>
  <body>
    <div class = "page-header">
	<div class="col-md-9">

		<h3>ABC School</h3>
	</div>
	<div class="col-md-3">
		<h3 class="text-right">
			<h3>Welcome, ${UsersModel.userName}</h3>
			<a href="<%=request.getContextPath() %>/users/logout">Log Out</a>
		</h3>
	</div>
	</div>
</body>
  </html>