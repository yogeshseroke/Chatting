<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="green">
<center>
<form action="" method="post">
<input type="textbox" name="txt"  />
<br>
<br>
<input type="submit" name="btnsubmit1" value="Create Cookie" />
<br>
<br>
<input type="submit" name="btnsubmit2" value="Show" />
<br>
<br>
<input type="submit" name="btnsubmit3" value="SEND" />
<br>
<br>
</form>

<% 

if(request.getParameter("btnsubmit1")!=null)
{
     Cookie c=new Cookie("a",request.getParameter("txt"));
     
     c.setMaxAge(5000);
     
     response.addCookie(c);
}
if(request.getParameter("btnsubmit2")!=null)
{
    Cookie ar[]=request.getCookies();
    
    for(int i=0;i<ar.length;i++)
    {
    	if(ar[i].getName().equals("a"))
    	{
    		//response.sendRedirect("p2.jsp"+ar[i].getValue());
    		out.println(ar[i].getValue());
    	}
    	
    }
}

if(request.getParameter("btnsubmit3")!=null)
{
    Cookie ar[]=request.getCookies();
    
    for(int i=0;i<ar.length;i++)
    {
    	if(ar[i].getName().equals("a"))
    	{
    		response.sendRedirect("p2.jsp");
    		//out.println(ar[i].getValue());
    	}
    	
    }
}
%>
</center>
</body>
</html>