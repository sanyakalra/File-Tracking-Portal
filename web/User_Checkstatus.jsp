
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<title>Checkstatus</title>
<style>
#header{
         font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
         text-align:center;
      	 background-color:#000080;
    	 color:white;
    	 padding:20px;
	 margin-top:0px;
}
h3{
    color:black;
}
ul {
    line-height:40px;
    font-size:20px;
    left:0px;
    float: left;
    list-style-type: none;
    height:435px;	      
}
li { 
    margin:5px;
    padding: 8px;
    width:170px;
    background-color :#33b5e5;
    color: #ffffff;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
}
#footer {
    background-color:#000080;
    color:white;
    clear:both;
    position:relative;
    text-align:center;
    padding:10px;	 	 
}
a#log
{
  color:white;
  position:absolute;
  right: 100px;
  top: 100px;
}

</style>
</head>

<body>
<div id="header">
<h1>User Module</h1>
<a id="log" href="LogOut">LOG OUT </a> 
</div>

<ul>
  <li style="color:#708090">Check Status</li>
   <li><a href="History" style="text-decoration:none;">History</a></li>
  <li><a href="User_Dispatch1.html" style="text-decoration:none;">Dispatch</a></li>  
</ul>

<form action="CheckStatus2" method="POST" style="margin-top:30px"  >
Select File ID : 
<select name="FileID" id="FileID">

        <% Iterator <String> itr;%>
    <%List data1 =(List)request.getAttribute("Drop_File");
    for (itr = data1.iterator();
    itr.hasNext();){%> 
         
     <option><%= (String)(itr.next())%></option>

 <%} %>
 </select>
<br>
<input type="submit" value="Submit" />
</form>

<div id="footer">
Copyright @ pec.ac.in
</div>

</body>

</html>
