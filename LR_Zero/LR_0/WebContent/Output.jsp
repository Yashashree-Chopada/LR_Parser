<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <jsp:useBean id="gram" class="util.Grammar"></jsp:useBean>  
  
  <%@ page import ="java.util.*"%><%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Map.Entry"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.accordion {
  background-color: #eee;
  color: #444;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}

.active, .accordion:hover {
  background-color: #ccc; 
}

.panel {
  padding: 0 18px;
  display: none;
  background-color: white;
  overflow: hidden;
}
</style>
<title>LR 0 Parser</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<h2>LR 0 - Bottom up Parser</h2>

<button class="accordion">Augmented Grammar</button>
<div class="panel">
 <%
ArrayList list = (ArrayList)request.getAttribute("grm");
Iterator itr1 = list.iterator();
%>
<table border="3" class="table table-hover">
  
  <thead>
   
  </thead>
  <tbody >
  <%  for (int i=0 ; i<list.size() ; i++){ %>
    <tr>
     
      <td style="width:0%"><%out.print(list.get(i)); }%></td>
    </tr>
    
  </tbody>
</table>
</div>

<button class="accordion">First Set</button>
<div class="panel">
 <%
 Map<String,Set<String>> s = (HashMap<String, Set<String>>)request.getAttribute("First");

%>
<table border="3" class="table table-hover">
  <thead>
 
  </thead>
  <tbody>
  <%  for(Entry<String, Set<String>> c : s.entrySet()){ %>
    <tr>
     
      <td><%out.print(c.getKey());%> : <%out.print(c.getValue());} %></td>
    </tr>
    
  </tbody>
</table>
</div>

<button class="accordion">Follow Set</button>
<div class="panel">
   <%
 Map<String,Set<String>> s1 = (HashMap<String, Set<String>>)request.getAttribute("Follow");

%>
<table border="3" class="table table-hover">
  <thead>
 
  </thead>
  <tbody>
  <%  for(Entry<String, Set<String>> c : s1.entrySet()){ %>
    <tr>
     
      <td><%out.print(c.getKey());%> : <%out.print(c.getValue());} %></td>
    </tr>
    
  </tbody>
</table>
</div>
<button class="accordion">Cannonical Collection</button>
<div class="panel">
<% ArrayList<lr0.LR0State> ls = (ArrayList<lr0.LR0State>) request.getAttribute("can");

%>
<table border="3" class="table table-hover">
  <thead>

  </thead>
  <tbody>
   <%  for (int i=0 ; i<ls.size() ; i++){ %>
    <tr>
     
      <td ><%out.print(ls.get(i)); }%></td>
    </tr>
    
  </tbody>
</table>



</div>
<button class="accordion">Goto Table</button>
<div class="panel">
<% util.gotoc gototo = (util.gotoc)request.getAttribute("gotot");
ArrayList<Integer> al1 = new ArrayList<Integer>();
ArrayList<String> ch = new ArrayList<String>();

al1 = gototo.getAl();
ch = gototo.getVr();
int xyz = al1.size()/ch.size();


%>
<table border="3" class="table table-hover">
  <thead>
  
  <tr>
 
  <td></td>
  <%for(int i=0;i<ch.size();i++){ %>  
  <td><%out.print(ch.get(i));%></td><%}%>
  </tr>
  	<tr>
     <% int temp=0; 
     for(int i=0;i<gototo.getSt()*ch.size();){%><tr>
     <td><% out.print(i/ch.size());%></td>
  	 <%for(int j=0;j<ch.size();j++)
     {%>
     <td><%out.print(al1.get(i));i++;%></td><%} %></tr><%} %>
     
  
   
  
  </thead>
  
  <tbody>
 
  </tbody>
</table>


</div>
<button class="accordion">Action Table</button>
<div class="panel">
<% util.Actiontable aa = (util.Actiontable)request.getAttribute("act");
ArrayList<util.Action> at = new ArrayList<util.Action>();
ArrayList<String> ts = new ArrayList<String>();

at = aa.getTa();
ts = aa.getVc();//terminal

%>
<table border="3" class="table table-hover">
  <thead>
  <tr>
  <td></td>
  <%for(int i=0;i<ts.size();i++){ %>  
  <td><%out.print(ts.get(i));%></td><%}%>
  </tr>
  	<tr>
     <% int t=0; 
     for(int i=0;i<aa.getAt()*ts.size();){%><tr>
     <td><% out.print(i/ts.size());%></td>
  	 <%for(int j=0;j<ts.size();j++)
     {%>
     <td><%out.print(at.get(i));i++;%></td><%} %></tr><%} %>
     
  
   
  
  </thead>
  
  <tbody>
 
  </tbody>
</table>

</div>
<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
</script>
<div>
<form action="OutputServlet" method ="post">
<center><h4>Enter String</h4>
 <textarea rows="4" cols="60" name="sr">    
</textarea>
 
<br> 
 <input type="submit">  
</center>  
</div>


</body>
</html>
