<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채담포트폴리오</title>
<script type="text/javascript" src="./jquery/jquery-3.4.1.min.js"></script>
<style>

body {
	background-color: pink;
}

.center {
	display: block;
	  margin: auto;

}

li {
	list-style-type: none;
}

.mainTitle {
	font: 100px arial;
	font-weight: 54%;
	text-align: center;
	letter-spacing: 20px;
	margin-left: auto;
	margin-right: auto;
	
}

.mainLoginTitle {
	font: 20px arial;
	color: #f0f0f0;
	float: right;
	letter-spacing: 5px;
}

#portfolio {
	display: none;
	float: right;
}

#myInformation {
	display: none;
	float: left;
}

</style>

<div class=mainLoginTitle>Login</div>

</head>
<body>

	<div class="mainTitle">. PORT</div>
	<img src="./download/Tulips.jpg" width="400px" height="600px" align="middle" class="center">
	<div class="mainTitle">FOLIO</div>

	<script>
		//JQUERY script
		var visibility1 = false;//지금 메뉴가 보이고 있나요? 아니면 안 보이고 있나요? -> 보이면 true , 안 보이면 false
		//처음에는 메뉴가 안 보여야 하니까 false

		function showMenu1() {//메뉴를 보여준다.
			$("#myInformation").show();
			//JQUERY에 있는 show함수
			//아이디가 portfolio인 메뉴를 보여줘~!
		}

		function hideMenu1() {//메뉴를 감춘다 / 숨긴다.
			$("#myInformation").hide();
			//아이디가 portfolio인 메뉴를 숨겨줘~!
		}

		function checkStatus1() {//메뉴의 상태를 체크해서 -> 전역 변수의 값을 체크한다.
			if (visibility1 == true) {//true이면 메뉴를 숨기는 함수를 호출하여 실행한다.
				hideMenu1();
				visibility1 = false;
			} else {//false이면 메뉴를 보여주는 함수를 호출하여 실행한다.
				showMenu1();
				visibility1 = true;
			}
		}
	</script>
	<script>
		//JQUERY script
		var visibility = false;

		function showMenu() {
			$("#portfolio").show();
		}

		function hideMenu() {
			$("#portfolio").hide();	
		}

		function checkStatus() {
			if (visibility == true) {
				hideMenu();
				visibility = false;
			} else {
				showMenu();
				visibility = true;
			}
		}
	</script>

	<button onclick="checkStatus()">
		<img src="./download/triangle.png">
	</button>
	<button onclick="checkStatus1()">
		<img src="./download/triangle1.png">
	</button>

	<ul id="portfolio">
		<li>이력</li>
		<li>장르</li>
		<li>통계</li>
		<li>위치</li>
	</ul>
	<ul id="myInformation">
		<li>내정보</li>
		<li>흔적</li>
		<li>좋아요</li>
		<li>쪽지</li>
	</ul>
</body>
</html>