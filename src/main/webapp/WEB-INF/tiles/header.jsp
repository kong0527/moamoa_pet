<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header class="site-navbar py-4 bg-white js-sticky-header site-navbar-target" role="banner">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-11 col-xl-2">
				<h1 class="mb-0 site-logo">
					<a href="${pageContext.request.contextPath}/" class="text-black h2 mb-0">moamoa<span class="text-primary">.</span>
					</a>
				</h1>
			</div>
			<div class="col-12 col-md-10 d-none d-xl-block">
				<nav class="site-navigation position-relative text-right"
					role="navigation">

					<ul
						class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
						<li><a href="${pageContext.request.contextPath}/kChart" class="nav-link">Domestic</a></li>
						<li><a href="${pageContext.request.contextPath}/eChart" class="nav-link">Overseas</a></li>
						<li><a href="${pageContext.request.contextPath}/game">Game</a></li>
						<li><a href="${pageContext.request.contextPath}/generator">Generator</a>
						</li>
					</ul>
				</nav>
			</div>
		  	<div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3"
				style="position: relative; top: 3px;">
				<ul class="nav justify-content-between">
					<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown">
						<span class="icon-menu h3">
						</span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/kChart" class="nav-link"><span style="color:black">Domestic</span></a></li>
						<li><a href="${pageContext.request.contextPath}/eChart" class="nav-link"><span style="color:black">Overseas</span></a></li>
						<li><a href="${pageContext.request.contextPath}/game" class="nav-link"><span style="color:black">Game</span></a></li>
						<li><a href="${pageContext.request.contextPath}/generator" class="nav-link"><span style="color:black">Generator</span></a></li>
					</ul>
				</ul>
			</div>
		</div>
	</div>
</header>