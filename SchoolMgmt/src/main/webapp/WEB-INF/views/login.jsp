
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page isELIgnored="false" %>

<html>
<head>
<title>Login Page</title>


<link href="${pageContext.servletContext.contextPath}/css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>

<div class="aa">

<img src="<spring:url value="/images/Applelogo.png"/>"/>


<h4>ABC School</h4><br>

<s:form commandName="userLoginData" action="users/welcome" method="post">
 <s:input path="mobilenumber" type="tel" placeholder="Mobile Number"/><br><br>
 <s:input path="password" type="Password" placeholder="Password"/><br><br>
 <input type="submit" value="Login"/>
 </s:form>

</div>

</body>
</html>