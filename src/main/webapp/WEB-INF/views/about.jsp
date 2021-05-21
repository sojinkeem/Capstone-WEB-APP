<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="resources/images/favicon.ico">
<title>About</title>
</head>
<body>
	<!-- Navigation-->
	<%@include file="header.jsp"%>
	<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<h1>About</h1>
			<h2>우리 프로젝트 웅앵 <br> 우리팀 웅앵  </h2>
		</div>
	</header>

	<!-- Footer-->
	<%@include file="footer.jsp"%>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small> Copyright &copy; Your Website <!-- This script automatically adds the current year to your website footer-->
				<!-- (credit: https://updateyourfooter.com/)--> <script>
					document.write(new Date().getFullYear());
				</script>
			</small>
		</div>
	</div>
	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
	<div class="scroll-to-top d-lg-none position-fixed">
		<a class="js-scroll-trigger d-block text-center text-white rounded"
			href="#page-top"><i class="fa fa-chevron-up"></i></a>
	</div>

</body>
</html>
