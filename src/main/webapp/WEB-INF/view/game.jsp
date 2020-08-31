<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	<section class="site-section">
			<div id="description" class="row align-items-center justify-content-center text-center">
				<h3>Choose a game type 🐰🐰</h3>
			</div>
			<div id="score" class="row align-items-center justify-content-center text-center">
				<h3 id="score">Score: <span id="score"></span>/10</h3>
			</div>
			<div id="round" class="row align-items-center justify-content-center text-center">
				<div class="col-md-3 col-lg-1">
					<img src="resources/images/gameDog.png" width="64px" height="64px" />
				</div>
				<div style="width: 50px;">
					<img id="r1" src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div  style="width: 50px;">
					<img id="r2" src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div style="width: 50px;">
					<img id="r3" src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div style="width: 50px;">
					<img id="r4" src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div style="width: 50px;">
					<img id="r5" src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div style="width: 50px;">
					<img id="r6" src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div style="width: 50px;">
					<img id="r7" src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div style="width: 50px;">
					<img id="r8" src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div style="width: 50px;">
					<img id="r9" src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div style="width: 50px;">
					<img id="r10" src="resources/images/gameBone.png" width="32px" height="32px" />
				</div>
				<div class="col-md-3 col-lg-1">
					<img src="resources/images/gameHouse.png" width="64px" height="64px" />
				</div>
		</div>
	</section>
	<section class="site-section">
			<div id="game" class="row align-items-center justify-content-center text-center">
				<div class="col-md-3 col-lg-4">
					<img id="domestic" src="resources/images/gameD.png" width="256px" height="256px" />
							<br/><br/>
							<span id="leftText">Domestic Ver.</span>
				</div>
				<div>
					<div id="rslt">
						<img id="rsltImg" src=""/>
					</div>
					<img id="next" src="resources/images/next.png" width="64px" height="64px" />
					<br>
				</div>
				<div class="col-md-3 col-lg-4">
					<img id="overseas" src="resources/images/gameO.png" width="256px" height="256px" />
							<br/><br/>
							<span id="rightText">Overseas Ver.</span>
				</div>
			</div>
			<div id="finish" class="row align-items-center justify-content-center text-center">
				<h3>Your score is <span id="finish"></span> 👍🏻</h3>
			</div>
	</section>
</body>
<script>
//점수는 score로 나타내고 round는 강아지 발자국이 집에 도달하는것으로 측정
//DB에서 rand() limit 20 으로 10쌍 가져와서 .text(어쩌구..)로 처리
//JPA로 할지 JDBC로 할지 ?
//한 단계 할 때마다 그냥 넘어갈지 next 버튼으로 넘어갈지 OR delay를 줄까?

var round = 0;
var score = 0;
var i = 0;
var list = [];
var flag = 0;

$(document).ready(function () {
	$('div#score').hide();
	$('#round').hide();
	$('#finish').hide();
	$('#next').hide();
	$('#description').show();
});

//Domestic Ver. 선택시
$(document).on('click', '#domestic', function(){
	var type = 'Domestic';
	$.ajax({
		url : '/getList',
		type : 'post',
		data : {"type":type},
		dataType : 'json',
		async: false,
		success : function(data) {
			list = data;
			ready();
		}
	});
});

//Overseas Ver. 선택 시
$(document).on('click', '#overseas', function(){
	var type = 'Overseas';
	$.ajax({
		url : '/getList',
		type : 'post',
		data : {"type":type},
		dataType : 'json',
		async: false,
		success : function(data) {
			list = data;
			ready();
		}
	});
});

$('#next').click(function() {
	$('#no-left').attr('id', 'left');
	$('#no-right').attr('id', 'right');
	$('#rsltImg').attr('src','');
	if (round == 10) {
		$('#finish').show();
		$('span#finish').text(score)
		$('#game').hide();
	} 
	else {
		$('#leftText').text(list[i].petName);
		$('#rightText').text(list[i + 10].petName);
	}
});

$(document).on('click', '#left', function(){
	flag = 1;
	game();
});

$(document).on('click', '#right', function(){
	flag = 2;
	game();
});

function ready(){
	$('#domestic').attr('id', 'left');
	$('#overseas').attr('id', 'right');  
	$('span#score').text(0);
	$('#description').hide();
	$('#next').show();
	$('#score').show();
	$('#round').show();
	$('#left').attr('src','resources/images/leftImg.png');
	$('#right').attr('src', 'resources/images/rightImg.png');
	$('#leftText').text(list[i].petName);
	$('#rightText').text(list[i + 10].petName);
}

function game() {
	round++;
		
	var left = parseInt(list[i].population);
	var right = parseInt(list[i + 10].population);  
	
	$('#r' + round).attr('src', 'resources/images/gamePaw.png')
	if (left < right) {
		if (flag == 2) {
			score++;
			$('#rsltImg').attr('src', 'resources/images/smile.png');
		} else {
			$('#rsltImg').attr('src', 'resources/images/sad.png');
		}
	}
	if (left > right) {
		if (flag == 1) {
			score++;
			$('#rsltImg').attr('src', 'resources/images/smile.png');
		} else {
			$('#rsltImg').attr('src', 'resources/images/sad.png');
		}
	}
	$('span#score').text(score);
	$('#leftText').text(list[i].population);
	$('#rightText').text(list[i + 10].population);
	$('#left').attr('id', 'no-left');
	$('#right').attr('id', 'no-right');
	i++;
}
</script>