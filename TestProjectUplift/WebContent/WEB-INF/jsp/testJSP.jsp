<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE>

<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	
	<title></title>
	
	<!-- JS -->
	<script src="../js/jquery.js"></script>
	<script src="../js/bootstrap.min.3.5.js"></script>
	<script src="../js/APIControl.js"></script>
	
	<!-- CSS -->
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
	
</head>
	
<body>
	
	<div class="row" style="width: auto; padding-top: 10px; padding-bottom: 10px; border-bottom: 1px solid #CCC; background: #eaeaea;">
		<div class="">
			
			<div class="col-sm-3 col-md-3 col-lg-3"></div>
			
			<div class="col-ms-6 col-md-6 col-lg-6">
				<h4 class="" style="text-align: center; margin: 0px; margin-top: 10px;">Test Project</h4>
			</div>
			
			<div class="col-sm-3 col-md-3 col-lg-3"></div>
			
		</div>
	</div>
	
	<div class="common_loader" id="common_loader" style="height: 100%; position: fixed;" onchange="">
		<span id="loader-ico" class="common_loader_ico"></span>
	</div>
	
	<div id="notificaciones" class=""></div>
	
	<div class="">
	<button class="btn btn-info" onclick="getData();">GET</button>
	<button class="btn btn-info" onclick="setData();">SET</button>
	<button class="btn btn-info" onclick="deleteData();">DEL</button>
	
	<table class="table table-stripped table-condensed table-hover">
		<thead>
			<tr>
				<th>Title</th>
				<th>Body</th>
				<th>Actions</th>
			</tr>
		</thead>
		
		<tbody class="outputData">
		
		</tbody>
	</table>
		
	</div>
	
	<script type="text/javascript">
		$(document).ready(function (){
			$('#common_loader').hide();
		});
	</script>
</body>
</html>