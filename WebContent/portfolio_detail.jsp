<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${portfolio.no}.${portfolio.title}</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<style>
body {
	background-color: pink;
	font-colr:#000000;
}
.mainTitle {
	font: 100px arial;
	font-weight: 54%;
	text-align: center;
	letter-spacing: 20px;
	margin-left: auto;
	margin-right: auto;
}
.center {
	display: block;
	  margin: auto;
</style>
</head>
<body align="center">
	<h1>PORTFOLIO</h1>
		<table border="1" align="center"  class="table">
		<tr>
			<td>제목</td>
			<td>${portfolio.title}</td>
		</tr>
		<tr>
			<td>대표자</td>
			<td>${portfolio.leader}</td>
		</tr>
		<tr>
			<td>참여자</td>
			<td>총 ${portfolio.memberCount} 명:${portfolio.member}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${portfolio.content}</textarea></td>
		</tr>		
		<tr>
			<td>시작일</td>
			<td>${portfolio.startDate}</td>
		</tr>		
		<tr>
			<td>종료일</td>
			<td>${portfolio.endDate}</td>
		</tr>		
 	</table>
 	<c:forEach items="${portfolio.dataList}" var="file">
 		<img src="uploadFileSave/${file.realFileName}" width="200px" height="200px"/>
		<br/>
	</c:forEach>
		<img-button>
			<a href="portfolio_list.do">
				<img src="./download/xx.png">
			</a>
		</button>

</body>
</html>