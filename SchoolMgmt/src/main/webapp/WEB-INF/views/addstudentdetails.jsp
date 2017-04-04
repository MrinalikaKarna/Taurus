
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


	<!-- 			<div class="container"> -->
	<!-- 				<div class="col-md-1"></div> -->
	<!-- 				<div class="col-md-4"> -->
	<!-- 					<form method="post" enctype="multipart/form-data"> -->
	<!-- 						<input type="file" id="files" name="files" multiple="multiple" /> -->
	<!-- 						<p style="text-align: right; margin-top: 20px;"> -->
	<!-- 							<input type="submit" value="Upload Student Details" -->
	<!-- 								class="btn btn-lg btn-primary" /> -->
	<!-- 						</p> -->
	<!-- 					</form> -->
	<!-- 				</div> -->
	<!-- <!-- 				<div class="col-md-6"></div> -->
	<!-- 			</div> -->


	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">Add through Form</h3>
			<span class="pull-right clickable"><i
				class="glyphicon glyphicon-chevron-up"></i></span>
		</div>
		<div class="panel-body">
			<form role="form">
				<div class="col-lg-6">

					<div class="form-group">
						<label for="InputName">Enter Name</label>
						<div class="input-group">
							<input type="text" class="form-control" name="InputName"
								id="InputName" placeholder="Enter Name" required> <span
								class="input-group-addon"><span
								class="glyphicon glyphicon-asterisk"></span></span>
						</div>
					</div>
					<div class="form-group">
						<label for="InputEmail">Enter Email</label>
						<div class="input-group">
							<input type="email" class="form-control" id="InputEmailFirst"
								name="InputEmail" placeholder="Enter Email" required> <span
								class="input-group-addon"><span
								class="glyphicon glyphicon-asterisk"></span></span>
						</div>
					</div>
					<div class="form-group">
						<label for="InputEmail">Confirm Email</label>
						<div class="input-group">
							<input type="email" class="form-control" id="InputEmailSecond"
								name="InputEmail" placeholder="Confirm Email" required>
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-asterisk"></span></span>
						</div>
					</div>
					<div class="form-group">
						<label for="InputMessage">Enter Message</label>
						<div class="input-group">
							<textarea name="InputMessage" id="InputMessage"
								class="form-control" rows="5" required></textarea>
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-asterisk"></span></span>
						</div>
					</div>
					<input type="submit" name="submit" id="submit" value="Submit"
						class="btn btn-info pull-right">
				</div>
			</form>
		</div>
	</div>


	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">Bulk Upload</h3>
			<span class="pull-right clickable"><i
				class="glyphicon glyphicon-chevron-up"></i></span>
		</div>
		<div class="panel-body">
			<form method="post" enctype="multipart/form-data">
				<input type="file" id="files" name="files" multiple="multiple" />
				<p style="text-align: right; margin-top: 20px;">
					<input type="submit" value="Upload Student Details"
						class="btn btn-lg btn-primary" />
				</p>
			</form>
		</div>
	</div>


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