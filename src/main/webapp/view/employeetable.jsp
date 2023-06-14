<%@page import="com.JBK.EmployeeManagmentSystem.Model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>employee table</title>

<style>
table {
	border-collapse: collapse;
	border-spacing: 5px;
	width: 100%;
	border: 5px solid #ddd;
}

th, td {
	text-align: left;
	padding: 16px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}
</style>


</head>
<body>




	<form action="employeeinsert"  method="post">
		
			<h2>Employee Insert Form</h2>
		
		<label for="eid">Employee id:</label> <input type="number" id="id"
			name="eid" placeholder="Employee id"><br>
		<br> <label for="pid">Personal id:</label> <input type="number"
			id="id" name="eid" placeholder="Personal id"><br>
		<br> <label for="joinningDate">Joinning Date:</label> <input
			type="text" id="joinningDate" name="joinningDate"
			placeholder="joinning Date"><br>
		<br> <label for="pid">Salary :</label> <input type="number"
			id="salary" name="salary" placeholder="Salary"><br>
		<br> <label for="pid">Qualification id:</label> <input
			type="number" id="qid" name="qid" placeholder="Qualification id"><br>
		<br> <label for="name">Is fresher Employee</label> <input
			type="text" id="isfresheremployee" name="isfresheremployee"
			placeholder="yes or No"><br>
		<br>


		<button type="submit">Insert</button>
		<br>
		<br>
   </form>
   
   <form action="employeeupdate"  method="post">
		
			<h2>Employee Update Form</h2>
		
		<label for="eid">Employee id:</label> <input type="number" id="id"
			name="eid" placeholder="Employee id"><br>
		<br> <label for="pid">Personal id:</label> <input type="number"
			id="id" name="eid" placeholder="Personal id"><br>
		<br> <label for="joinningDate">Joinning Date:</label> 
		<input	type="text" id="joinningDate" name="joinningDate"
			placeholder="joinning Date"><br>
		<br> <label for="pid">Salary :</label> <input type="number"
			id="salary" name="salary" placeholder="Salary"><br>
		<br> <label for="pid">Qualification id:</label> <input
			type="number" id="qid" name="qid" placeholder="Qualification id"><br>
		<br> <label for="name">Is fresher Employee</label> <input
			type="text" id="isfresheremployee" name="isfresheremployee"
			placeholder="yes or No"><br>
		<br>


		<button type="submit">Update</button>
		<br>
		<br>
   </form>


	<form action="employeedelete" method="post">
		<label for="eid">Employee id:</label> <input type="number" id="id"
			name="eid" placeholder="Employee id">
		<button type="submit">Delete</button>
		<br>
		<br>
	</form>
	


	<form action="employeetableview" method="post">

		<center>

			<h1 style="background-color: rgb(255, 99, 71);">Employee Table</h1>
		</center>
		<table>
			<tr>
				<th>Employee Id</th>
				<th>Persnoal Id</th>
				<th>Joinning Date</th>
				<th>Salary</th>
				<th>Qualification Id</th>
				<th>fresher employee</th>
				<th>Edit</th>


			</tr>


			<%
			List<TableEmployeeMaster> list = (List<TableEmployeeMaster>) request.getAttribute("al");
			%>

			<%
			for (TableEmployeeMaster c1 : list) {
			%>

			<tr>
				<td>
					<%
					out.print(c1.getEid());
					%>
				</td>
				<td>
					<%
					out.print(c1.getPid());
					%>
				</td>
				<td>
					<%
					out.print(c1.getJoinningDate());
					%>
				</td>
				<td>
					<%
					out.print(c1.getSalary());
					%>
				</td>
				<td>
					<%
					out.print(c1.getQid());
					%>
				</td>
				<td>
					<%
					out.print(c1.getIsfresheremployee());
					%>
				</td>
				
			     <td>
					
                      <a href="updatepage"> Edit</a>
			
				 </td>	
			</tr>
             
            
       
			<%
			}
			%>
		
		
			</form>
</body>

</html>

