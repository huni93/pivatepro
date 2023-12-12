

<%@page import="member.Member"%>
<%@page import="member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String password = request.getParameter("password");
MemberDao md = new MemberDao();
Member member = md.oneMember(id);

String msg = "아이디를 확인하세요";
String url = "loginForm.jsp";
if(member != null) { //id 존재할때
	if (password.equals(member.getPassword())) { //login ok
		session.setAttribute("id", id);
	msg = member.getName() + "님이 로그인 하셨습니다.";
    url = "index.jsp";
	}else {
		msg = "비밀번호를 확인하세요";
	}
}
%>
<script>
 alert("<%=msg%>")
 location.href="<%=url%>"
</script>
</body>
</html>