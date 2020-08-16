<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>moamoa_pet</title>
</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	<section class="site-section">
		<div class="searchBox">
		<div class="input-group mb-3">
			<input type="text"
				class="form-control border-secondary bg-transparent"
				placeholder="동물 이름을 입력하세요" aria-label="Search"
				aria-describedby="button-addon2">
			<div class="input-group-append">
				<button class="btn btn-primary text-white" type="button"
					id="button-addon2">Send</button>
			</div>
		</div>
	</div>

		<div class="container">
			<div class="row">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>이름 🐱</th>
							<th>마리 수 🐶</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="pets" items="${pets}">
							<tr>
								<td width=200>${pets.petName}</td>
								<td width=200>${pets.population}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</section>
 	<div class="pagination-row" style="text-align: center;">
		<ul class="custom-pagination list-unstyled">
		<c:set var="start" value="${Math.floor(petList.number / 10) * 10 + 1}"/>
		<c:set var="last" value="${start + 9 < petList.totalPages ? start + 9 : petList.totalPages}"/>
			<li>
	    	<a href="${pageContext.request.contextPath}/kChart?page=1" aria-label="First">
	        	<span aria-hidden="true">First</span>
	    	</a>
			</li>
			<li ${petList.first == true ? 'class=disabled' : ''}>
    			<c:if test="${petList.first}">
					<a href="#"><span aria-hidden="true">&lt;</span></a>
				</c:if>
				<c:if test="${!petList.first}">
					<a href="${pageContext.request.contextPath}/kChart?page=${petList.number}">
						<span aria-hidden="true">&lt;</span>
    				</a>
				</c:if>
			</li>
			<c:forEach begin="${start}" end="${last}" var="page">
				<li ${page == petList.number + 1 ? 'class=active' : ''}>
					<a href="${pageContext.request.contextPath}/kChart?page=${page}">${page}</a>
				</li>
			</c:forEach>
			<li ${petList.last == true ? 'class=disabled' : ''}>
    			<c:if test="${petList.last}">
					<a href="#"><span aria-hidden="true">&gt;</span></a>
				</c:if>
				<c:if test="${!petList.last}">
					<a href="${pageContext.request.contextPath}/kChart?page=${petList.number + 2}">
						<span aria-hidden="true">&gt;</span>
    				</a>
				</c:if>
			</li>
			<li>
	    	<a href="${pageContext.request.contextPath}/kChart?page=${petList.totalPages}" aria-label="Last">
	        	<span aria-hidden="true">Last</span>
	    	</a>
			</li>

		</ul>
	</div>
</body>
</html>