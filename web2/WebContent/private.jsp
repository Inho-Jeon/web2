<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
String result = "";
	if(session.getAttribute("secret")==null) {
		
		
		response.sendRedirect("all.jsp");
		}else{
			result = "LOGINED";
		}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>PRIVATE JSP PAGE</h1>
<h1><%=result %></h1>
</body>
</html>