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
		<form action="/eChart/search" method="GET">
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
		<br>
		<div class="container">
			<c:if test="${!empty result}">
				<div class="imageRow">
					<img src="/resources/images/cat.png" width="200px" height="200px"/>
					<img src="/resources/images/dog.png" width="200px" height="200px"/>
				</div>
				<div style="text-align:center;">
					<h2>
					<b>${result.petName}</b>(은/는) <b>${result.rank}등</b>이에요✨
					<br>				
					거리에서 <b>${result.petName}!</b>(이)라고 부르면 <b>${result.population}</b>마리가 뒤돌아봅니다🐱🐶</h2>
				</div>
				<br>
				<br>
				<c:if test="${!empty recomm}">
					<h5><strong>이런 동물 이름들도 있어요 👀</strong></h5>
					<c:forEach var="recomm" items="${recomm}">
						<c:if test="${result.petName ne recomm.petName}">
							${recomm.petName}
						</c:if>
					</c:forEach>
				</c:if>
			</c:if>
			<c:if test="${empty result}">
				<div style="text-align:center;">
					<img src="/resources/images/search.png" width="120px" height="120px"/>
				</div>
				<br>
				<div style="text-align:center;">
					<h2>아직 그런 동물 친구는 없어요!</h2>
				</div>
			</c:if>
		</div>
	</section>
</body>
</html>