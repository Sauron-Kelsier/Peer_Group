<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="test.Server" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Learn Center | Teachers</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Molengo_400.font.js"></script>
<script type="text/javascript" src="js/Expletus_Sans_400.font.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.bg, .box2{behavior:url("js/PIE.htc");}</style>
<![endif]-->
</head>
<body id="page4">
<div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <div class="wrapper">
        <nav>
          <ul id="menu">
             <li><a href="index.html">About App</a></li>
            <li><a href="students.html">Students</a></li>
            <li><a href="performance.html">Performance</a></li>
            <li><a href="questions.html">Questions</a></li>
            <li><a href="quiz.html">Quiz</a></li>
            <li class="end"><a href="contacts.html">Contacts</a></li>
          </ul>
        </nav>
        <ul id="icons">
          <li><a href="#"><img src="images/icons1.jpg" alt=""></a></li>
          <li><a href="#"><img src="images/icons2.jpg" alt=""></a></li>
        </ul>
      </div>
      <div class="wrapper">
        <h1><a href="index.html" id="logo">Quiz It</a></h1>
      </div>
      <div id="slogan">Quiz It<span>for knowledge</span> </div>
    </header>
    <!-- / header -->
  </div>
</div>
<div class="body2">
  <div class="main">
    <!-- content -->
    <section id="content">
      <div class="box1">
        <div class="wrapper">
          <article class="col1">
            <div class="pad_left1">
              <h2>View Questions</h2>


<%


// Building the query and finally sending it for execution and record retrieving
	Server obj=new Server();
	int flag=0;			// for knowing whether 1 WHERE clause has been sued in the query or not
	
	String subject=new String(request.getParameter("subject"));
	String standard=new String(request.getParameter("standard"));
	String level=new String(request.getParameter("level"));
	String keyword=new String(request.getParameter("keyword"));
	String fromDate=new String(request.getParameter("fromDate"));
	String toDate=new String(request.getParameter("toDate"));
	
	String query=new String("SELECT * FROM question_table WHERE");
	
	if(!subject.equals(""))
	{
		query=query.concat(" subject LIKE '"+subject+"'");
		flag=1;		// denoting that one WHERE has been used and AND has to be used in the coming conditions
	}
	
	
	// if standard field is given, then this block will be entered
	if(!standard.equals(""))
	{
		if(flag==1)		// checking if 1st conditional clause or not
		{
			query=query.concat(" AND");
		}
		query=query.concat(" std LIKE '"+standard+"'");
		flag=1;
	}
	
	
	// search on the basis of level of question assigned by the teacher during authentication
	if(!level.equals(""))
	{
		if(flag==1)		// checking if 1st conditional clause or not
		{
			query=query.concat(" AND");
		}
		query=query.concat(" level LIKE '"+level+"'");
		flag=1;
	}
	
	
	// adding the query for using regular expressions for searching questions via keyword
	if(!keyword.equals(""))
	{
		if(flag==1)		// checking if 1st conditional clause or not
		{
			query=query.concat(" AND");
		}
		query=query.concat(" question REGEXP '"+keyword+"'");
		flag=1;
	}

	
	// if both the dates are given then the questions within the range will come as the output
	if(!fromDate.equals("") && !toDate.equals(""))
	{
		if(flag==1)
		{
			query=query.concat(" AND");
		}
		query=query.concat(" date between '"+fromDate+"' AND '"+toDate+"'");
	}
	
	// if From Date is given then the parameter is the lower value 
	else if(!fromDate.equals(""))
	{
		if(flag==1)
		{
			query=query.concat(" AND");
		}
		query=query.concat(" date > '"+fromDate+"'");
	}
	
	// if To Date is given then the parameter is the higher value
	else if(!toDate.equals(""))
	{
		if(flag==1)
		{
			query=query.concat(" AND");
		}
		query=query.concat(" date < '"+toDate+"'");
	}
	
	ResultSet res=obj.questionQuery(query);
	
	 out.print("<table border='5' cellspacing=5 cellpadding=2>");
out.print("<tr><td><B>Question</B></a></td><td><B>Answer</B></td><td><B>Date</B></td><td><B>Subject</B></td><td><B>Level</B></td><td><B>Standard</B></td></tr>");	
	
	while(res.next())
	{
		out.println("<tr><td>"+res.getString("question")+"</td>");
		out.println("<td>"+res.getString("answer")+"</td>");
		out.println("<td>"+res.getString("date")+"</td>");
		out.println("<td>"+res.getString("subject")+"</td>");
		out.println("<td>"+res.getString("level")+"</td>");
		out.println("<td>"+res.getString("std")+"</td></tr>");
	}
	
	out.print("</table>");		
%>



</div>
          </article>
          <article class="col2 pad_left2">
			  
            <div class="pad_left1">
              <h2>Miscellaneous <span>Info</span></h2>
              <p>In normal classroom interaction there will be a teacher who monitors and organizes the activities. The teacher will divide the students into the groups and organizes the quizes to test their understanding of the material which was taught in the class. But, this organization of quizes to manage and to monitor each individual's performance in the class tends to be harder. To resolve this problem we are presenting a new solution of evaluating the students performance which will also provide a complete report of them automatically to the teacher.</p>
            </div>
          </article>
        </div>
      </div>
    </section>
    <!-- content -->
    <!-- footer -->
    <footer>
      <div class="wrapper">
        <div class="pad1">
          <div class="pad_left1">
            <div class="wrapper">
             
              <article class="col_2 pad_left2">
                <h3>Developers:</h3>
                <ul class="list2">
                  <li><a href="#">Sukalyan</a></li>
                  <li><a href="#">Vamshi</a></li>
                  <li><a href="#">Rajat</a></li>
                  <li><a href="#">Suman</a></li>
                </ul>
              </article>
              <article class="col_3 pad_left2">
                <h3>Mentors:</h3>
                <ul class="list2">
                  <li><a href="#">Nilesh (google) </a></li>
                  <li><a href="#">Rahea sandalwala</a></li>
                  <li><a href="#">Yougansh Sharma </a></li>
               
                </ul>
              </article>
            
            </div>
           
          </div>
        </div>
      </div>
    </footer>
    <!-- / footer -->
  </div>
</div>
<script type="text/javascript">Cufon.now();</script>
<div align=center>This is copyright of <a href="#">Quiz IT app</a></div></body>
</html>
