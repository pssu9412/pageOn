<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en" data-layout="horizontal" data-topbar-color="dark">

<head>
<meta charset="utf-8" />
<title>Page On</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />


</head>

<body>
	<!-- Begin page -->
	<div id="wrapper">

		


		<div class="content-page">

			<!-- 여기에 header -->
			<jsp:include page="/WEB-INF/views/common/header.jsp" />

			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- 이벤트 배너 -->
					<div class="row">
						<div id="event-carousel">
							<div class="event-carousel-item">
								<img
									src="${contextPath}/assets/images/pageon/event_banner_ex.png">
							</div>
							<div class="event-carousel-item">
								<img class="d-block img-fluid"
									src="${contextPath}/assets/images/small/img-2.jpg"
									alt="Second slide">
							</div>
							<div class="event-carousel-item">
								<img
									src="${contextPath}/assets/images/pageon/event_banner_ex.png">
							</div>


						</div>
					</div>

					<div class="row works-slide new-works">
						<div
							class="slide-title d-flex justify-content-between align-items-baseline">
							<h3>로맨스 신작</h3>
							<!-- <a href="#" class="more-link"><span>더보기</span></a> -->

						</div>
						<div class="slide-wrapper">

							<!-- 성인 인증 전에 보이는 꾸금 소설 표지 -->
							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<!-- 성인 badge -->
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">이 약혼은 어차피 성공하게 되어 있다</div>
									<div class="author">빨강마후라 차차</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/rofan_ex2.png">
								<div class="card-body">
									<div class="title">그 왕녀가 후작저에 가야했던 이유</div>
									<div class="author">말차차</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/modern_romance_ex.png">
								<div class="card-body">
									<div class="title">해피엔딩(Happy Ending)</div>
									<div class="author">아이올리</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/fantasy_ex.png">
								<div class="card-body">
									<div class="title">별을 삼킨 왕관</div>
									<div class="author">하린킴</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/Wnxia_ex.png">
								<div class="card-body">
									<div class="title">검은 노을</div>
									<div class="author">청산검객</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/bl_ex.png">
								<div class="card-body">
									<div class="title">너의 온도, 내가 머무는 계절</div>
									<div class="author">시월</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/gl_ex.png">
								<div class="card-body">
									<div class="title">너와 피어나는 계절</div>
									<div class="author">윤슬님</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/rofan_ex1.png">
								<div class="card-body">
									<div class="title">새벽을 매듭짓는 사람들</div>
									<div class="author">잿빛별</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/oriental_rofan_ex.png">
								<div class="card-body">
									<div class="title">청풍이 머무는 자리</div>
									<div class="author">다온</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">이 약혼은 어차피 성공하게 되어 있다</div>
									<div class="author">빨강마후라 차차</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">은행나무 아래에서</div>
									<div class="author">김땡땡</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">너의 그림자</div>
									<div class="author">태양</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

						</div>

					</div>

					<div class="row works-slide bestseller-works">
						<div
							class="slide-title d-flex justify-content-between align-items-baseline">
							<h3>로맨스 구매 베스트</h3>
							<a href="#" class="more-link"><span>더보기</span></a>

						</div>
						<div class="slide-wrapper">

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/oriental_rofan_ex.png">
								<div class="card-body">
									<div class="title">청풍이 머무는 자리</div>
									<div class="author">다온</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/fantasy_ex.png">
								<div class="card-body">
									<div class="title">별을 삼킨 왕관</div>
									<div class="author">하린킴</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/Wnxia_ex.png">
								<div class="card-body">
									<div class="title">검은 노을</div>
									<div class="author">청산검객</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/bl_ex.png">
								<div class="card-body">
									<div class="title">너의 온도, 내가 머무는 계절</div>
									<div class="author">시월</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/gl_ex.png">
								<div class="card-body">
									<div class="title">너와 피어나는 계절</div>
									<div class="author">윤슬님</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>


							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">이 약혼은 어차피 성공하게 되어 있다</div>
									<div class="author">빨강마후라 차차</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/rofan_ex2.png">
								<div class="card-body">
									<div class="title">그 왕녀가 후작저에 가야했던 이유</div>
									<div class="author">말차차</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/modern_romance_ex.png">
								<div class="card-body">
									<div class="title">해피엔딩(Happy Ending)</div>
									<div class="author">아이올리</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/rofan_ex1.png">
								<div class="card-body">
									<div class="title">새벽을 매듭짓는 사람들</div>
									<div class="author">잿빛별</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>



							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">이 약혼은 어차피 성공하게 되어 있다</div>
									<div class="author">빨강마후라 차차</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">은행나무 아래에서</div>
									<div class="author">김땡땡</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">너의 그림자</div>
									<div class="author">태양</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

						</div>

					</div>

					<div class="row works-slide favorite-works">
						<div
							class="slide-title d-flex justify-content-between align-items-baseline">
							<h3>로맨스 선호 베스트</h3>
							<a href="#" class="more-link"><span>더보기</span></a>

						</div>
						<div class="slide-wrapper">

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/rofan_ex2.png">
								<div class="card-body">
									<div class="title">그 왕녀가 후작저에 가야했던 이유</div>
									<div class="author">말차차</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">이 약혼은 어차피 성공하게 되어 있다</div>
									<div class="author">빨강마후라 차차</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/rofan_ex1.png">
								<div class="card-body">
									<div class="title">새벽을 매듭짓는 사람들</div>
									<div class="author">잿빛별</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/fantasy_ex.png">
								<div class="card-body">
									<div class="title">별을 삼킨 왕관</div>
									<div class="author">하린킴</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>



							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/oriental_rofan_ex.png">
								<div class="card-body">
									<div class="title">청풍이 머무는 자리</div>
									<div class="author">다온</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>



							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/Wnxia_ex.png">
								<div class="card-body">
									<div class="title">검은 노을</div>
									<div class="author">청산검객</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/bl_ex.png">
								<div class="card-body">
									<div class="title">너의 온도, 내가 머무는 계절</div>
									<div class="author">시월</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/gl_ex.png">
								<div class="card-body">
									<div class="title">너와 피어나는 계절</div>
									<div class="author">윤슬님</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">은행나무 아래에서</div>
									<div class="author">김땡땡</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/modern_romance_ex.png">
								<div class="card-body">
									<div class="title">해피엔딩(Happy Ending)</div>
									<div class="author">아이올리</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">너의 그림자</div>
									<div class="author">태양</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

						</div>

					</div>

					<div class="row works-slide updated-works">
						<div
							class="slide-title d-flex justify-content-between align-items-baseline">
							<h3>로맨스 최신 업데이트</h3>
							<a href="#" class="more-link"><span>더보기</span></a>

						</div>
						<div class="slide-wrapper">

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/modern_romance_ex.png">
								<div class="card-body">
									<div class="title">해피엔딩(Happy Ending)</div>
									<div class="author">아이올리</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/Wnxia_ex.png">
								<div class="card-body">
									<div class="title">검은 노을</div>
									<div class="author">청산검객</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>


							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/oriental_rofan_ex.png">
								<div class="card-body">
									<div class="title">청풍이 머무는 자리</div>
									<div class="author">다온</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">너의 그림자</div>
									<div class="author">태양</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/fantasy_ex.png">
								<div class="card-body">
									<div class="title">별을 삼킨 왕관</div>
									<div class="author">하린킴</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>



							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/bl_ex.png">
								<div class="card-body">
									<div class="title">너의 온도, 내가 머무는 계절</div>
									<div class="author">시월</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/gl_ex.png">
								<div class="card-body">
									<div class="title">너와 피어나는 계절</div>
									<div class="author">윤슬님</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>


							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">이 약혼은 어차피 성공하게 되어 있다</div>
									<div class="author">빨강마후라 차차</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/rofan_ex2.png">
								<div class="card-body">
									<div class="title">그 왕녀가 후작저에 가야했던 이유</div>
									<div class="author">말차차</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<img class="card-img-top"
									src="${contextPath}/assets/images/pageon/rofan_ex1.png">
								<div class="card-body">
									<div class="title">새벽을 매듭짓는 사람들</div>
									<div class="author">잿빛별</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">이 약혼은 어차피 성공하게 되어 있다</div>
									<div class="author">빨강마후라 차차</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

							<div class="card work-card">
								<div class="thumbnail-wrap">
									<img class="card-img-top"
										src="${contextPath}/assets/images/pageon/before_adult.png">
									<div class="adult-badge">19</div>
								</div>

								<div class="card-body">
									<div class="title">은행나무 아래에서</div>
									<div class="author">김땡땡</div>
									<div class="like-cnt">
										<i class="fe-heart-on"></i> <span>(1,000)</span>
									</div>
								</div>
							</div>

						</div>

					</div>

					<script>
						$(document)
								.ready(
										function() {

											// slick 사용을 위한 구문 - 이벤트배너
											$('#event-carousel')
													.slick(
															{
																dots : true,
																speed : 500,
																prevArrow : '<button class="slick-custom-prev">'
																		+ '<i class="mdi mdi-chevron-left"></i>'
																		+ '</button>',
																nextArrow : '<button class="slick-custom-next">'
																		+ '<i class="mdi mdi-chevron-right"></i>'
																		+ '</button>'
															});

											// slick 사용을 위한 구문 - 작품 랙
											$('.slide-wrapper')
													.slick(
															{
																dots : false,
																infinite : false,
																speed : 300,
																slidesToShow : 6,
																slidesToScroll : 6,
																prevArrow : '<button class="slick-custom-prev">'
																		+ '<i class="mdi mdi-chevron-left"></i>'
																		+ '</button>',

																nextArrow : '<button class="slick-custom-next">'
																		+ '<i class="mdi mdi-chevron-right"></i>'
																		+ '</button>',
																adaptiveHeight : true,

															});
										})
					</script>


				</div>
				<!-- container -->

			</div>
			<!-- content -->

			<!-- 여기에 footer -->
			<jsp:include page="/WEB-INF/views/common/footer.jsp" />

		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<!-- 여기에 setting -->
	<jsp:include page="/WEB-INF/views/common/setting.jsp" />


</body>
</html>