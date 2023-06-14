
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert customer</title>

</head>
<body>





<form action="employeeinsert" method="post">
		<center><h2>Employee Insert Form</h2></center>
		<label for="eid">Employee id:</label> 
		<input type="number"id="id" name="eid" placeholder="Employee id" ><br><br>
		
		<label for="pid">Personal id:</label> 
		<input type="number"id="id" name="eid" placeholder="Personal id" ><br><br>
		
		<label for="joinningDate">Joinning Date:</label> 
		<input type="text" id="joinningDate" name="joinningDate" placeholder="joinning Date" ><br><br>
		
		<label for="pid">Qualification id:</label> 
		<input type="number"id="qid" name="qid" placeholder="Qualification id" ><br><br>
		
	    <label for="name" >Is fresher Employee</label>
		<input type="text" id="isfresheremployee" name="isfresheremployee" placeholder="yes or No"><br><br>
		
		
		<button type="submit">Insert</button>
		
		
	</form>
	
	<br>
	<br>
	
</body>
</html>


