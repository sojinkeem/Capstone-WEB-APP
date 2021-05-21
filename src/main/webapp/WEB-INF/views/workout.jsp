<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Workout</title>
</head>
<body>
	<nav>
	<%@include file="header.jsp"%>
	</nav>
	<!-- 
	<c:forEach var="offer" items="${offers}">
		<p><c:out value="${offer}"></c:out></p>
	</c:forEach>
	-->
	<header
		class="justify-content-center bg-primary text-dark text-center"> <!-- masthead  -->
		<section class="page-section portfolio" id="portfolio">
		<div class="container d-flex align-items-center flex-column">
			<h1>Workout</h1>
			<p>
				<a href="${pageContext.request.contextPath}/choice"><h1>초이스</h1></a><br>
				<h3>선택 운동은 선택하는 거임</h3>	
			</p>
			<br>
			<p>
				<a href="${pageContext.request.contextPath}/pt"><h1>오늘의 운동</h1></a><br>
				<h3>PT는 피티</h3>
			</p>

		</div>
		</section>
	</header>

</body>
</html>