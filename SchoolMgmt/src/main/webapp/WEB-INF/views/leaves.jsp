<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>


<!-- Inline CSS based on choices in "Settings" tab -->
<style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form{font-family: Arial, Helvetica, sans-serif; color: black}.bootstrap-iso form button, .bootstrap-iso form button:hover{color: #ffffff !important;}.bootstrap-iso .form-control:focus { border-color: #f48f08;  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(244, 143, 8, 0.6); box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(244, 143, 8, 0.6);} .asteriskField{color: red;}</style>


<div class="panel panel-default">
		<div class="panel-heading main-color-bg">
			<h2 class="panel-title">Leaves and Calendar</h2>
		</div>
<div class="panel-body">
<!-- HTML Form (wrapped in a .bootstrap-iso div) -->
<div class="bootstrap-iso">
 <div class="container-fluid">
  <div class="row">
   <div class="col-md-6 col-sm-6 col-xs-12">
    <s:form commandName="userLeaveData" action="leaves" method="post">
     <div class="form-group ">
      <label class="control-label requiredField" for="fromdate">
       From Date
       <span class="asteriskField">
        *
       </span>
      </label>
      <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-calendar">
        </i>
       </div>
     <s:input path="userid" type="hidden" value='${userId}'/> 
       <s:input path="fromdate" class="form-control" id="fromdate" name="fromdate" placeholder="DD/MM/YYYY" type="date"/>
      </div>
      <span class="help-block" id="hint_fromdate">
       Enter Start Date
      </span>
     </div>
     <div class="form-group ">
      <label class="control-label " for="todate">
       To Date
      </label>
      <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-calendar">
        </i>
       </div>
       <s:input path="todate" class="form-control" id="todate" name="todate" placeholder="DD/MM/YYYY" type="date"/>
      </div>
      <span class="help-block" id="hint_todate">
       Enter End Date
      </span>
     </div>
     <div class="form-group ">
      <label class="control-label requiredField" for="reasontext">
       Reason for Leave
       <span class="asteriskField">
        *
       </span>
      </label>
      <s:input path="reason" class="form-control" cols="40" id="reasontext" name="reasontext" rows="10" type=""/>
     </div>
     <div class="form-group">
      <div>
       <button class="btn btn-warning " name="submit" type="submit" id="submitbtn">
        Submit
       </button>
       
      </div>
     </div>
    </s:form>
   </div>
  </div>
 </div>
</div>
</div>
</div>


<!-- Extra JavaScript/CSS added manually in "Settings" tab -->
<!-- Include jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>



<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
$.noConflict();
jQuery( document ).ready(function( $ ){
        var date_input=$('input[name="fromdate"]'); 
        var container=$('#bootstrap-iso form').length>0 ? $('#bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'dd/mm/yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
        var date_input=$('input[name="todate"]'); 
        var container=$('#bootstrap-iso form').length>0 ? $('#bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'dd/mm/yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        })

    })
</script>

<script src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>
<script>
$(function() {
    $("#submitbtn").click( function(){
            if ("${Status}" == "true") {
                alert("Leave Submitted"); //checked
            }
            else {
                alert("Try again"); 
            }}
     );
})
</script>
</html>