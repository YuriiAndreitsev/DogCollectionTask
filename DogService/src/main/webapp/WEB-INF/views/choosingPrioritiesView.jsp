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
	<div>SELECT DOG PRIORITY AND UNIQUENESS(IF NECESSARY)</div>
	<form class="dogForm" action='./result.html' method='post'>
		<div class="divTable" style="width: 1%; border: 1px solid #000;">
			<div class="divTableBody">
				<div class="divTableRow">
					<div class="divTableCell">#&nbsp;</div>
					<div class="divTableCell">Priority</div>
					<div class="divTableCell">&nbsp;Uniqueness</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">&nbsp;1</div>
					<div class="divTableCell">
						&nbsp; BREED : <input type="radio" name="priority" value="breed"
							checked>
					</div>
					<div class="divTableCell">
						&nbsp;name : <input type="checkbox" name="uniqueness" value="name" />
					</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">&nbsp;2</div>
					<div class="divTableCell">
						&nbsp;PRICE : <input type="radio" name="priority" value="price">
					</div>
					<div class="divTableCell">
						&nbsp;age : <input type="checkbox" name="uniqueness" value="age" />
					</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">&nbsp;3</div>
					<div class="divTableCell">
						Chihuahua<input type="checkbox" name="breedToUniquelize"
							value="Chihuahua" />
					</div>
					<div class="divTableCell">
						&nbsp;color : <input type="checkbox" name="uniqueness"
							value="color" />
					</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">&nbsp;4</div>
					<div class="divTableCell">
						Bulldog<input type="checkbox" name="breedToUniquelize"
							value="Bulldog" />
					</div>
					<div class="divTableCell">
						&nbsp;tail : <input type="checkbox" name="uniqueness" value="tail" />
					</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">&nbsp;5</div>
					<div class="divTableCell">
						Terrier <input type="checkbox" name="breedToUniquelize"
							value="Terrier" />
					</div>
					<div class="divTableCell">
						&nbsp;type : <input type="checkbox" name="uniqueness" value="type" />
					</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">&nbsp;6</div>
					<div class="divTableCell">
						Husky <input type="checkbox" name="breedToUniquelize"
							value="Husky" />
					</div>
					<div class="divTableCell">
						&nbsp;flea : <input type="checkbox" name="uniqueness" value="flea" />
					</div>
				</div>
			</div>
		</div>
		<input type="submit" id="submit" value="accept" />
	</form>
</body>
</html>