

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Great Number Game!</title>

</head>
<body>

<h1>Welcome to the Great Number Game!</h1>
<p>I'm thinking of a number between 1 and 100.</p>

<p>Take a guess!</p>
<% String responseType = (String) session.getAttribute("responseType");
if(responseType == "correct"){ %>
	<div class="correct">
		<h3>CORRECT!</h3>
		<p>Play again?</p>
	</div>
<% } else if(responseType == "low"){%>
	
	<div class="low"><h3>Too Low</h3></div>
<% } else if(responseType == "high"){ %>
	<div class="high"><h3>Too High</h3></div>
<% } %>
<form action="/Greate_Number_Game/Home" method="post">
	<input type="number" name="guess"><br>
	<input type="submit" value="Guess">
</form>


</body>
</html>