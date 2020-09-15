<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link href="./static/styles/styles.css" rel="stylesheet" type="text/css"
	media="screen" />
<meta charset="UTF8">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-dark">
		<thead>
			<tr>
			  <th scope="col">RESULT</th>

			</tr>
		</thead>
		<tbody>
			
				<c:forEach var="dog" items="${dogCollection}">
				<tr>
				<td>	
					${dog}
				</td>
				</tr>
				</c:forEach>
			
		</tbody>
	</table>
</body>
</html>