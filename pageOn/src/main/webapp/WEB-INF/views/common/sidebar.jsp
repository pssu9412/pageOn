<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- ============= 사이드바 시작 ============= -->
	<div class="sidebar">

		<ul class="menu">

			<li class="menu-item"><a href="#" class="menu-link"> <span
					class="menu-text"> BEST </span>
			</a></li>

			<li class="menu-item"><a href="#romance"
				data-bs-toggle="collapse" class="menu-link" aria-expanded="true">
					<span class="menu-text menu-on"> 로맨스 </span> <span
					class="menu-arrow"></span>
			</a>
				<div class="collapse show" id="romance">
					<ul class="sub-menu">
						<li class="menu-item"><a href="ecommerce-dashboard.html"
							class="menu-link"> <span class="menu-text">로맨스 전체</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-products.html"
							class="menu-link"> <span class="menu-text menu-on">현대물</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-product-detail.html"
							class="menu-link"> <span class="menu-text">역사/시대물</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-product-edit.html"
							class="menu-link"> <span class="menu-text">로맨스 키워드 검색</span>
						</a></li>

					</ul>
				</div></li>

			<li class="menu-item"><a href="#rofan" data-bs-toggle="collapse"
				class="menu-link"> <span class="menu-text"> 로판 </span> <span
					class="menu-arrow"></span>
			</a>
				<div class="collapse" id="rofan">
					<ul class="sub-menu">
						<li class="menu-item"><a href="ecommerce-dashboard.html"
							class="menu-link"> <span class="menu-text">로판 전체</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-products.html"
							class="menu-link"> <span class="menu-text">동양풍 로판</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-product-detail.html"
							class="menu-link"> <span class="menu-text">서양풍 로판</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-product-edit.html"
							class="menu-link"> <span class="menu-text">가상 세계 로판</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-customers.html"
							class="menu-link"> <span class="menu-text">로판 키워드 검색</span>
						</a></li>

					</ul>
				</div></li>

			<li class="menu-item"><a href="#fantasy"
				data-bs-toggle="collapse" class="menu-link"> <span
					class="menu-text"> 판타지 </span> <span class="menu-arrow"></span>
			</a>
				<div class="collapse" id="fantasy">
					<ul class="sub-menu">
						<li class="menu-item"><a href="ecommerce-dashboard.html"
							class="menu-link"> <span class="menu-text">판타지 전체</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-products.html"
							class="menu-link"> <span class="menu-text">정통 판타지</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-product-detail.html"
							class="menu-link"> <span class="menu-text">퓨전 판타지</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-product-edit.html"
							class="menu-link"> <span class="menu-text">현대 판타지</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-customers.html"
							class="menu-link"> <span class="menu-text">무협</span>
						</a></li>

						<li class="menu-item"><a href="ecommerce-customers.html"
							class="menu-link"> <span class="menu-text">판타지 키워드 검색</span>
						</a></li>

					</ul>
				</div></li>

			<li class="menu-item"><a href="#bl" data-bs-toggle="collapse"
				class="menu-link"> <span class="menu-text"> BL </span> <span
					class="menu-arrow"></span>
			</a>
				<div class="collapse" id="bl">
					<ul class="sub-menu">
						<li class="menu-item"><a href="ecommerce-dashboard.html"
							class="menu-link"> <span class="menu-text">BL 전체</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-products.html"
							class="menu-link"> <span class="menu-text">현대물</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-product-detail.html"
							class="menu-link"> <span class="menu-text">판타지물</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-product-edit.html"
							class="menu-link"> <span class="menu-text">역사/시대물</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-customers.html"
							class="menu-link"> <span class="menu-text">BL 키워드 검색</span>
						</a></li>

					</ul>
				</div></li>

			<li class="menu-item"><a href="#gl" data-bs-toggle="collapse"
				class="menu-link"> <span class="menu-text"> GL </span> <span
					class="menu-arrow"></span>
			</a>
				<div class="collapse" id="gl">
					<ul class="sub-menu">
						<li class="menu-item"><a href="ecommerce-dashboard.html"
							class="menu-link"> <span class="menu-text">GL 전체</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-products.html"
							class="menu-link"> <span class="menu-text">현대물</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-product-detail.html"
							class="menu-link"> <span class="menu-text">판타지물</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-product-edit.html"
							class="menu-link"> <span class="menu-text">역사/시대물</span>
						</a></li>
						<li class="menu-item"><a href="ecommerce-customers.html"
							class="menu-link"> <span class="menu-text">GL 키워드 검색</span>
						</a></li>

					</ul>
				</div></li>

			<li class="menu-item"><a href="#" class="menu-link"> <span
					class="menu-text"> 회원 라운지 </span>
			</a></li>

			<li class="menu-item"><a href="#" class="menu-link"> <span
					class="menu-text"> 페이지 라운지 </span>
			</a></li>

			<li class="menu-item"><a href="#" class="menu-link"> <span
					class="menu-text"> 자유연재 </span>
			</a></li>


			<li class="menu-item"><a href="#" class="menu-link"> <span
					class="menu-text"> 작가 라운지 </span>
			</a></li>

			<li class="menu-item"><a href="#" class="menu-link"> <span
					class="menu-text"> 1:1 문의 </span>
			</a></li>


		</ul>
	</div>
	<!-- ============= 사이드바 끝 ============= -->
	
</body>
</html>