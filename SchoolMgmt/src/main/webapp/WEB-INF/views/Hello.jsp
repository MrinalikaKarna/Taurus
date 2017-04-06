<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello Page</title>
<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="${pageContext.servletContext.contextPath}/css/customcss.css"
	rel="stylesheet">
	
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/font-awesome.min.css">
	
    <script src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/scripts.js"></script>
</head>

<body>
<div class="row wrap">
    <div class="col-sm-3">
        <div class="row">
            <div class="col-xs-12" id="newsdiv">
<!--                 <h2>Side</h2> -->
<!--                 <div class="panel panel-default"> -->
<%--                     <div class="panel-heading"><h5>${NewsEventData[0].title}</h5></div> --%>
<!--                     <div class="panel-body"> -->
<%--                        ${NewsEventData[0].content}                   --%>
<!--                     </div> -->
<!--                     <div class="text-center"> -->
<%--                         <a href="#"><span class="glyphicon glyphicon-plus"></span> Full Story</a> --%>
<!--                     </div> -->
<!--                 </div> -->
<!--                 <hr /> -->
<!--                 <div class="panel panel-default"> -->
<%--                     <div class="panel-heading"><h5>${NewsEventData[1].title}</h5></h5></div> --%>
<!--                     <div class="panel-body"> -->
<%--                         ${NewsEventData[1].content} --%>
<!--                     </div> -->
<!--                     <div class="text-center"> -->
<%--                         <a href="#"><span class="glyphicon glyphicon-plus"></span> Full Story</a> --%>
<!--                     </div> -->
<!--                 </div> -->
<!--                 <hr /> -->

            </div>
        </div>
    </div>
    <div class="col-sm-9">
        <div class="row">
            <div class="col-xs-12">
                <h4>Article Title</h4>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
                    Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
                    dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
                    Aliquam in felis sit amet augue.
                </p>
                <div class="text-center">
                    <a href="#"><span class="glyphicon glyphicon-plus"></span> Full Story</a>
                    <a href="#"><span class="glyphicon glyphicon-comment"></span> 12 Comments</a>
                    <a href="#"><span class="glyphicon glyphicon-share"></span> 11 Shares</a>
                </div>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-xs-12">
                <h4>Article Title</h4>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
                    Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
                    dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
                    Aliquam in felis sit amet augue.
                </p>
                <div class="text-center">
                    <a href="#"><span class="glyphicon glyphicon-plus"></span> Full Story</a>
                    <a href="#"><span class="glyphicon glyphicon-comment"></span> 2 Comments</a>
                    <a href="#"><span class="glyphicon glyphicon-share"></span> 211 Shares</a>
                </div>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-xs-12">
                <h4>Article Title</h4>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
                    Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
                    dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
                    Aliquam in felis sit amet augue.
                </p>
                <div class="text-center">
                    <a href="#"><span class="glyphicon glyphicon-plus"></span> Full Story</a>
                    <a href="#"><span class="glyphicon glyphicon-comment"></span> 7 Comments</a>
                    <a href="#"><span class="glyphicon glyphicon-share"></span> 67 Shares</a>
                </div>
            </div>
        </div>
        <hr />
    </div>
</div>

<script type="text/javascript">
$(function() {
    <c:forEach items="${NewsEventData}"  var="myItem" >
    
    newdiv = '<div class="panel panel-default">' + '<div class="panel-heading">' + '<h5>' + '<i class="fa fa-tasks fa-1x">' + '</i>' +  '${myItem.title}' + '</h5>' 
	+ '</div>' + '<div class="panel-body">' + '${myItem.content}' + '</div>' +
	'<div class="text-center">' + '<a href="#">' + '<span class="glyphicon glyphicon-plus">' +
	'</span>' + 'Full Story' + '</a>' + '</div>' + '</div>';
	$("#newsdiv").append(newdiv);  
    </c:forEach>
    
})
</script>
	
</body>
</html>