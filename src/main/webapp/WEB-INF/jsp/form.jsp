<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
  
<!DOCTYPE html>
<html>
<head>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Job Form</title>
 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp"/>
<div class="container">
  <spring:url value="/form/saveApply/" var="saveURL" />
  <h2>Job</h2>
  <form:form modelAttribute="applyForm" method="post" action="${saveURL }" cssClass="form" >
   <form:hidden path="id"/>
   <div class="form-group">
    <label>Name</label>
    <form:input path="name" cssClass="form-control" id="name" />
   </div>
   <div class="form-group">
    <label>Email</label>
   <form:input path="email" cssClass="form-control" id="email" />
   </div>
    <div class="form-group">
    <label>Phone</label>
    <form:input path="phone" cssClass="form-control" id="phone" />
   </div>
   <div class="form-group">
    <label>Adress</label>
    <form:input path="adress" cssClass="form-control" id="adress" />
   </div>
   <div class="form-group">
    <label>Thoughts</label>
    <form:input path="thoughts" cssClass="form-control" id="thoughts" />
   </div>
   <button type="submit" class="btn btn-primary">Save</button>
   
  </form:form>
  
 </div>
</body>
</html>