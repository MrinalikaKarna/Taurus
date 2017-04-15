
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


		<div>
		
			

			<div class="form-group">
              <c:forEach items="${StudentDetails}" var="sdetails" varStatus="i">
              
              <s:form commandName="MarksDetailsNew" action="addmarksdetails" method="post">

			<div class="input-group">
				<label>Year </label>
				<s:select path="yearDetails.yearid" name="InputYearDetails"
					id="InputYearDetails">
					<c:forEach var="yeard" items="${YearDetails}">
						<s:option value="${yeard.yearid}" label="${yeard.yearid}" />
					</c:forEach>

				</s:select>
			</div>
			
			<div class="input-group">
				<label>Exam </label>
				<s:select path="examDetails.examid" name="InputClassDetails"
					id="InputClassDetails">
					<c:forEach var="examd" items="${ExamDetails}">
						<s:option value="${examd.examid}" label="${examd.examname}" />
					</c:forEach>

				</s:select>
			</div>
					<tr>
					    <s:input path="userDetails.userid" name="userid"  value='${sdetails.userid}' readonly="readonly"/>
					    <input name="firstname"  value='${sdetails.firstname}' readonly="readonly"/>
					    <input name="lastname"  value='${sdetails.lastname}' readonly="readonly"/>
					    <s:input path="classDetails.classid" name="classname"  value='${sdetails.classDetails.classid}' readonly="readonly"/>
                        <s:input path="english" name="english"  type="number"/>
                        <s:input path="hindi" name="hindi"  type="number"/>
                        <s:input path="maths" name="maths"  type="number"/>
                        <s:input path="science" name="science"  type="number"/>
                        <s:input path="socialstudies" name="socialstudies"  type="number"/>
                        <s:input path="sanskrit" name="sanskrit"  type="number"/> 
                        <input type="submit" name="Update"  value="Update${i.index}"/>
					</tr>
					
					<br>
					  </s:form>
				</c:forEach>
			</div>
   
   
</div>

</body>
</html>