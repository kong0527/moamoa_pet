<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	<div class="container">
		<div class="section-title">Pet Name Game</div>
	</div>
	<section class="site-section">
		<div class="container">
			<div class="row align-items-center justify-content-center text-center">
				<div class="col-md-3 col-lg-1">
					<img src="resources/images/gameDog.png" width="64px" height="64px" />
				</div>
				<div class="col-md-3 col-lg-1">
					<img src="resources/images/gamePaw.png" width="32px" height="32px" />
				</div>
				<div class="col-md-3 col-lg-1">
					<img src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div class="col-md-3 col-lg-1">
					<img src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div class="col-md-3 col-lg-1">
					<img src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div class="col-md-3 col-lg-1">
					<img src="resources/images/gameHouse.png" width="64px" height="64px" />
				</div>
			</div>
			<br/>
			<br/>
			<div class="row align-items-center justify-content-center text-center">
				<div class="col-md-3 col-lg-4">
					<img id="left" src="resources/images/gameD.png" width="256px" height="256px" />
							<br/><br/>
							<label id="leftText">Domestic Ver.</label>
				</div>
				<div class="col-md-3 col-lg-4">
					<img id="right" src="resources/images/gameO.png" width="256px" height="256px" />
							<br/><br/>
							Overseas Ver.
				</div>
			</div>
		</div>
	</section>
</body>
<script>
$(document).on('click', '#left', function(e){
	$('img#left').attr('src','resources/images/maple-leaf.png')
	$('label#leftText').text('변경')
});
</script>