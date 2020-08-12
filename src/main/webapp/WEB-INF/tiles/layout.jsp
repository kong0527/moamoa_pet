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
	href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources//jquery.fancybox.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/aos.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<script src="<c:url value="/resources/js/jquery.min.js" />"></script>

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script
	src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery-ui.js" />"></script>
<script src="<c:url value="/resources/js/popper.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.stellar.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.countdown.min.js" />"></script>
<script
	src="<c:url value="/resources/js/bootstrap-datepicker.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.easing.1.3.js" />"></script>
<script src="<c:url value="/resources/js/aos.js" />"></script>
<script src="<c:url value="/resources/js/jquery.fancybox.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.sticky.js" />"></script>

<script src="<c:url value="/resources/js/typed.js" />"></script>
<script>
	var typed = new Typed('.typed-words', {
		strings : [ "Web Apps", " WordPress", " Mobile Apps" ],
		typeSpeed : 80,
		backSpeed : 80,
		backDelay : 4000,
		startDelay : 1000,
		loop : true,
		showCursor : true
	});
</script>

<script src="<c:url value="/resources/js/main.js" />"></script>
</head>
<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />
</body>
</html>