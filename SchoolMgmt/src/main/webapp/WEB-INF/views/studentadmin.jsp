
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
<!-- <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" /> -->
<link rel="stylesheet" type="text/css" href="http://www.prepbootstrap.com/Content/shieldui-lite/dist/css/light/all.min.css" />

<script src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/js/bootstrap.min.js"></script>

<body>
<!--   <div class="container text-left"> -->
    
        <div class="col-md-12">
            
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
<!-- </div> -->

<div class="modal fade alert" id="newsModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" id="lineModalLabel"><i class="fa fa-tasks fa-1x"></i> Create News</h4>
        </div>
        <div class="modal-body">
            <s:form commandName="newsEventData" action="submitNewsData" method="post">
              <div class="form-group">
                <label for="news-heading">News Heading</label>
                <s:input path="title" type="text" class="form-control" id="news-heading" placeholder="Enter heading"/>
              </div>
              
              <div class="form-group">
                <label for="news-detail">News Detail</label>
                <s:input path="content" type="text" class="form-control" id="news-detail" placeholder="Enter News Body here"/>
              </div>
              
              <s:input path="userid" type="hidden" value='${UserDetails.userid}'/>

              <button type="submit" class="btn btn-primary center-block">Submit News</button>
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
            <s:form commandName="newsEventData" action="submitEventData" method="post">
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
                <s:input class="form-control" path="fromdate" id="eventstartdate" name="date" placeholder="DD/MM/YYY" type="text"/>
              </div>
              
              <div class="form-group">
                <label for="event-enddate">End Date</label>
                <s:input class="form-control" path="todate" id="eventenddate" name="date" placeholder="DD/MM/YYY" type="text"/>
              </div>
              
              <div class="form-group">
                <label for="event-eligibility">Eligibility Criteria</label>
                <s:input path="content" type="text" class="form-control" id="event-eligibility" placeholder="Enter eligibility criteria here"/>
              </div>
              
              
              
              <s:input path="userid" type="hidden" value='${UserDetails.userid}'/>

              <button type="submit" class="btn btn-primary center-block">Submit Event</button>
            </s:form>
        </div>
    </div>
  </div>
 <script type="text/javascript">
 $(function(){           
     if (!Modernizr.inputtypes.date) {
         $('#eventstartdate').datepicker({
               dateFormat : 'yy-mm-dd'
             }
          );
     }
 });
</script>
</div>


<!-- Announcement Modal -->

<div class="modal fade alert" id="announcementModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" id="lineModalLabel"><i class="fa fa-bullhorn fa-1x"></i> Create Announcement</h4>
        </div>
        <div class="modal-body">
            <s:form commandName="newsEventData" action="submitAnnouncementData" method="post">
              <div class="form-group">
                <label for="news-heading">Announcement Title</label>
                <s:input path="title" type="text" class="form-control" id="news-heading" placeholder="Enter announcement title here"/>
              </div>
              
              <div class="form-group">
                <label for="news-detail">Announcement Detail</label>
                <s:input path="content" type="text" class="form-control" id="news-detail" placeholder="Enter announcement details here"/>
              </div>
              
              <s:input path="userid" type="hidden" value='${UserDetails.userid}'/>

              <button type="submit" class="btn btn-primary center-block">Submit Announcement</button>
            </s:form>
        </div>
    </div>
  </div>
</div>


<!-- MyItemsModal -->

	<div class="modal fade alert" id="myItemsModal" tabindex="-1"
		role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
<!-- 		<div class="modal-dialog"> -->
<!-- 			<div class="modal-content"> -->
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
						    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span><span class="sr-only">Close</span></button>
							<h5 class="text-center">
								My Items
							</h5>
						</div>
						<div class="panel-body text-center">
							<div id="grid"></div>
						</div>
					</div>
				</div>
<!-- 			</div> -->
<!-- 		</div> -->
		

<script type="text/javascript" src="http://www.prepbootstrap.com/Content/shieldui-lite/dist/js/shieldui-lite-all.min.js"></script>

<script type="text/javascript" src="http://www.prepbootstrap.com/Content/data/shortGridData.js"></script>	
		<script type="text/javascript">
    $(document).ready(function () {
        $("#grid").shieldGrid({
            dataSource: {
                data: gridData,
                schema: {
                    fields: {
                        id: { path: "${NewsEventData.newsid}", type: Number },
                        title: { path: "${NewsEventData.title}", type: String },
                        content: { path: "${NewsEventData.content}", type: String },
                        fromdate: { path: "${NewsEventData.fromdate}", type: Date},
                        todate: { path: "${NewsEventData.todate}", type: Date },
                        eligibility: { path: "eligibility", type: String },
                        eligibility: { path: "category", type: String },
                        
                    }
                }
            },
            sorting: {
                multiple: true
            },
            rowHover: false,
            columns: [
                { field: "id", title: "Item Id", width: "120px" },
                { field: "title", title: "Title", width: "80px" },
                { field: "content", title: "Content Body" },
                { field: "fromdate", title: "Start Date", format: "{0:MM/dd/yyyy}", width: "120px" },
                { field: "todate", title: "End Date" },
                { field: "eligibility", title: "Eligibility", width: "250px" },
                { field: "category", title: "Item categoryr", width: "120px" },                
                {
                    width: 150,
                    title: "Update/Delete Column",
                    buttons: [
                        { commandName: "edit", caption: "Edit" },
                        { commandName: "delete", caption: "Delete" }
                    ]
                }
            ],
            editing: {
                enabled: true,
                mode: "popup",
                confirmation: {
                    "delete": {
                        enabled: true,
                        template: function (item) {
                            return "Delete row with ID = " + item.id
                        }
                    }
                }
            }            
        });

       
    });
</script>
	</div>


</body>
<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
// $.noConflict();
// jQuery( document ).ready(function( $ ){
//         var date_input=$('input[name="date"]'); 
//         var container=$('#bootstrap-iso form').length>0 ? $('#bootstrap-iso form').parent() : "body";
//         date_input.datepicker({
//             format: 'dd/mm/yyyy',
//             container: container,
//             todayHighlight: true,
//             autoclose: true,
//         })


//     })
<%-- </script> --%>

</html>