
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Profile</title>
<link href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link
	href="${pageContext.servletContext.contextPath}/css/customcss.css"
	rel="stylesheet">
</head>
<body>
<div class="panel panel-default">
  <div class="panel-heading main-color-bg"><h2 class="panel-title">My Profile</h2></div>
  <div class="panel-body" align="center">
    <table class="table table-striped">

    <tbody>
      <tr>

        <td><b>Name :</b></td>
        <td><b>${UsersModelDetail.userName}</b></td>
      </tr>
      <tr>
        <td><b>Class :</b></td>
        <td><b>${UsersModelDetail.userClass}</b></td>
      </tr>
      <tr>
        <td><b>Roll No :</b></td>
        <td><b>${UsersModelDetail.userRollNo}</b></td>
      </tr>
            <tr>
        <td><b>Address :</b></td>
        <td><b>${UsersModelDetail.userAddress}</b></td>
      </tr>
    </tbody>
  </table>
    
  
 
  </div>
</div>
</body>
</html>