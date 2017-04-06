
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- <link -->
<%-- 	href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css" --%>
<!-- 	rel="stylesheet"> -->
<link href="${pageContext.servletContext.contextPath}/css/customstyle.css"
	rel="stylesheet">
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/font-awesome.min.css">

</head>
<body>
  <div class="container text-left">
    <div class="row">
        <div class="col-lg-12">
            
            <p> 
                <button data-toggle="modal" data-target="#newsModal" class="btn btn-squared-default btn-primary">
                    <i class="fa fa-tasks fa-2x"></i>
                    <br />
                    Create<br/>
                     News
                </button>
                
                <button data-toggle="modal" data-target="#eventModal" class="btn btn-squared-default btn-primary">
                    <i class="fa fa-calendar fa-2x"></i>
                    <br />
                    Create<br/>
                     Event
                </button>
                <button data-toggle="modal" data-target="#announcementModal" class="btn btn-squared-default btn-primary">
                    <i class="fa fa-bullhorn fa-2x"></i>
                    <br />
                    Create <br/>
                    Announcement
                </button>
                <button data-toggle="modal" data-target="#myItemsModal" class="btn btn-squared-default btn-primary">
                    <i class="fa fa-folder fa-2x"></i>
                    <br />
                    My <br/>
                    Items
                </button>

            </p>
        </div>
    </div>     
</div>

<div class="modal fade alert" id="newsModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" id="lineModalLabel"><i class="fa fa-tasks fa-1x"></i> Create News</h4>
        </div>
        <div class="modal-body">
            <s:form commandName="newsEventData" action="submitNewsEventData" method="post">
              <div class="form-group">
                <label for="news-heading">News Heading</label>
                <s:input path="title" type="text" class="form-control" id="news-heading" placeholder="Enter heading"/>
              </div>
              
              <div class="form-group">
                <label for="news-detail">News Detail</label>
                <s:input path="content" type="text" class="form-control" id="news-detail" placeholder="Enter News Body here"/>
              </div>
              
              <s:input path="userid" type="hidden" value='${UserDetails.userid}'/>

              <button type="submit" class="btn btn-primary center-block">Upload News</button>
            </s:form>
        </div>
    </div>
  </div>
</div>


<!-- Event Modal -->

<div class="modal fade alert" id="eventModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" id="lineModalLabel"><i class="fa fa-calendar fa-1x"></i> Create Event</h4>
        </div>
        <div class="modal-body">
            <s:form commandName="newsEventData" action="submitNewsEventData" method="post">
              <div class="form-group">
                <label for="news-heading">Event Name</label>
                <s:input path="title" type="text" class="form-control" id="news-heading" placeholder="Enter event's name"/>
              </div>
              
              <div class="form-group">
                <label for="event-detail">Event Detail</label>
                <s:input path="content" type="text" class="form-control" id="event-detail" placeholder="Enter event's detail here"/>
              </div>
              
              <div class="form-group">
                <label for="event-startdate">Start Date</label>
                <s:input path="content" type="text" class="form-control" id="event-date" placeholder="Enter Start Date here"/>
              </div>
              
              <div class="form-group">
                <label for="event-enddate">End Date</label>
                <s:input path="content" type="text" class="form-control" id="event-date" placeholder="Enter End Date here"/>
              </div>
              
              <div class="form-group">
                <label for="event-eligibility">Eligibility Criteria</label>
                <s:input path="content" type="text" class="form-control" id="event-eligibility" placeholder="Enter eligibility criteria here"/>
              </div>
              
              
              
              <s:input path="userid" type="hidden" value='${UserDetails.userid}'/>

              <button type="submit" class="btn btn-primary center-block">Upload News</button>
            </s:form>
        </div>
    </div>
  </div>
</div>


<!-- Announcement Modal -->

<div class="modal fade alert" id="announcementModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" id="lineModalLabel"><i class="fa fa-tasks fa-1x"></i> Create News</h4>
        </div>
        <div class="modal-body">
            <s:form commandName="newsEventData" action="submitNewsEventData" method="post">
              <div class="form-group">
                <label for="news-heading">News Heading</label>
                <s:input path="title" type="text" class="form-control" id="news-heading" placeholder="Enter heading"/>
              </div>
              
              <div class="form-group">
                <label for="news-detail">News Detail</label>
                <s:input path="content" type="text" class="form-control" id="news-detail" placeholder="Enter News Body here"/>
              </div>
              
              <s:input path="userid" type="hidden" value='${UserDetails.userid}'/>

              <button type="submit" class="btn btn-primary center-block">Upload News</button>
            </s:form>
        </div>
    </div>
  </div>
</div>


<!-- MyItemsModal -->

<div class="modal fade alert" id="myItemsModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" id="lineModalLabel"><i class="fa fa-tasks fa-1x"></i> Create News</h4>
        </div>
        <div class="modal-body">
            <s:form commandName="newsEventData" action="submitNewsEventData" method="post">
              <div class="form-group">
                <label for="news-heading">News Heading</label>
                <s:input path="title" type="text" class="form-control" id="news-heading" placeholder="Enter heading"/>
              </div>
              
              <div class="form-group">
                <label for="news-detail">News Detail</label>
                <s:input path="content" type="text" class="form-control" id="news-detail" placeholder="Enter News Body here"/>
              </div>
              
              <s:input path="userid" type="hidden" value='${UserDetails.userid}'/>

              <button type="submit" class="btn btn-primary center-block">Upload News</button>
            </s:form>
        </div>
    </div>
  </div>
</div>



</html>