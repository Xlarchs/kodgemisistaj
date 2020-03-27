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
 <title>Article List</title>
 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
 <jsp:include page="menu.jsp"/>

 <div class="container">
  <h2>Application List</h2>
  <table class="table table-striped">
   <thead>
    <th scope="row">#ID</th>
    <th scope="row">Name</th>
    <th scope="row">Email</th>
    <th scope="row">Phone</th>
    <th scope="row">Adress</th>
    <th scope="row">Thoughts on Job</th>
    <th scope="row">Details</th>
    
   </thead>
   <tbody>
    <c:forEach items="${applyListAdmin }" var="apply" >
     <tr>
       <td>${apply.id }</td>
      <td>${apply.name }</td>
      <td>${apply.email }</td>
      <td>${apply.phone }</td>
      <c:set var="shortAdress" value="${fn:substring(apply.adress, 0, 40)}" /> 
      <td>${shortAdress }...</td>
      
        <c:set var="shortApply" value="${fn:substring(apply.thoughts, 0, 40)}" /> 
       <td>${shortApply}...</td> 
    
     
      <td>
       <spring:url value="/form/${apply.id }" var="detailURL" />
       <a class="btn btn-primary" href="${detailURL }" role="button" >Details</a>
      </td>
      
     </tr>
    </c:forEach>
   </tbody>
  </table>

 </div>
</body>
</html>