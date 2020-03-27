<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
  

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Job Details</title>
 <link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
 
 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head><meta charset="ISO-8859-1">
<title>Job Detail</title>
</head>
<body>

	<jsp:include page="menu.jsp"/>
	<ul class="list-group">
  <li class="list-group-item"><h3>Job Title: <c:out value="${detailJob.title}" /></h3></li>
  <li class="list-group-item"><h3>Job Description:  <c:out value="${detailJob.description}" /> </h3></li>
  <li class="list-group-item"><h3>Number Of People To Hire:  <c:out value="${detailJob.numberOfPeopleToHire}" /> </h3></li>
</ul>
<ul>
</ul>
<div class="container">
  <h2>Job Application Form</h2>
        <button onclick="window.location.href = '/form/newApply';">Click Here For Apply This Job</button>
  
  
  

	

</body>
</html>
