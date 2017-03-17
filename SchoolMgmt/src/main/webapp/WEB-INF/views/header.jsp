<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false" %>

<div class="header">
 <h1>Welcome, ${UsersModel.userName}</h1>
 <a href="<%=request.getContextPath() %>/users/logout">Log Out</a>
</div>