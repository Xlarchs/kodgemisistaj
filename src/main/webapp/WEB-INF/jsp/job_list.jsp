<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%-- imports the core tags from JSTL, prefix "c"--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%-- imports function tags from JSTL, prefix "fn"--%>


    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Job List</title>
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
</head>
<body>
 <jsp:include page="menu.jsp"/>

 <div class="container">
  <h2>Job List</h2>
  <table class="table table-striped">
   <thead>
    <th scope="row">#ID</th>
    <th scope="row">Job Title</th>
    <th scope="row">Job Description</th>
    <th scope="row">Number Of People To Hire</th>
    <th scope="row">Update</th>
    <th scope="row">Delete</th>
    
   </thead>
   <tbody>
    <c:forEach items="${jobListAdmin }" var="job"  >
     <tr>
      <td>${job.id }</td>
      <td>${job.title }</td>
        <c:set var="shortDesc" value="${fn:substring(job.description, 0, 40)}" /> 
       <td>${shortDesc}</td> 
 		<td>${job.numberOfPeopleToHire }</td> 
      
      <td>
       <spring:url value="/admin/updateJob/${job.id }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/admin/deleteJob/${job.id }" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
      </td>
           </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/admin/addJob" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >Add New Job </a>
 </div>
</body>
</html>
