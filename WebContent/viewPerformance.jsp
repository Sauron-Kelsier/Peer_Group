<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
 
<body>
<form id="viewPerformance" name="viewPerformance" method="post" action="englishQueryPerformance.jsp">
	<div class="nav">
	<pre>
	
			
			
Roll No:	<input type="text" name="rollNumber" value="" >	
								
Name:		<input type="text" name="name" value="" >		

Subject:	<select name="subject">
				<option value="">----Select option----</option>
				<option value="English">English</option>
				<option value="Hindi">Hindi</option>
				<option value="Maths">Maths</option>
				<option value="Science">Science</option>
				<option value="Computer">Computer</option>
				<option value="GK">G.K.</option>		
			</select>
																
Standard:	<select name="standard">
				<option value="">----Select option----</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</select>
					
					
																	
Date:		From:	<input type="date" name="fromDate" value="" >
					
					
            	To:	<input type="date" name="toDate" value="" >
            		
                                            
			<input type="submit" name="submit" value="Search">

</pre>
</div>
</form>			

<%-- 		
	<input type="button" value="Show all the performances roll number wise" onclick="javascript:window.location='http://localhost:9000/viewAllPerformanceRollQuery.jsp'"><br>
	<input type="button" value="Show all the performances date wise" onclick="javascript:window.location='http://localhost:9000/viewAllPerformanceDateQuery.jsp'"><br>
	<input type="button" value="Show all the performances subject wise" onclick="javascript:window.location='http://localhost:9000/viewAllPerformanceSubjectQuery.jsp'"><br>
	<input type="button" value="Show all the performances of an individual" onclick="javascript:window.location='http://localhost:9000/viewPerformanceIndividual.jsp'"><br>
	<input type="button" value="Show all the performances of a date" onclick="javascript:window.location='http://localhost:9000/viewPerformanceDate.jsp'"><br>
	<input type="button" value="Show all the performances of a subject" onclick="javascript:window.location='http://localhost:9000/viewPerformanceSubject.jsp'"><br>
	<p id="bottom" align="right">
		<input type="button" value="Back" onclick="javascript:window.location='http://localhost:9000/teacherOptions.jsp'">
	</p>
	
--%>
</body>
</html>