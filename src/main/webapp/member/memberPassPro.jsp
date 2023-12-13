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
String password = request.getParameter("password");
String passcheck = request.getParameter("passcheck");

MemberDao md = new MemberDao();
Member memdb = md.oneMember(login);

String msg = "비밀번호 수정을 실패 했습니다.";
String url = request.getContextPath()+"/member/memberPassForm.jsp";

if(memdb!=null) {
	if(memdb.getPassword().equals(password)) { 
		  md.passMember(login, passcheck);
		  msg = login+"님이 비밀번호가 수정 되었습니다.";	  
		  url = "index.jsp";
	}else {
		msg="비밀번호가 틀렸습니다.";
	}
}
%>
<script>
 alert("<%=msg%>")
 location.href="<%=url%>"
</script>
</body>
</html>