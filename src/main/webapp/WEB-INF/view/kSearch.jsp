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
		<br>
		<div class="container">
			<div class="imageRow">
				<img src="/resources/images/cat.png" width="200px" height="200px"/>
				<img src="/resources/images/dog.png" width="200px" height="200px"/>
			</div>
			<div style="text-align:center;">
				<h2>거리에서 <b>${result.petName}</b>라고 부르면 <b>${result.population}</b>마리가 어쩌고 저쩌고...🐱🐶</h2>
			</div>
		</div>
	</section>
</body>
</html>