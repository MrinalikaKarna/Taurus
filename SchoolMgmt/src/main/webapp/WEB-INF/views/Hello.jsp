<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello Page</title>
</head>
<body>
 You are in Hello Page ${UsersModel.userName}
 
<%-- <s:form commandName="userLoginData" action="logout" method="get"> --%>

<!--  <input type="submit" value="log Out"/> -->
<%-- </s:form> --%>
</body>
</html>