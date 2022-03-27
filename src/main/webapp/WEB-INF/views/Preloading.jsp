<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loading...</title>
  <link rel="stylesheet" href="<c:url value='/resources/assets/css/preloading.css'/>"/>
</head>
<body>
	<div class="sbl-circ-ripple"></div>
	<script>
 	 setTimeout(function() {
      document.location = "/QLDVSpringMVC/Login";
  }, 1000); // <-- this is the delay in milliseconds
</script>
</body>
</html>
<%-- <c:redirect url="/Login"/> --%>