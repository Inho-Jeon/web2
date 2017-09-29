<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//개발자가 직접 만드는 쿠키
	Cookie cookie = new Cookie("loginCookie", "ADMIN");//쿠키값에 한글 안됨 쿠키이름:loginCookie 쿠키값: ADMIN

	cookie.setMaxAge(60 * 5);

	response.addCookie(cookie);//직접 보내야해서 이거 씀
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>쿠키가 발행되었습니다.</h1>

</body>
</html>