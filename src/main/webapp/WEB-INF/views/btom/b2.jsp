<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>b2.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
</head>
<body>
<p><br /></p>
<div class="container">
	<h2>이곳은 btom 폴더의 b2.jsp 입니다.</h2>
	<div>
		<%-- <a href="${ctp}/btom/b2" class="btn btn-primary">b2호출</a> --%>
		<a href="b2?name=btom" class="btn btn-primary">b2호출</a>
	</div>
	<hr />
	<div>
		<!-- 저장소에 담아서 보냈을때 -->
		<c:if test="${!empty name && !empty age}">
			넘어온 값 : ${name} / ${age}
		</c:if>	
		<!-- query 방식으로 보낸 값을 읽을때 param을 사용 -->
		<%-- <c:if test="${!empty param.name}">넘어온 이름 : ${param.name}</c:if>	 --%>
	</div>
	<hr />
	<div>
		<!-- <form name="myform" method="post" action="b2Ok"> -->
		<form method="post">
			<div>성명 : <input type="text" name="name" value="${name}" class="form-control" /></div>
			<div>나이 : <input type="number" name="age" value="${age}" min="0" max="99" class="form-control" /></div>
			<div><input type="submit" value="전송" class="btn btn-secondary mt-3" /></div>
		</form>
	</div>
	<hr />
	<p>
		<a href="${ctp}/" class="btn btn-danger">Home으로</a>
	</p>
</div>
<p><br /></p>
</body>
</html>