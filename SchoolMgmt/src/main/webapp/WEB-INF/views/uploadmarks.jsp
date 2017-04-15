
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student Details</title>
<link
	href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.servletContext.contextPath}/css/customcss.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
</head>
<body>
   <div class="form-group">
		<s:form  action="getStudentDetails" commandName="ClassDetailsnew"
				method="post">
					<div class="input-group">
					    <label>Class </label>
						<s:select path="classid"  name="InputClassDetails" id="InputClassDetails">
							<c:forEach var="classd" items="${ClassDetails}">
								<s:option value="${classd.classid}" label="${classd.classname}" />
							</c:forEach>

						</s:select>
					</div>
	
				<input type="submit" name="submit" id="submit" value="Get Student Details"
									class="btn btn-info pull-right"/>
			</s:form>
					
					
	</div>
 
</body>