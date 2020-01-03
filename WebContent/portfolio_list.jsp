<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채담이의포트폴리오게시판</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<script
  src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
  integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8="
  crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function(){
		$("#portfolioList :button").click(function() {
			location.href = "portfolio_remove.do?no="+$(this).attr("data-no");
		});
	});
</script>
<style>
body {
	background-color: pink;
}
.mainTitle {
	font: 80px arial;
	font-weight: 54%;
	text-align: center;
	letter-spacing: 20px;
	margin: 100px;
	text-color:#000000;
	
}
.textContent{
	align: center;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<div class="mainTitle">PORTFOLIO</div>
	<div class="container text-center">
	<form action="portfolio_search.do" method="post" class="col-md-12">
		<input type="text" name="title" placeholder="제목을입력하시오"
			value="${param.title}">
			<input type="submit" value="검색">
	</form>
	<table class="table col-md-12">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>시작일</th>
				<th>종료일</th>
				<th>자료수</th>
				<th>대표자</th>
				<th>참여자수</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody id="portfolioList">
		<c:forEach items="${list}" var="portfolio">
				<tr>
					<td>${portfolio.no}</td>
					<td><a href="potfolio_detail.do?no=${portfolio.no}">${portfolio.title}</a></td>
					<td>${portfolio.startDate}</td>
					<td>${portfolio.endDate}</td>
					<td>${portfolio.dataCount}</td>
					<td>${portfolio.leader}</td>
					<td>${portfolio.memberCount}</td>
					<td><input type="button" value="삭제" data-no="${portfolio.no}"/></td>
				</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	<div class="container text-center">
		<img-button>
			<a href="portfolio_input.html">
				<img src="./download/pluss.png">
			</a>
		</button>
	</div>
</body>
</html>