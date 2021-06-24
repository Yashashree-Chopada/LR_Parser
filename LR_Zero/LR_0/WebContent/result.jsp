<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.button {
  background-color: #BEBEBE; 
  border: none;
  color: white;
  padding: 15px 40px;

  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;

   width: 200px;
    margin-left:750px;
}


</style>
<title>LR 0 Parser</title>
</head>
<body>
<div>
	<% String check =(String)request.getAttribute("acc"); 
	if(check == "Accepted")
	{%>
		<center><br><br><br><br><h1><% out.print("The given String is Accepted");%></h1></center><br>
	
	<%} %>
	<%if(check != "Accepted")
	{%>
		<center><br><br><br><br><h1><% out.print("The given String is Not Accepted");%></h1></center><br>
		
	<%} %>
	
</div>

<a href="index.jsp" class="button">Back</a>
	

</body>
</html>