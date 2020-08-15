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
						<c:forEach var="petList" items="${petList}">
							<tr>
								<td width=200>${petList.petName}</td>
								<td width=200>${petList.population}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</section>
	<div class="pagination-row" style="text-align: center;">
		<ul class="custom-pagination list-unstyled">
			<li>1</li>
			<li>2</li>
		</ul>
	</div>
</body>
</html>