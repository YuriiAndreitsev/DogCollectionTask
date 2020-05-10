<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link href="./static/styles/styles.css" rel="stylesheet" type="text/css"
	media="screen" />
<meta charset="UTF8">
<title>Insert title here</title>
</head>
<body>

			<c:forEach var="dog" items="${dogCollection}">
				${dog}
				<hr>
			</c:forEach>

</body>
</html>