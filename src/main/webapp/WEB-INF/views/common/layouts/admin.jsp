<%@ include file="/WEB-INF/views/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- Master layout --%>
<html>
	<head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
           <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="<c:url value='/assets/admin/css/styles.css'/>" rel="stylesheet" />
      
        <dec:head />
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
		<title> <dec:title default="Quản trị"/> </title>		
	</head>
	<body class="sb-nav-fixed">
	 	<%-- Header start--%>
	 	<%@include file="/WEB-INF/views/common/layouts/admin/header.jsp" %>
	    <%-- Header end--%>
	     
	     <div id="layoutSidenav">
	     
		    <%-- sidebar start--%>
		 	<%@include file="/WEB-INF/views/common/layouts/admin/sidebar.jsp" %>
		    <%-- sidebar end--%>
		    
		    <div id="layoutSidenav_content">	
			     <%--Body start--%>
			     <dec:body />
			     <%--Body end--%>
			     
			     <%-- footer start--%>
			 	<%@include file="/WEB-INF/views/common/layouts/admin/footer.jsp" %>
			    <%-- footer end--%>
		    </div>
		    
	    </div>
	    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
	    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
  		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
		<script src="<c:url value='/assets/admin/js/scripts.js'/>"></script>
		<dec:getProperty property="page.private"/>
		<dec:getProperty property="page.script"/>
	</body>
</html>