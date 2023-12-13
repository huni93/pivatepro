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
//String id = (String)session.getAttribute("id");
String password = request.getParameter("password");
MemberDao md = new MemberDao();
Member memdb = md.oneMember(login);
String msg = "탈퇴되지 않았습니다.";
String url = request.getContextPath()+"/member/memberDeleteForm.jsp";

if(memdb!=null) {
	if(memdb.getPassword().equals(password)) {  //비밀번호 확인
		  msg = "탈퇴 되었습니다.";
		  md.deleteMember(login);
		  session.invalidate();
		  url = request.getContextPath()+"/member/index.jsp";
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