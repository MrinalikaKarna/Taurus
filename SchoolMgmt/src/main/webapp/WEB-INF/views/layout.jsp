<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>

<title>ABC School</title>
<link href="${pageContext.servletContext.contextPath}/css/layoutstyle.css" rel="stylesheet" type="text/css" />

</head>
<body>
<tiles:insertAttribute name="header" />
 <div class="main">
  <tiles:insertAttribute name="menu" />
  <div class="rightPane">
   <tiles:insertAttribute name="body" />
  </div>
 </div>
<tiles:insertAttribute name="footer" />
 
</body>
</html>