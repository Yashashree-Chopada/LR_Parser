<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.center
{
margin-left: auto;
  margin-right: auto;
}
.al
{
align:center;
}
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
   margin-top:45px;
    margin-left:500px;
}
.mt
{
color:red;
}

</style>
<title>LR Zero Parser</title>
</head>
<body>
<div>
<h2>Group Number - 1</h2>
<marquee behavior="scroll" direction="left" class="mt">This Project Submitted by Students of International Institute of Information Technology (I Square IT)</marquee>


<form class="al" action="GrammerServlet" method ="post">   
<br>  
<h1 > Insert Grammer here </h1>
<!--  <input type="text" placeholder="Enter Production" name="pr" required = "required">-->
  <textarea rows="9" cols="70" name="tr">    
</textarea>  
 
<br> 
 <input type="submit" class="button">  
</form>  


</body>
</html>