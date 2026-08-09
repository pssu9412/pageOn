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
	<!-- Begin page -->
	<div id="wrapper">
		
		<div class="content-page">
		
			<!-- 여기에 header -->
			<jsp:include page="/WEB-INF/views/common/header.jsp" />
			
			
			<!-- 여기부터 본문 -->
			<div class="content">
			
				<!-- 여기에 sidebar -->
				<jsp:include page="/WEB-INF/views/common/sidebar.jsp" />
				
				
				
				<!-- 여기부터 내용 작성하면 될듯 -->
			
			
			</div><!-- content 끝 -->
		
		<!-- 여기에 footer -->
		<jsp:include page="/WEB-INF/views/common/footer.jsp" />
		
		</div> <!-- content-page 끝 -->
		
	
	
	</div> <!-- wrapper 끝 -->
	
	
	<!-- 여기에 setting -->
	<jsp:include page="/WEB-INF/views/common/setting.jsp" />
	
</body>
</html>