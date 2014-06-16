<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="test.Server" %>
<%@page import="java.util.*" %>

<% 

	Server obj=new Server();
	
	// Takes in all the values from the user and stores in the form of key-value pairs
	Map<String,String> data=new HashMap<String,String>();
	
	// Filter the fields that are not null and stores them as key value pairs
	Map<String,String> queryRecord=new HashMap<String,String>();
	
	int count=0;	// to decide the number of non-empty fields
	
	data.put("roll_number",request.getParameter("rollNumber"));		// getting the roll number from the front end
	data.put("name",request.getParameter("name"));				// getting the name
	data.put("subject",request.getParameter("subject"));	// getting the subject
	data.put("standard",request.getParameter("standard"));		// getting the class of the student
	data.put("fromDate",request.getParameter("fromDate"));	// getting the 'from date' from the front end
	data.put("toDate",request.getParameter("toDate"));	// getting the 'to date' from the front end
	
	Iterator it=data.entrySet().iterator();
	String key=new String();
	String val=new String();
	try
	{
		while(it.hasNext())
		{
			Map.Entry pairs=(Map.Entry)it.next();
			//System.out.println(pairs.getKey()+"="+pairs.getValue());
			val=pairs.getValue().toString();
			if(val!="")
			{

				// inserting the non empty records in the hashmap
				queryRecord.put(pairs.getKey().toString(),pairs.getValue().toString());
				count++;	// calculating number of non empty fields
			}
		
			it.remove();
		}
		System.out.println(queryRecord);
		//obj.babaQuery(queryRecord,count);	
	}
	catch(NoSuchElementException e)
	{
		System.out.println("Please enter some value in the fields");
		return;
	}
	
	// calling the method for dynamic query
	
	
	//System.out.println(queryRecord);
	
	
	
	
	// Map<value received,table attribute name>
	
	
//	System.out.println(rollNumber+"\n"+name+"\n"+subject+"\n"+standard+"\n"+fromDate+"\n"+toDate);

	
		
%>
	