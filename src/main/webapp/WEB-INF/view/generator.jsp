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
			<div class="row align-items-center justify-content-center text-center">
				<div class="col-md-3 col-lg-1">
					<img src="resources/images/doggy.png" width="64px" height="64px"/>
				</div>
				<div class="col-md-3 col-lg-5">
					<!-- 나중에 c:foreach로 변경 -->
					<form:form modelAttribute="options" action="generateName" method="post">
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
					</form:form>
				</div>
				<div class="col-md-3 col-lg-3">
					<label for="selectFrequency">Select Frequency</label> <br /> <select
						class="frequency">
						<option>10이하</option>
						<option>50이하</option>
						<option>100이하</option>
						<option>500이하</option>
					</select>
				</div>
				<div class="col-md-3 col-lg-3">
					<input type="button" class="btn" id="generate" value="Generate" style="margin-top:20px;" />
				</div>
			</div>
		</div>
	</section>
	<section class="site-section">
			<div class="container">
				<div class="row align-items-center justify-content-center text-center">
				</div>
			</div>
	</section>
</body>