<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
   href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700,900"
   rel="stylesheet">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/aos.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<%-- <link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/bootstrap.css"> --%>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/style.css">

<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<%-- <script src="${pageContext.request.contextPath}/resources/js/main.js"></script> --%>
</head>
<body>
   <tiles:insertAttribute name="header" />
   <tiles:insertAttribute name="body" />
   <tiles:insertAttribute name="footer" />
</body>
</html>