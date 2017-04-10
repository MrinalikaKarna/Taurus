
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


	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">Add through Form</h3>
			<span class="pull-right clickable"><i
				class="glyphicon glyphicon-chevron-up"></i></span>
		</div>
		<div class="panel-body">
			<s:form commandName="AddUserData" action="adduserdetails"
				method="post">

				<div class="form-group ">
					<div class="input-group">
						<s:input path="userModel.mobilenumber" class="form-control" id="mobilenumber"
							name="mobilenumber" placeholder="Mobile Number" type="tel" value="" />
					</div>
			    </div>
			    
			    <div class="form-group ">
					<div class="input-group">
						<s:input path="userModel.password" class="form-control" id="password"
							name="passwprd" placeholder="Password" type="text" />
					</div>
			    </div>
			    
			    <div class="form-group ">
					<div class="input-group">
						<s:input path="firstname" class="form-control" id="firstname"
							name="firstname" placeholder="First Name" type="text" />
					</div>
			    </div>
			    
			    <div class="form-group ">
					<div class="input-group">
						<s:input path="lastname" class="form-control" id="lastname"
							name="lastname" placeholder="Last Name" type="text" />
					</div>
			    </div>
			   
			    
			    <div class="form-group ">
					<div class="input-group">
						<s:input path="address" class="form-control" id="address"
							name="address" placeholder="Address" type="text" />
					</div>
			    </div>
			    
			    <div class="form-group ">
					<div class="input-group">
						
							<s:select path="gender" name="Inputgender" id="Inputgender"
							type="text" >
								<s:option value="Male" label="Male" />
								<s:option value="Female" label="Female" />

						     </s:select>
					</div>
			    </div>
			    
			     <div class="form-group ">
					<div class="input-group">
						<s:input path="fathersname" class="form-control" id="fathersname"
							name="fathersname" placeholder="Father's Name" type="text" />
					</div>
			    </div>
			    
			    
			    
			    <div class="form-group ">
					<div class="input-group">
						<s:input path="mothersname" class="form-control" id="mothersname"
							name="mothersname" placeholder="Mothers's Name" type="text" />
					</div>
			    </div>
			    
			    <div class="form-group ">
					<div class="input-group">
							<s:select path="userrole" name="userrole" id="userrole"
							type="text" >
								<s:option value="Student" label="Student" />
								<s:option value="Teacher" label="Teacher" />
								<s:option value="Support Staff" label="Support Staff"/>
								<s:option value="Student Admin" label="Student Admin"/>
								<s:option value="Teacher Admin" label="Teacher Admin"/>

						     </s:select>
					</div>
			    </div>
			    
			    <div class="form-group ">
					<div class="input-group">
						<s:input path="altmobilenumber" class="form-control" id="altmobilenumber"
							name="altmobilenumber" placeholder="Alternate Mobile Number" type="tel" />
					</div>
			    </div>

				<div class="form-group">
					
					<div class="input-group">
						<s:select path="classDetails.classid" name="InputClass" id="InputClass"
							type="text" >
							<c:forEach var="classd" items="${ClassDetails}">
								<s:option value="${classd.classid}" label="${classd.classname}" />
							</c:forEach>

						</s:select>
					</div>
				</div>

				<input type="submit" name="submit" id="submit" value="Submit User Data"
									class="btn btn-info pull-right"/>


				<!-- 				<div class="col-lg-6"> -->

				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="InputFirstName">First Name</label> -->
				<!-- 						<div class="input-group"> -->
				<%-- 							<s:input type="text" path="firstname" class="form-control" name="InputFirstName" --%>
				<%-- 								id="InputFirstName" placeholder="Enter First Name" required=""/> <span --%>
				<%-- 								class="input-group-addon"><span --%>
				<%-- 								class="glyphicon glyphicon-asterisk"></span></span> --%>
				<!-- 						</div> -->
				<!-- 					</div> -->

				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="InputLastName">Last Name</label> -->
				<!-- 						<div class="input-group"> -->
				<%-- 							<s:input type="text" path="lastname" class="form-control" name="InputFirstName" --%>
				<%-- 								id="InputLastName" placeholder="Enter Last Name" required=""/> <span --%>
				<%-- 								class="input-group-addon"><span --%>
				<%-- 								class="glyphicon glyphicon-asterisk"></span></span> --%>
				<!-- 						</div> -->
				<!-- 					</div> -->

				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="InputAdress">Address</label> -->
				<!-- 						<div class="input-group"> -->
				<%-- 							<s:input type="text" path="address" class="form-control" name="InputAddress" --%>
				<%-- 								id="InputAddress" placeholder="Enter Address" required=""/> <span --%>
				<%-- 								class="input-group-addon"><span --%>
				<%-- 								class="glyphicon glyphicon-asterisk"></span></span> --%>
				<!-- 						</div> -->
				<!-- 					</div> -->

				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="mobilenumber">Mobile Number</label> -->
				<!-- 						<div class="input-group"> -->
				<%-- 							<s:input type="text" path="mobilenumber" class="form-control" name="mobilenumber" --%>
				<%-- 								id="mobilenumber" placeholder="9999999999" required=""/> <span --%>
				<%-- 								class="input-group-addon"><span --%>
				<%-- 								class="glyphicon glyphicon-asterisk"></span></span> --%>
				<!-- 						</div> -->
				<!-- 					</div> -->


				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="altmobilenumber">Alternate Mobile Number</label> -->
				<!-- 						<div class="input-group"> -->
				<%-- 							<s:input type="text" path="altmobilenumber" class="form-control" name="altmobilenumber" --%>
				<%-- 								id="altmobilenumber" placeholder="9999999999" required=""/> <span --%>
				<%-- 								class="input-group-addon"><span --%>
				<%-- 								class="glyphicon glyphicon-asterisk"></span></span> --%>
				<!-- 						</div> -->
				<!-- 					</div> -->

				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="InputGender">Gender</label> -->
				<!-- 						<div class="input-group"> -->
				<%-- 							<s:input type="text" path="gender" class="form-control" name="InputGender" --%>
				<%-- 								id="InputGender" placeholder="Enter Gender" required=""/> <span --%>
				<%-- 								class="input-group-addon"><span --%>
				<%-- 								class="glyphicon glyphicon-asterisk"></span></span> --%>
				<!-- 						</div> -->
				<!-- 					</div> -->



				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="InputEmail">Email</label> -->
				<!-- 						<div class="input-group"> -->
				<%-- 							<s:input type="text" path="email" class="form-control" name="InputEmail" --%>
				<%-- 								id="InputEmail" placeholder="Enter Email" required=""/> <span --%>
				<%-- 								class="input-group-addon"><span --%>
				<%-- 								class="glyphicon glyphicon-asterisk"></span></span> --%>
				<!-- 						</div> -->
				<!-- 					</div> -->



				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="InputClass">Class</label> -->
				<!-- 						<div class="input-group" > -->
				<%-- 							<s:select path="ClassDetails" name="InputClass" id="InputClass" type="text"> --%>
				<%-- 							     <c:forEach var="classd" items="${ClassDetails}"> --%>
				<%--                                     <s:option value="${classd.classid}" label="${classd.classname}" /> --%>
				<%--                                   </c:forEach> --%>

				<%-- 				            </s:select> --%>
				<!-- 						</div> -->
				<!-- 					</div> -->

				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="InputFathersName">Father's Name</label> -->
				<!-- 						<div class="input-group"> -->
				<%-- 							<s:input type="text" path="fathersname" class="form-control" name="InputFathersName" --%>
				<%-- 								id="InputFathersName" placeholder="Enter Father's Name" required=""/> <span --%>
				<%-- 								class="input-group-addon"><span --%>
				<%-- 								class="glyphicon glyphicon-asterisk"></span></span> --%>
				<!-- 						</div> -->
				<!-- 					</div> -->

				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="InputMothersName">Mother's Name</label> -->
				<!-- 						<div class="input-group"> -->
				<%-- 							<s:input type="text" path="mothersname" class="form-control" name="InputMothersName" --%>
				<%-- 								id="InputMothersName" placeholder="Enter Mother's Name" required=""/> <span --%>
				<%-- 								class="input-group-addon"><span --%>
				<%-- 								class="glyphicon glyphicon-asterisk"></span></span> --%>
				<!-- 						</div> -->
				<!-- 					</div> -->

				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="InputRole">Role</label> -->
				<!-- 						<div class="input-group"> -->
				<%-- 							<s:input type="text" path="userrole" class="form-control" name="InputRole" --%>
				<%-- 								id="InputRole" placeholder="Enter category" required=""/> <span --%>
				<%-- 								class="input-group-addon"><span --%>
				<%-- 								class="glyphicon glyphicon-asterisk"></span></span> --%>
				<!-- 						</div> -->
				<!-- 					</div> -->

				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="InputDOB">Date of Birth</label> -->
				<!-- 						<div class="input-group"> -->
				<%-- 							<s:input type="text" path="dateofbirth" class="form-control" name="InputDOB" --%>
				<%-- 								id="InputDOB" placeholder="Enter DOB" required=""/> <span --%>
				<%-- 								class="input-group-addon"><span --%>
				<%-- 								class="glyphicon glyphicon-asterisk"></span></span> --%>
				<!-- 						</div> -->
				<!-- 					</div> -->





				<!-- 					<input type="submit" name="submit" id="submit" value="Submit User Data" -->
				<!-- 						class="btn btn-info pull-right"> -->
				<!-- 				</div> -->
			</s:form>
		</div>
	</div>


<%-- 	<div class="panel panel-primary"> --%>
<%-- 		<div class="panel-heading"> --%>
<%-- 			<h3 class="panel-title">Bulk Upload</h3> --%>
<%-- 			<span class="pull-right clickable"><i --%>
<%-- 				class="glyphicon glyphicon-chevron-up"></i></span> --%>
<%-- 		</div> --%>
<%-- 		<div class="panel-body"> --%>
<%-- 			<form method="post" enctype="multipart/form-data"> --%>
<%-- 				<input type="file" id="files" name="files" multiple="multiple" /> --%>
<%-- 				<p style="text-align: right; margin-top: 20px;"> --%>
<%-- 					<input type="submit" value="Upload Student Details" --%>
<%-- 						class="btn btn-lg btn-primary" /> --%>
<%-- 				</p> --%>
<%-- 			</form> --%>
<%-- 		</div> --%>
<%-- 	</div> --%>


	<script type="text/javascript"
		src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>

	<script type="text/javascript">
    jQuery(function ($) {
        $("#files").shieldUpload();
    });
</script>

	<script type="text/javascript">
$(document).on('click', '.panel-heading span.clickable', function(e){
    var $this = $(this);
	if(!$this.hasClass('panel-collapsed')) {
		$this.parents('.panel').find('.panel-body').slideUp();
		$this.addClass('panel-collapsed');
		$this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
	} else {
		$this.parents('.panel').find('.panel-body').slideDown();
		$this.removeClass('panel-collapsed');
		$this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
	}
})</script>
</body>
</html>