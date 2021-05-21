<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="icon" href="resources/images/favicon.ico">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Store</title>
</head>
<body id="page-top">
	<!-- Navigation-->
	<%@include file="header.jsp"%>
	<!-- Masthead-->
	<!--  <header
		class="masthead justify-content-center bg-primary text-dark text-center">
		<div class="container d-flex align-items-center flex-column">
			
		</div>
	</header> -->
	<!-- </header> -->

	<!-- Portfolio Section-->
	<section class="page-section portfolio bg-primary" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">
				캐릭터 목록</h2>

			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-heart"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>

			<div style="text-align:right;">
				
				<h3><i class="fas fa-coins goldie"></i>  1,000 </h3>
				<br><br>
			</div>

			<!-- Portfolio Grid Items-->
			<div class="row justify-content-center" style="text-align:center">

				<!-- Portfolio Item 1-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div> <!-- class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal1">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div -->
						<img class="img-fluid"
							src="resources/images/characterImage/aeong_cheese.png" alt="..." />
							<h3 style="text-align:center">치즈 애옹</h3>
							<h6 style="text-align:center"><i class="fas fa-coins goldie"></i> 100</h6>
							<button type="submit" class="btn-buy" value="buy_AC"> 구입 </button>
								<!-- class="btn btn-primary btn-xl" -->
					</div>
				</div>

				<!-- Portfolio Item 2-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div> <!--  class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal2">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> -->
						<img class="img-fluid" 
							src="resources/images/characterImage/aeong_tuxedo.png" alt="..." />
						<h3 style="text-align:center">턱시도 애옹</h3>
						<h6 style="text-align:center"><i class="fas fa-coins goldie"></i> 100 </h6>
						<button type="submit" class="btn-buy" value="buy_AT"> 구입 </button>
					</div>
				</div>

				<!-- Portfolio Item 3-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div> <!--  class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal3">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> -->
						<img class="img-fluid"
							src="resources/images/characterImage/banana.png" alt="..." />
							<h3 style="text-align:center">바나나</h3>
							<h6 style="text-align:center"><i class="fas fa-coins goldie"></i> 100 </h6>
							<button type="submit" class="btn-buy" value="buy_BNN"> 구입 </button>
					</div>
				</div>

				<!-- Portfolio Item 4-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div> <!--  class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal4">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> -->
						<img class="img-fluid"
							src="resources/images/characterImage/cookieCandy.png" alt="..." />
							<h3 style="text-align:center">한입거리</h3>
							<h6 style="text-align:center"><i class="fas fa-coins goldie"></i> 100 </h6>
							<button type="submit" class="btn-buy" value="buy_CC"> 구입 </button>
					</div>
				</div>

				<!-- Portfolio Item 5-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div> <!--  class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal5">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> -->
						<img class="img-fluid"
							src="resources/images/characterImage/cowboy.png" alt="..." />
							<h3 style="text-align:center">우디</h3>
							<h6 style="text-align:center"><i class="fas fa-coins goldie"></i> 100 </h6>
							<button type="submit" class="btn-buy" value="buy_CB"> 구입 </button>
					</div>
				</div>

				<!-- Portfolio Item 6-->
				<div class="col-md-6 col-lg-4">
					<div> <!--  class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal6">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> -->
						<img class="img-fluid"
							src="resources/images/characterImage/gongdaesang.png" alt="..." />
							<h3 style="text-align:center">공대생</h3>
							<h6 style="text-align:center"><i class="fas fa-coins goldie"></i> 100 </h6>
							<button type="submit" class="btn-buy" value="buy_GDS"> 구입 </button>
					</div>
				</div>
				
				<!-- Portfolio Item 7-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div> <!--  class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal7">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> -->
						<img class="img-fluid"
							src="resources/images/characterImage/haribo.png" alt="..." />
							<h3 style="text-align:center">하리보</h3>
							<h6 style="text-align:center"><i class="fas fa-coins goldie"></i> 100 </h6>
							<button type="submit" class="btn-buy" value="buy_HRB"> 구입 </button>
					</div>
				</div>
				
				<!-- Portfolio Item 8-->
				<div class="col-md-6 col-lg-4 mb-md-0">
					<div> <!--  class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal8">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> -->
						<img class="img-fluid"
							src="resources/images/characterImage/military.png" alt="..." />
							<h3 style="text-align:center">군인</h3>
							<h6 style="text-align:center"><i class="fas fa-coins goldie"></i> 100 </h6>
							<button type="submit" class="btn-buy" value="buy_MIL"> 구입 </button>
					</div>
				</div>
				
				<!-- Portfolio Item 9-->
				<div class="col-md-6 col-lg-4">
					<div> <!--  class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal9">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> -->
						<img class="img-fluid"
							src="resources/images/characterImage/sangsang.png" alt="..." />
							<h3 style="text-align:center">부기</h3>
							<h6 style="text-align:center"><i class="fas fa-coins goldie"></i> 100 </h6>
							<button type="submit" class="btn-buy" value="buy_SSBG"> 구입 </button>
					</div>
				</div>
				
				<!-- Portfolio Item 10-->
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
					<div> <!--  class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal7">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> -->
						<img class="img-fluid"
							src="resources/images/characterImage/sue.png" alt="..." />
							<h3 style="text-align:center"> 아바타 스타 </h3>
							<h6 style="text-align:center"><i class="fas fa-coins goldie"></i> 100 </h6>
							<button type="submit" class="btn-buy" value="buy_AS"> 구입 </button>
					</div>
				</div>
				
				<!-- Portfolio Item 11-->
				<div class="col-md-6 col-lg-4 mb-md-0">
					<div> <!--  class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal8">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> -->
						<img class="img-fluid"
							src="resources/images/characterImage/aeong_tuxedo.png" alt="..." />
							<h3 style="text-align:center">톽시둬</h3>
							<h6 style="text-align:center">
								<i class="fas fa-coins goldie"></i> 100 </h6>
							<button type="submit" class="btn-buy" value="buy_11"> 구입 </button>
					</div>
				</div>
				
				<!-- Portfolio Item 12-->
				<div class="col-md-6 col-lg-4">
					<div> <!--  class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal9">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> -->
						<img class="img-fluid"
							src="resources/images/characterImage/aeong_cheese.png" alt="..." />
							<h3 style="text-align:center">췻으</h3>
							<h6 style="text-align:center"><i class="fas fa-coins goldie"></i> 100 </h6>
							<button type="submit" class="btn-buy" value="buy_12"> 구입 </button>
					</div>
				</div>

			</div>
		</div>
	</section>


	

	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						2215 John Daniel Drive <br /> Clark, MO 65243
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About Freelancer</h4>
					<p class="lead mb-0">
						Freelance is a free to use, MIT licensed Bootstrap theme created
						by <a href="http://startbootstrap.com">Start Bootstrap</a> .
					</p>
				</div>
			</div>
		</div>
	</footer>
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

	

	<!-- Bootstrap core JS-->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
	<!-- Contact form JS-->
	<script src="resources/assets/mail/jqBootstrapValidation.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
</body>
</html>
