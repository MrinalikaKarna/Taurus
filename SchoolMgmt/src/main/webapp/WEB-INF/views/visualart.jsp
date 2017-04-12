<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link
	href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.servletContext.contextPath}/css/customstyle.css"
	rel="stylesheet">
<link
	
	rel="stylesheet">
    <script src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/bootstrap.min.js"></script>
   
</head>
<body>
<div class="container">
    <div class="row">
    <div class="col-md-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="text-center">Visual Art Compilation <button data-toggle="modal" data-target="#visualArtUploadModal" class="btn btn-primary pull-right">
                    <span class="glyphicon glyphicon-cloud-upload " aria-hidden="true"></span></button></h4>
        </div>
        
        
    </div>

          
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="well">
                    <img class="thumbnail img-responsive" alt="Bootstrap template" src= "data:image/jpeg;base64,${ImageList}" width="200" height="150" />
                    <h5>${VisualData[0].userDetails.firstname}</h5>
<!--                     <h5>6 A</h5> -->
                </div>
            </div>
            <div class="col-md-4">
                <div class="well">
                    <img class="thumbnail img-responsive" alt="Bootstrap template" src="http://www.prepbootstrap.com/Content/images/shared/houses/h8.jpg" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="well">
                    <img class="thumbnail img-responsive" alt="Bootstrap template" src="http://www.prepbootstrap.com/Content/images/shared/houses/h4.jpg" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="well">
                    <img class="thumbnail img-responsive" alt="Bootstrap template" src="http://www.prepbootstrap.com/Content/images/shared/houses/h7.jpg" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="well">
                    <img class="thumbnail img-responsive" alt="Bootstrap template" src="http://www.prepbootstrap.com/Content/images/shared/houses/h3.jpg" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="well">
                    <img class="thumbnail img-responsive" alt="Bootstrap template" src="http://www.prepbootstrap.com/Content/images/shared/houses/h6.jpg" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="well">
                    <img class="thumbnail img-responsive" alt="Bootstrap template" src="http://www.prepbootstrap.com/Content/images/shared/houses/h1.jpg" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="well">
                    <img class="thumbnail img-responsive" alt="Bootstrap template" src="http://www.prepbootstrap.com/Content/images/shared/houses/h2.jpg" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="well">
                    <img class="thumbnail img-responsive" alt="Bootstrap template" src="http://www.prepbootstrap.com/Content/images/shared/houses/h5.jpg" />
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade alert" id="visualArtUploadModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" id="lineModalLabel"><i class="fa fa-tasks fa-1x"></i> Upload your File</h4>
        </div>
        <div class="modal-body">
            <div align="center">
             <form method="post" action="visualart/doUpload" enctype="multipart/form-data">
                <table border="0">
                <tr>
                    <td>Pick file #1:</td>
                    <td><input type="file" name="fileUpload" size="50" /></td>
                </tr>
                
                <tr>
                    <td>Pick file #2:</td>
                    <td><input type="file" name="fileUpload" size="50" /></td>
                </tr>
                 
                <tr>
                <td> ${UserDetails.userid}
                <input name="userid" type="hidden" value='${UserDetails.userid}'/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Upload" /></td>
                </tr>
            </table>
        </form>
        </div>
        </div>
    </div>
  </div>
</div>

<script>


		
		
</script>
</body>
</html>