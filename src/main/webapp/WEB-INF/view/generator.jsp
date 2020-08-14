<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	<div class="container">
		<div class="section-title">
			Pet Name Generator
		</div>
	</div>
	<section class="site-section">
		<div class="container">
			<div
				class="row align-items-center justify-content-center text-center">
				<div class="col-md-6 col-lg-4">
					<label for="selectName">Select Letter</label><br />
					<!-- 나중에 컨트롤러와 연결해서 form:select로 변경 -->
					<select class="letter">
						<option>ㄱ</option>
						<option>ㄴ</option>
						<option>ㄷ</option>
						<option>ㄹ</option>
					</select>
				</div>
				<div class="col-md-6 col-lg-4">
					<label for="selectFrequency">Select Frequency</label> <br /> <select
						class="frequency">
						<option>10이하</option>
						<option>50이하</option>
						<option>100이하</option>
						<option>500이하</option>
					</select>
				</div>
				<div class="col-md-6 col-lg-4">
					<input type="button" class="btn" id="generate" value="Generate" style="margin-top:20px;" />
				</div>
			</div>
		</div>
	</section>
</body>