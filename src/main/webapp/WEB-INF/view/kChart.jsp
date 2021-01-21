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
		<form action="/kChart/search" method="GET">
			<div class="searchBox">
				<div class="input-group mb-3">
					<input type="text" id="keyword" name="keyword"
						class="form-control border-secondary bg-transparent"
						placeholder="동물 이름을 입력하세요" aria-label="Search"
						aria-describedby="button-addon2">
					<div class="input-group-append">
						<button class="btn btn-primary text-white" type="submit"
							id="button-addon2">Send</button>
					</div>
				</div>
			</div>
		</form>

		<div class="container">
			<div class="row">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>순위 🐾</th>
							<th>이름 🐱</th>
							<th>마리 수 🐶</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="pets" items="${pets}">
							<tr>
							<!-- 순위별로 이모티콘 다르게 하기  -->
								<c:choose>
								<c:when test="${pets.rank == 1}">
									<td width=200>🥇${pets.rank}</td>
								</c:when>
								<c:when test="${pets.rank == 2}">
									<td width=200>🥈${pets.rank}</td>
								</c:when>
								<c:when test="${pets.rank == 3}">
									<td width=200>🥉${pets.rank}</td>
								</c:when>
								<c:otherwise>
									<td width=200>🌈${pets.rank}</td>
								</c:otherwise>
								</c:choose>
								<td width=200>${pets.petName}</td>
								<td width=200>${pets.population}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</section>
	<!-- 페이지 블록은 10개씩  -->
 	<div class="pagination-row" style="text-align: center;">
		<ul class="custom-pagination list-unstyled">
		<!--  현재 페이지를 통해 현재 페이지 그룹의 시작 페이지를 구하기  -->
		<c:set var="start" value="${Math.floor(petList.number / 10) * 10 + 1}"/>
		<!-- 전체 페이지 수와 현재 페이지 그룹의 시작 페이지를 통해 현재 페이지 그룹의 마지막 페이지를 구하는 로직  -->
		<c:set var="last" value="${start + 9 < petList.totalPages ? start + 9 : petList.totalPages}"/>
			<li>
	    	<a href="${pageContext.request.contextPath}/kChart?page=1" aria-label="First">
	        	<span aria-hidden="true">First</span>
	    	</a>
			</li>
			<!-- disabled 속성을 통해 화살표 표시 여부 판단 -->
			<li ${petList.first == true ? 'class=disabled' : ''}>
			<!-- 현재 페이지가 첫 번째 페이지일 때, 이전의 페이지는 없음 -->
    			<c:if test="${petList.first}">
					<a href="#"><span aria-hidden="true">&lt;</span></a>
				</c:if>
				<c:if test="${!petList.first}">
					<a href="${pageContext.request.contextPath}/kChart?page=${petList.number}">
						<span aria-hidden="true">&lt;</span>
    				</a>
				</c:if>
			</li>
			<!-- 반복문으로 페이지 블록 표시하기  -->
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