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

	<div>SELECT DOG PRIORITY AND UNIQUENESS(IF NECESSARY)</div>
	<form class="dogForm" action='./result.html' method='post'>
		<table class="table table-dark">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Priority</th>
					<th scope="col">Breed To Uniquelize</th>
					<th scope="col">Uniqueness Params</th>
				</tr>

			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>BREED <input type="radio" name="priority" value="breed"
						checked></td>
					<td>Husky <input type="checkbox" name="breedToUniquelize"
						value="Husky" /></td>
					<td>name <input type="checkbox" name="uniqueness" value="name" /></td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>PRICE <input type="radio" name="priority" value="price"></td>
					</td>
					<td>Terrier <input type="checkbox" name="breedToUniquelize"
						value="Terrier" /></td>
					<td>age <input type="checkbox" name="uniqueness" value="age" /></td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td></td>
					<td>Chihuahua<input type="checkbox" name="breedToUniquelize"
						value="Chihuahua" /></td>
					<td>color <input type="checkbox" name="uniqueness"
						value="color" /></td>
				</tr>
				<tr>
					<th scope="row">4</th>
					<td></td>
					<td>Bulldog<input type="checkbox" name="breedToUniquelize"
						value="Bulldog" /></td>
					<td>tail <input type="checkbox" name="uniqueness" value="tail" /></td>
				</tr>
				<tr>
					<th scope="row">5</th>
					<td></td>
					<td>Retriever<input type="checkbox" name="breedToUniquelize"
						value="Retriever" /></td>
					<td>type <input type="checkbox" name="uniqueness" value="type" /></td>
				</tr>
				<tr>
					<th scope="row">5</th>
					<td></td>
					<td></td>
					<td>flea <input type="checkbox" name="uniqueness" value="flea" /></td>
				</tr>
				<tr>
					<th scope="row"></th>
					<td></td>
					<td></td>
					<td></td>
					<td><input type="submit" id="submit" value="accept" /></td>
				</tr>
			</tbody>
		</table>
		<!-- 		<div class="divTable" style="width: 1%; border: 1px solid #000;"> -->
		<!-- 			<div class="divTableBody"> -->
		<!-- 				<div class="divTableRow"> -->
		<!-- 					<div class="divTableCell">#&nbsp;</div> -->
		<!-- 					<div class="divTableCell">Priority</div> -->
		<!-- 					<div class="divTableCell">Breed To Uniquelize</div> -->
		<!-- 					<div class="divTableCell">&nbsp;Uniqueness Params</div> -->
		<!-- 				</div> -->
		<!-- 				<div class="divTableRow"> -->
		<!-- 					<div class="divTableCell">&nbsp;1</div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						&nbsp; BREED : <input type="radio" name="priority" value="breed" -->
		<!-- 							checked> -->
		<!-- 					</div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						Husky <input type="checkbox" name="breedToUniquelize" -->
		<!-- 							value="Husky" /> -->
		<!-- 					</div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						&nbsp;name : <input type="checkbox" name="uniqueness" value="name" /> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 				<div class="divTableRow"> -->
		<!-- 					<div class="divTableCell">&nbsp;2</div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						&nbsp;PRICE : <input type="radio" name="priority" value="price"> -->
		<!-- 					</div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						Terrier <input type="checkbox" name="breedToUniquelize" -->
		<!-- 							value="Terrier" /> -->
		<!-- 					</div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						&nbsp;age : <input type="checkbox" name="uniqueness" value="age" /> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 				<div class="divTableRow"> -->
		<!-- 					<div class="divTableCell">&nbsp;3</div> -->
		<!-- 					<div class="divTableCell"></div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						Chihuahua<input type="checkbox" name="breedToUniquelize" -->
		<!-- 							value="Chihuahua" /> -->
		<!-- 					</div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						&nbsp;color : <input type="checkbox" name="uniqueness" -->
		<!-- 							value="color" /> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 				<div class="divTableRow"> -->
		<!-- 					<div class="divTableCell">&nbsp;4</div> -->
		<!-- 					<div class="divTableCell"></div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						Bulldog<input type="checkbox" name="breedToUniquelize" -->
		<!-- 							value="Bulldog" /> -->
		<!-- 					</div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						&nbsp;tail : <input type="checkbox" name="uniqueness" value="tail" /> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 				<div class="divTableRow"> -->
		<!-- 					<div class="divTableCell">&nbsp;5</div> -->
		<!-- 					<div class="divTableCell"></div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						Retriever<input type="checkbox" name="breedToUniquelize" -->
		<!-- 							value="Retriever" /> -->
		<!-- 					</div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						&nbsp;type : <input type="checkbox" name="uniqueness" value="type" /> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 				<div class="divTableRow"> -->
		<!-- 					<div class="divTableCell">&nbsp;6</div> -->
		<!-- 					<div class="divTableCell"></div> -->
		<!-- 					<div class="divTableCell"></div> -->
		<!-- 					<div class="divTableCell"> -->
		<!-- 						&nbsp;flea : <input type="checkbox" name="uniqueness" value="flea" /> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 		</div> -->
		<input type="submit" id="submit" value="accept" />
	</form>


	<c:if test="${unselectedParameters!=null }">
		<font color="${redColor}">${unselectedParameters }</font>
	</c:if>

</body>
</html>