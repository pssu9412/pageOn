<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en" data-layout="horizontal" data-topbar-color="dark">

    <head>
        <meta charset="utf-8" />
        <title>Page On</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />     
    
    </head>

    <body>
        <!-- Begin page -->
        <div id="wrapper">


            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

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
                                    <img src="${contextPath}/assets/images/pageon/event_banner_ex.png">
                                </div>
                                <div class="event-carousel-item">
                                    <img class="d-block img-fluid" src="${contextPath}/assets/images/small/img-2.jpg" alt="Second slide">
                                </div>
                                <div class="event-carousel-item">
                                    <img src="${contextPath}/assets/images/pageon/event_banner_ex.png">
                                </div>
                                

                            </div>
                        </div>

                        <div class="row works-slide new-works">
                            <div class="slide-title d-flex justify-content-between align-items-baseline">
                                <h3>
                                	<c:if test="${not empty mainPage.genreName}">
						                				${mainPage.genreName}
						            					</c:if>
                                	신작
                                </h3>
                                <!-- <a href="#" class="more-link"><span>더보기</span></a> -->
                                
                            </div>
                            <div class="slide-wrapper">
                            
                            		<c:choose>
                            		
                            			<c:when test="${ empty mainPage.newWorkList }">
                            				<div>조회된 작품이 없습니다.</div>
                            			</c:when>
                            			
                            			<c:otherwise>
                            				<c:forEach var="work" items="${ mainPage.newWorkList }">
                            					<div class="card work-card" onclick="Location.href='${contextPath}'">
                            					
                            						<div class="thumbnail-wrap">
                            							<c:choose>
	                            							<%-- 성인 작품 + 비로그인 또는 미성년 회원 --%>
														                <c:when test="${work.adultYN eq 'Y' and
														                               (empty loginMember or loginMember.adultYN ne 'Y')}">
														
														                    <img class="card-img-top" src="${contextPath}/assets/images/pageon/before_adult.png">
														
														                </c:when>
														                <%-- 성인 인증된 회원 또는 일반 작품 --%>
														                <c:otherwise>
														
														                    <img class="card-img-top" src="${contextPath}${work.workCover}">
														
														                </c:otherwise>
                            							</c:choose>
                            							
                            							<%-- 성인 작품이면 항상 19 표시 --%>
																			    <c:if test="${work.adultYN eq 'Y'}">
																			        <div class="adult-badge">19</div>
																			    </c:if>
													                
                            						</div>
                            						
                            						<div class="card-body">
                            							<div class="title">${ work.workTitle }</div>
	                                        <div class="author">${ writer }</div>
	                                        <div class="like-cnt">
	                                            <i class="fe-heart-on"></i>
	                                            <span>(<fmt:formatNumber value="${work.workFavcnt}" pattern="#,###"/>)</span>
	                                        </div>
                            						
                            						</div>
                            						
                            					</div>
                            				</c:forEach>
                            			
                            			</c:otherwise>
                            		</c:choose>


                            </div>
                            
                        </div>

                        <div class="row works-slide bestseller-works">
                            <div class="slide-title d-flex justify-content-between align-items-baseline">
                                <h3>
                                	<c:if test="${not empty mainPage.genreName}">
						                				${mainPage.genreName}
						            					</c:if>
                                	구매 베스트
                                </h3>
                                <a href="#" class="more-link"><span>더보기</span></a>
                                
                            </div>
                            
                            <div class="slide-wrapper">
                            
                            		<c:choose>
                            		
                            			<c:when test="${ empty mainPage.newWorkList }">
                            				<div>조회된 작품이 없습니다.</div>
                            			</c:when>
                            			
                            			<c:otherwise>
                            				<c:forEach var="work" items="${ mainPage.newWorkList }">
                            					<div class="card work-card" onclick="Location.href='${contextPath}'">
                            					
                            						<div class="thumbnail-wrap">
                            							<c:choose>
	                            							<%-- 성인 작품 + 비로그인 또는 미성년 회원 --%>
														                <c:when test="${work.adultYN eq 'Y' and
														                               (empty loginMember or loginMember.adultYN ne 'Y')}">
														
														                    <img class="card-img-top" src="${contextPath}/assets/images/pageon/before_adult.png">
														
														                </c:when>
														                <%-- 성인 인증된 회원 또는 일반 작품 --%>
														                <c:otherwise>
														
														                    <img class="card-img-top" src="${contextPath}${work.workCover}">
														
														                </c:otherwise>
                            							</c:choose>
                            							
                            							<%-- 성인 작품이면 항상 19 표시 --%>
																			    <c:if test="${work.adultYN eq 'Y'}">
																			        <div class="adult-badge">19</div>
																			    </c:if>
													                
                            						</div>
                            						
                            						<div class="card-body">
                            							<div class="title">${ work.workTitle }</div>
	                                        <div class="author">${ writer }</div>
	                                        <div class="like-cnt">
	                                            <i class="fe-heart-on"></i>
	                                            <span>(<fmt:formatNumber value="${work.workFavcnt}" pattern="#,###"/>)</span>
	                                        </div>
                            						
                            						</div>
                            						
                            					</div>
                            				</c:forEach>
                            			
                            			</c:otherwise>
                            			
                            		</c:choose>


                            </div>
                            
                        </div>

                        <div class="row works-slide favorite-works">
                            <div class="slide-title d-flex justify-content-between align-items-baseline">
                                <h3>
                                	<c:if test="${not empty mainPage.genreName}">
						                				${mainPage.genreName}
						            					</c:if>
                                	선호 베스트
                               	</h3>
                                <a href="#" class="more-link"><span>더보기</span></a>
                                
                            </div>
                            
                            <div class="slide-wrapper">
                            
                            		<c:choose>
                            		
                            			<c:when test="${ empty mainPage.newWorkList }">
                            				<div>조회된 작품이 없습니다.</div>
                            			</c:when>
                            			
                            			<c:otherwise>
                            				<c:forEach var="work" items="${ mainPage.newWorkList }">
                            					<div class="card work-card" onclick="Location.href='${contextPath}'">
                            					
                            						<div class="thumbnail-wrap">
                            							<c:choose>
	                            							<%-- 성인 작품 + 비로그인 또는 미성년 회원 --%>
														                <c:when test="${work.adultYN eq 'Y' and
														                               (empty loginMember or loginMember.adultYN ne 'Y')}">
														
														                    <img class="card-img-top" src="${contextPath}/assets/images/pageon/before_adult.png">
														
														                </c:when>
														                <%-- 성인 인증된 회원 또는 일반 작품 --%>
														                <c:otherwise>
														
														                    <img class="card-img-top" src="${contextPath}${work.workCover}">
														
														                </c:otherwise>
                            							</c:choose>
                            							
                            							<%-- 성인 작품이면 항상 19 표시 --%>
																			    <c:if test="${work.adultYN eq 'Y'}">
																			        <div class="adult-badge">19</div>
																			    </c:if>
													                
                            						</div>
                            						
                            						<div class="card-body">
                            							<div class="title">${ work.workTitle }</div>
	                                        <div class="author">${ writer }</div>
	                                        <div class="like-cnt">
	                                            <i class="fe-heart-on"></i>
	                                            <span>(<fmt:formatNumber value="${work.workFavcnt}" pattern="#,###"/>)</span>
	                                        </div>
                            						
                            						</div>
                            						
                            					</div>
                            				</c:forEach>
                            			
                            			</c:otherwise>
                            			
                            		</c:choose>


                            </div>
                            
                        </div>

                        <div class="row works-slide updated-works">
                            <div class="slide-title d-flex justify-content-between align-items-baseline">
                                <h3>
                                	<c:if test="${not empty mainPage.genreName}">
						                				${mainPage.genreName}
						            					</c:if>
                                	최신 업데이트
                                </h3>
                                <a href="#" class="more-link"><span>더보기</span></a>
                                
                            </div>
                            
                            <div class="slide-wrapper">
                            
                            		<c:choose>
                            		
                            			<c:when test="${ empty mainPage.newWorkList }">
                            				<div>조회된 작품이 없습니다.</div>
                            			</c:when>
                            			
                            			<c:otherwise>
                            				<c:forEach var="work" items="${ mainPage.newWorkList }">
                            					<div class="card work-card" onclick="Location.href='${contextPath}'">
                            					
                            						<div class="thumbnail-wrap">
                            							<c:choose>
	                            							<%-- 성인 작품 + 비로그인 또는 미성년 회원 --%>
														                <c:when test="${work.adultYN eq 'Y' and
														                               (empty loginMember or loginMember.adultYN ne 'Y')}">
														
														                    <img class="card-img-top" src="${contextPath}/assets/images/pageon/before_adult.png">
														
														                </c:when>
														                <%-- 성인 인증된 회원 또는 일반 작품 --%>
														                <c:otherwise>
														
														                    <img class="card-img-top" src="${contextPath}${work.workCover}">
														
														                </c:otherwise>
                            							</c:choose>
                            							
                            							<%-- 성인 작품이면 항상 19 표시 --%>
																			    <c:if test="${work.adultYN eq 'Y'}">
																			        <div class="adult-badge">19</div>
																			    </c:if>
													                
                            						</div>
                            						
                            						<div class="card-body">
                            							<div class="title">${ work.workTitle }</div>
	                                        <div class="author">${ writer }</div>
	                                        <div class="like-cnt">
	                                            <i class="fe-heart-on"></i>
	                                            <span>(<fmt:formatNumber value="${work.workFavcnt}" pattern="#,###"/>)</span>
	                                        </div>
                            						
                            						</div>
                            						
                            					</div>
                            				</c:forEach>
                            			
                            			</c:otherwise>
                            			
                            		</c:choose>


                            </div>
                            
                        </div>

                        <script>
                            $(document).ready(function(){

                                // slick 사용을 위한 구문 - 이벤트배너
                                $('#event-carousel').slick({
                                    dots:true,
                                    speed:500,
                                    prevArrow:
                                    '<button class="slick-custom-prev">' +
                                    '<i class="mdi mdi-chevron-left"></i>' +
                                    '</button>',
                                    nextArrow:
                                    '<button class="slick-custom-next">' +
                                    '<i class="mdi mdi-chevron-right"></i>' +
                                    '</button>'
                                });

                                // slick 사용을 위한 구문 - 작품 랙
                                $('.slide-wrapper').slick({
                                    dots: false,
                                    infinite: false,
                                    speed: 300,
                                    slidesToShow: 6,
                                    slidesToScroll: 6,
                                    prevArrow:
                                    '<button class="slick-custom-prev">' +
                                    '<i class="mdi mdi-chevron-left"></i>' +
                                    '</button>',

                                    nextArrow:
                                    '<button class="slick-custom-next">' +
                                    '<i class="mdi mdi-chevron-right"></i>' +
                                    '</button>',
                                    adaptiveHeight: true,
                                    
                                });
                            })
                        </script>

                        
                    </div> <!-- container -->

                </div> <!-- content -->

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