<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	<div class="container">
		<div class="section-title">Pet Name Generator</div>
	</div>
	<section class="site-section">
		<div class="container">
			<form:form modelAttribute="options" action="generator" method="post">
				<div
					class="row align-items-center justify-content-center text-center">
					<div class="col-md-3 col-lg-1">
						<img src="resources/images/doggy.png" width="64px" height="64px" />
					</div>
					<div class="col-md-3 col-lg-5">

						<table class="table">
							<tr>
								<td colspan="2" align="center"><span
									style="font-weight: bold;">Select Letter</span></td>
							</tr>
							<tr align="center">
								<td>Korean</td>
								<td>English</td>
							</tr>
							<tr align="center">
								<td><c:forEach var="kLetters" items="${kLetters}"
										varStatus="status">
										<input type="radio" name="letter" id="letter"
											value="${kLetters.letter}"> ${kLetters.label}
											<c:if test="${0 eq status.count % 3}">
											<br />
										</c:if>
									</c:forEach>
								</td>
								<td><c:forEach var="eLetters" items="${eLetters}"
										varStatus="status">
										<input type="radio" name="letter" id="letter"
											value="${eLetters.letter}"> ${eLetters.label}
											<c:if test="${0 eq status.count % 4}">
											<br />
										</c:if>
									</c:forEach>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
						</table>
						<form:errors path="letter" />
					</div>
					<div class="col-md-3 col-lg-3">
						<label for="selectFrequency">Select Frequency</label> <br /> <select
							id="frequency" name="frequency">
							<option value="1">1 ~ 2</option>
							<option value="2">3 ~ 10</option>
							<option value="3">11 ~ 50</option>
							<option value="4">51 ~ 100</option>
							<option value="5">101 ~ 500</option>
						</select>
					</div>
					<div class="col-md-3 col-lg-3">
						<input type="submit" class="btn" value="Generate"
							style="margin-top: 20px;" />
					</div>
				</div>
			</form:form>
		</div>
	</section>
	<section class="site-section">
		<div class="container">
			<div
				class="row align-items-center justify-content-center text-center">
				<c:if test="${generatedNames eq null }">
							결과를 보려면 Generate 를 클릭하세요 ! 🐈🐕		
						</c:if>
				<c:if test="${generatedNames ne null}">
							결과를 확인해 보세요 ! 🐈🐕
							<br />
					<br />
					<table class="table">
						<thead>
							<tr align="center">
								<th>Name</th>
								<th>Population</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="generatedNames" items="${generatedNames}">
								<tr>
									<td align="center">${generatedNames.petName}</td>
									<td>${generatedNames.population}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
			</div>
		</div>
	</section>
</body>