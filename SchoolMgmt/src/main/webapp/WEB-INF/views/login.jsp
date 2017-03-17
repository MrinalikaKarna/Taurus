
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page isELIgnored="false" %>

<html>
<head>
<title>Login Page</title>

<%-- <link rel="stylesheet" type="text/css" href=" --%>
<%--       <spring:url value="<%=request.getContextPath() %>/resources/style.css"/> "/> --%>
<!-- <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'> -->


<link href="${pageContext.servletContext.contextPath}/css/style.css" rel="stylesheet" type="text/css" />

</head>

<body>

<s:form commandName="userLoginData" action="users/welcome" method="post">
 <h4> Login Information </h4>
 UsersName <s:input path="userName"/>
 Password  <s:input path="userPassword"/>

 <input type="submit" value="login"/>
 </s:form>


</body>
</html>