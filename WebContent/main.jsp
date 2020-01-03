<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채담이의포트폴리오</title>
<script type="text/javascript" src="./jquery/jquery-3.4.1.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>

body {
	background-color: pink;
}

.center {
	  margin: auto;
	    flex: 3;

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
	flex: 3;
	font: 20px arial;
	color: #f0f0f0;
	float: right;
	letter-spacing: 7px;
}

#portfolio {
	display: none;
  text-align: right;
	/* float: right; */
}

#container {
  display: flex;
}

</style>

</head>
<body>
		<div class="mainTitle">PORT</div>
		<div class="container text-center">
			<img src="./download/Tulips.jpg" width="400px" height="600px" align="middle" class="center" id='box-center'>
				<img-button onclick="checkStatus()" >
				<img src="./download/triangle.png">
				</button>
				<ul id="portfolio">
				
				<p><a href="portfolio_list.do">게시판</a></p>
				<a href="/login">로그인</a>
		</div>
		</td>
	</tr>
	<tr>	
	<div class="mainTitle">FOLIO</div>
	</tr>
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
</body>
</html>