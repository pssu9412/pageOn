<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
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

<!-- App favicon -->
<!-- <link rel="shortcut icon" href="${contextPath}/assets/images/favicon.ico"> -->
<link rel="shortcut icon" href="${contextPath}/assets/images/pageon/logo-gray.jpeg">

<!-- Plugins css -->
<link href="${contextPath}/assets/libs/flatpickr/flatpickr.min.css" rel="stylesheet" type="text/css" />
<link
	href="${contextPath}/assets/libs/selectize/css/selectize.bootstrap3.css" rel="stylesheet" type="text/css" />

<!-- Theme Config Js -->
<script src="${contextPath}/assets/js/head.js"></script>

<!-- Bootstrap css -->
<link href="${contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" id="app-style" />

<!-- App css -->
<link href="${contextPath}/assets/css/app.min.css" rel="stylesheet" type="text/css" />

<!-- Icons css -->
<link href="${contextPath}/assets/css/icons.min.css" rel="stylesheet"
	type="text/css" />

<!-- JQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Slick.js 사용하기 위한 구문 -->
<!-- cdn 방식 연결 -->
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.css"/> -->
<!-- <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.min.css"/> -->
<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js" defer></script> -->

<!-- 다운로드 방식 연결 -->
<link rel="stylesheet" type="text/css" href="${contextPath}/assets/slick/slick.css" />
<!-- Add the new slick-theme.css if you want the default styling -->
<link rel="stylesheet" type="text/css" href="${contextPath}/assets/slick/slick-theme.css" />
<script type="text/javascript" src="${contextPath}/assets/slick/slick.min.js" defer></script>

<!-- 개인 custom css -->
<link rel="stylesheet" href="${contextPath}/assets/css/yj-custom.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/min-custom.css" />
<link rel="stylesheet" href="${contextPath}/assets/css/ssu-custom.css" />

</head>
<body>

	<script>
		if("${alertMsg}" != ""){ // 어떤 메세지 문구가 존재할 경우
			alertify.alert("${alertTitle}","${alertMsg}", function(){
				if("${historyBackYN}" == "Y"){
					history.back();
				}
			});
		}
		
	</script>



	<!-- ========== Topbar Start (상단바) ========== -->
	<div class="navbar-custom">
		<div class="topbar">
			<div class="topbar-menu d-flex align-items-center gap-1">

				<!-- (로고)Topbar Brand Logo -->
				<div class="logo-box">
					<!-- Brand Logo Light -->
					<a href="index.html" class="logo-light"> <img
						src="assets/images/pageon/logo-gray.jpeg" alt="logo"
						class="logo-lg"> <img
						src="assets/images/pageon/logo-gray.jpeg" alt="logo"
						class="logo-sm"> <!-- <img src="assets/images/logo-light.png" alt="logo" class="logo-lg"> -->
						<!-- <img src="assets/images/logo-sm.png" alt="small logo" class="logo-sm"> -->
					</a>

					<!-- Brand Logo Dark -->
					<a href="index.html" class="logo-dark"> <img
						src="assets/images/pageon/logo-gray.jpeg" alt="dark logo"
						class="logo-lg"> <img
						src="assets/images/pageon/logo-gray.jpeg" alt="logo"
						class="logo-sm"> <!-- <img src="assets/images/logo-sm.png" alt="small logo" class="logo-sm"> -->
					</a>
				</div>

				<!-- Sidebar Menu Toggle Button -->
				<!-- <button class="button-toggle-menu">
                                <i class="mdi mdi-menu"></i>
                            </button> -->

			</div>

			<div class="topbar-menu d-flex flex-column align-items-center">

				<div class="topbar-right-top">
					<div class="app-search dropdown">
						<form>
							<input type="search" class="form-control rounded-pill"
								placeholder="Search..." id="top-search"> <span
								class="fe-search search-icon font-16"></span>
						</form>
					</div>

				</div>
				<div class="topbar-right-bottom">


					<ul class="topbar-menu d-flex align-items-center">
					
						<c:choose>
							<c:when test="${ empty loginUser }">
								<li class="d-none d-sm-inline-block">
									<a href="${contextPath}/login" class="nav-link waves-effect waves-light">
                    <span class="d-none d-md-inline-block">
                        로그인/회원가입
                    </span>
                	</a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="d-none d-sm-inline-block">
									<a href="#" class="nav-link waves-effect waves-light"> 
										<i class="fe-shopping-cart font-22"></i>
									</a>
								</li>
								
								<li class="dropdown notification-list">
								
									<a class="nav-link dropdown-toggle waves-effect waves-light arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
										<i class="fe-bell font-22"></i>
										<span class="badge bg-danger rounded-circle noti-icon-badge">9</span>
									</a>
									
									<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg py-0">
                      <div class="p-2 border-top-0 border-start-0 border-end-0 border-dashed border">
                          <div class="row align-items-center">
                              <div class="col">
                                  <h6 class="m-0 font-16 fw-semibold"> 알림</h6>
                              </div>
                              <div class="col-auto">
                                  <a href="javascript: void(0);" class="text-dark text-decoration-underline">
                                      <small>전체 삭제</small>
                                  </a>
                              </div>
                          </div>
                      </div>

                      <div class="px-1" style="max-height: 300px;" data-simplebar>

                          <h5 class="text-muted font-13 fw-normal mt-2">오늘</h5>
                          
                          <a href="javascript:void(0);" class="dropdown-item p-0 notify-item card unread-noti shadow-none mb-1">
                              <div class="card-body">
                                  <span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
                                  <div class="d-flex align-items-center">
                                      <div class="flex-shrink-0">
                                          <div class="notify-icon bg-primary">
                                              <i class="mdi mdi-comment-account-outline"></i>
                                          </div>
                                      </div>
                                      <div class="flex-grow-1 text-truncate ms-2">
                                          <h5 class="noti-item-title fw-semibold font-14">Datacorp <small class="fw-normal text-muted ms-1">1 min ago</small></h5>
                                          <small class="noti-item-subtitle text-muted">Caleb Flakelar commented on Admin</small>
                                      </div>
                                  </div>
                              </div>
                          </a>

                          
                          <a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-1">
                              <div class="card-body">
                                  <span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
                                  <div class="d-flex align-items-center">
                                      <div class="flex-shrink-0">
                                          <div class="notify-icon bg-info">
                                              <i class="mdi mdi-account-plus"></i>
                                          </div>
                                      </div>
                                      <div class="flex-grow-1 text-truncate ms-2">
                                          <h5 class="noti-item-title fw-semibold font-14">Admin <small class="fw-normal text-muted ms-1">1 hours ago</small></h5>
                                          <small class="noti-item-subtitle text-muted">New user registered</small>
                                      </div>
                                  </div>
                              </div>
                          </a>

                          <h5 class="text-muted font-13 fw-normal mt-0">어제</h5>

                          
                          <a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-1">
                              <div class="card-body">
                                  <span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
                                  <div class="d-flex align-items-center">
                                      <div class="flex-shrink-0">
                                          <div class="notify-icon">
                                              <img src="assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="" />
                                          </div>
                                      </div>
                                      <div class="flex-grow-1 text-truncate ms-2">
                                          <h5 class="noti-item-title fw-semibold font-14">Cristina Pride <small class="fw-normal text-muted ms-1">1 day ago</small></h5>
                                          <small class="noti-item-subtitle text-muted">Hi, How are you? What about our next meeting</small>
                                      </div>
                                  </div>
                              </div>
                          </a>

                          <h5 class="text-muted font-13 fw-normal mt-0">2021년 12월 30일</h5>

                          
                          <a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-1">
                              <div class="card-body">
                                  <span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
                                  <div class="d-flex align-items-center">
                                      <div class="flex-shrink-0">
                                          <div class="notify-icon bg-primary">
                                              <i class="mdi mdi-comment-account-outline"></i>
                                          </div>
                                      </div>
                                      <div class="flex-grow-1 text-truncate ms-2">
                                          <h5 class="noti-item-title fw-semibold font-14">Datacorp</h5>
                                          <small class="noti-item-subtitle text-muted">Caleb Flakelar commented on Admin</small>
                                      </div>
                                  </div>
                              </div>
                          </a>

                          
                          <a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-1">
                              <div class="card-body">
                                  <span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
                                  <div class="d-flex align-items-center">
                                      <div class="flex-shrink-0">
                                          <div class="notify-icon">
                                              <img src="assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="" />
                                          </div>
                                      </div>
                                      <div class="flex-grow-1 text-truncate ms-2">
                                          <h5 class="noti-item-title fw-semibold font-14">Karen Robinson</h5>
                                          <small class="noti-item-subtitle text-muted">Wow ! this admin looks good and awesome design</small>
                                      </div>
                                  </div>
                              </div>
                          </a>

                          <div class="text-center">
                              <i class="mdi mdi-dots-circle mdi-spin text-muted h3 mt-0"></i>
                          </div>
                      </div>

                      
                      <a href="javascript:void(0);" class="dropdown-item text-center text-primary notify-item border-top border-light py-2">
                          전체 읽음
                      </a>

                  </div>
								</li>
								
								<li class="dropdown">
                   <a class="nav-link dropdown-toggle nav-user me-0 waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                       <img src="${ contextPath }/assets/images/users/user-1.jpg" alt="user-image" class="rounded-circle">
                       <span class="ms-1 d-none d-md-inline-block">
                           ${ loginUser.memNickname } <i class="mdi mdi-chevron-down"></i>
                       </span>
                   </a>
                   <div class="dropdown-menu dropdown-menu-end profile-dropdown ">

                       
                       <a href="${contextPath }/myinfo" class="dropdown-item notify-item">
                           <i class="fe-user"></i>
                           <span>마이 페이지</span>
                       </a>

                       <a href="javascript:void(0);" class="dropdown-item notify-item">
                           <i class="fe-book-open"></i>
                           <span>내 서재</span>
                       </a>

                       
                       <c:if test=" ${ loginUser.memLevel == 'A' } ">
                       		<div class="dropdown-divider"></div>
                       		
                       		<a href="javascript:void(0);" class="dropdown-item notify-item">
	                           <i class="fe-settings"></i>
	                           <span>관리자홈</span>
		                      </a>
                       		
                       </c:if>
                       
                       <div class="dropdown-divider"></div>

                       
                       <a href="javascript:void(0);" class="dropdown-item notify-item">
                           <i class="fe-log-out"></i>
                           <span>로그아웃</span>
                       </a>

                   </div>
              	</li>
								
							</c:otherwise>
						</c:choose>

					</ul>
					<!-- ==============================-->

				</div>
			</div>

		</div>


		<!-- ========== 가로 메뉴 시작 ========== -->
		<div class="menubar">
			<ul class="menu">

				<!-- 선택된 페이지일 경우(class menu-on 부여) -->
				<li class="menu-item">
					<a href="#" class="menu-link"> 
						<span class="menu-text menu-on"> Best </span>
					</a>
				</li>
				<!-- ==================-->

				<li class="menu-item">
					<a href="#" class="menu-link"> 
						<span class="menu-text"> 로맨스 </span>
					</a>
				</li>

				<li class="menu-item">
					<a href="#" class="menu-link"> 
						<span class="menu-text"> 로판 </span>
					</a>
				</li>

				<li class="menu-item">
					<a href="#" class="menu-link"> 
						<span class="menu-text"> 판타지 </span>
					</a>
				</li>

				<li class="menu-item">
					<a href="#" class="menu-link"> 
						<span class="menu-text"> BL </span>
					</a>
				</li>

				<li class="menu-item">
					<a href="#" class="menu-link"> 
						<span class="menu-text"> GL </span>
					</a>
				</li>

				<li class="menu-item">
					<a href="#" class="menu-link"> 
						<span class="menu-text"> 자유 </span>
					</a>
				</li>

				<li class="menu-item">
					<a href="#" class="menu-link"> 
						<span class="menu-text"> EVENT </span>
					</a>
				</li>
			</ul>
		</div>
		<!-- =========== 가로 메뉴 끝 =========== -->

	</div>
	<!-- ========== Topbar End ========== -->
</body>
</html>