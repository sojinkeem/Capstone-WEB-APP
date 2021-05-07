<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PT :: 오늘의 운동</title>
</head>
<body>
	<%@include file="header.jsp"%>
	
	<header
		class=" justify-content-center bg-primary text-dark text-center"> <!-- masthead -->
		<section class="page-section portfolio" id="portfolio">
			<div class="container d-flex align-items-center flex-column">
				
				<h1>오늘의 운동</h1>
	
			</div>
			
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-circle"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>

			<!-- Portfolio Grid Items-->
			<div class="row justify-content-center">

				<!-- Portfolio Item 1-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal1">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid"
							src="resources/assets/img/portfolio/cabin.png" alt="..." />
					</div>
				</div>
			</div>
				
			<!-- Portfolio Modals-->
	
			<!-- Portfolio Modal 1-->
			<div class="portfolio-modal modal fade" id="portfolioModal1"
				tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
				aria-hidden="true">
				<div class="modal-dialog modal-xl" role="document">
					<div class="modal-content">
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true"><i class="fas fa-times"></i></span>
						</button>
						<div class="modal-body text-center">
							<div class="container">
								<div class="row justify-content-center">
									<div class="col-lg-8">
										<!-- Portfolio Modal - Title-->
										<h2
											class="portfolio-modal-title text-secondary text-uppercase mb-0"
											id="portfolioModal1Label">Log Cabin</h2>
										<!-- Icon Divider-->
										<div class="divider-custom">
											<div class="divider-custom-line"></div>
											<div class="divider-custom-icon">
												<i class="fas fa-star"></i>
											</div>
											<div class="divider-custom-line"></div>
										</div>
										<!-- Portfolio Modal - Image-->
										<img class="img-fluid rounded mb-5"
											src="resources/assets/img/portfolio/cabin.png" alt="..." />
										<!-- Portfolio Modal - Text-->
										<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
											adipisicing elit. Mollitia neque assumenda ipsam nihil,
											molestias magnam, recusandae quos quis inventore quisquam velit
											asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
											itaque. Nam.</p>
										<button class="btn btn-primary" data-dismiss="modal">
											<i class="fas fa-times fa-fw"></i> Close Window
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</header>
	
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