<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello Page</title>
<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="${pageContext.servletContext.contextPath}/css/customcss.css"
	rel="stylesheet">
</head>
<body>
	<div class="panel panel-default">
		<div class="panel-heading main-color-bg">
			<h2 class="panel-title">News n' Announcements</h2>
		</div>
		<div class="panel-body">You are in Hello Page ${UsersModel.userName}</div>
	</div>
	
</body>
</html>