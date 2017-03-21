
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Profile</title>
<link href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="panel panel-default">
  <div class="panel-heading" align="center">My Profile</div>
  <div class="panel-body" align="center">
    <div class="container">
    <div class="row">
    <div class="col-md-5">
      Name
    </div>
    <div class="col-md-2">
      ${UsersModel.userName}
    </div>
    </div>
    <br>
    
  
     <div class="row">
    <div class="col-md-5">
      Class
    </div>
    <div class="col-md-6">
      ${UsersModel.userClass}
    </div>
  </div>
  
     <div class="row">
    <div class="col-md-5">
      Name
    </div>
    <div class="col-md-6">
      ${UsersModel.userRollNo}
    </div>
  </div>
  
     <div class="row">
    <div class="col-md-5">
      Address
    </div>
    <div class="col-md-6">
      ${UsersModel.userAddress}
    </div>
  </div>
  
  </div>
  </div>
</div>
</body>
</html>