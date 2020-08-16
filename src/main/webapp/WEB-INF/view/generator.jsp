<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	<div class="container">
		<div class="section-title">
			Pet Name Generator
		</div>
	</div>
	<section class="site-section">
		<div class="container">
			<form:form modelAttribute="options" action="generator" method="post">
			<div class="row align-items-center justify-content-center text-center">
					<div class="col-md-3 col-lg-1">
						<img src="resources/images/doggy.png" width="64px" height="64px"/>
					</div>
					<div class="col-md-3 col-lg-5">
						<!-- 나중에 c:foreach로 변경 -->
							<table class="table">
								<tr>
									<td colspan="2" align="center"><span style="font-weight:bold;">Select Letter</span></td>
								</tr>
								<tr>
									<td align="center">Korean</td>
									<td align="center">English</td>
								</tr>
								<tr>
									<td align="center">
										<form:radiobuttons items="${kLetters}" itemLabel="label" itemValue="letter" path="letter" />			
									</td>
									<td align="center">
										<form:radiobuttons items="${eLetters}" itemLabel="label" itemValue="letter" path="letter" />
									</td>
								</tr>
								<tr>
									<td></td><td></td>
								</tr>
							</table>
					</div>
					<div class="col-md-3 col-lg-3">
						<label for="selectFrequency">Select Frequency</label> <br /> 
						<select id="frequency" name="frequency">
							<option value="2">2이하</option>
							<option value="10">10이하</option>
							<option value="50">50이하</option>
							<option value="100">100이하</option>
							<option value="500">500이하</option>
						</select>
					</div>
					<div class="col-md-3 col-lg-3">
						<input type="submit" class="btn" value="Generate" style="margin-top:20px;" />
					</div>
			</div>
			</form:form>
		</div>
	</section>
	<section class="site-section">
			<div class="container">
				<div class="row align-items-center justify-content-center text-center">
					<table class="table">
						<thead>
							<tr>
								<th>Name</th>
								<th>Population</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="generatedNames" items="${generatedNames}">
								<tr>
									<td>${generatedNames.petName}</td>
									<td>${generatedNames.population}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
	</section>
</body>