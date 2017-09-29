<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
    Cookie[] arr = request.getCookies();

    boolean logined = false;

    for (int i = 0; i < arr.length; i++) {//왜 포문인지 물어보기!

        Cookie ck = arr[i];

        if (ck.getName().equals("loginCookie")) {
            logined = true;
            break;

        }
    }
    if (logined == false) {
        response.sendRedirect("all.jsp");

    }

    //문제가 있음 1. 쿠키시간 연장해야 하는 부분 2.로그아웃
    //2번은 쿠키의 시간을 0으로 만들면 됨 -> fakelogout.jsp
    //쿠키는 파일로 보관된다 브라우저가 열리거나 닫히거나 상관이 없음.
    //중간에 쿠키를 가로채는거 = 후킹
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

    <h1>당신이 이 페이지를 볼 수 있다면 능력자!!</h1>

</body>
</html>