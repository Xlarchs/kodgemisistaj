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
 <title>Apply Detail</title>
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
<title>Apply Detail</title>
</head>
<body>

	<jsp:include page="menu.jsp"/>
	<ul class="list-group">
  <li class="list-group-item"><h3>Name: <c:out value="${detailApply.name}" /></h3></li>
    <li class="list-group-item"><h3>Email: <c:out value="${detailApply.email}" /></h3></li>
    <li class="list-group-item"><h3>Phone: <c:out value="${detailApply.phone}" /></h3></li>
    <li class="list-group-item"><h3>Adress: <c:out value="${detailApply.adress}" /></h3></li>
  <li class="list-group-item"><h3>Thoughts Of Job:  <c:out value="${detailApply.thoughts}" /> </h3></li>
</ul>


</body>
</html>
