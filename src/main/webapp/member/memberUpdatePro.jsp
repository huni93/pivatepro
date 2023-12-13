<%@page import="member.MemberDao"%>
<%@page import="member.Member"%>
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
Member mem = new Member();  
request.setCharacterEncoding("utf-8");
mem.setId(login); 
mem.setPassword(request.getParameter("password"));
mem.setName(request.getParameter("name"));
mem.setEmail(request.getParameter("email"));
mem.setNickname(request.getParameter("nickname"));
mem.setTel(request.getParameter("tel"));

MemberDao md = new MemberDao();
Member memdb = md.oneMember(login);  //

String msg = "수정 되지 않았습니다.";
String url = request.getContextPath()+"/member/memberUpdateForm.jsp";
if(memdb!=null) {
	if(memdb.getPassword().equals(mem.getPassword())) {  //수정 ok
		  msg = "수정 되었습니다.";
		  md.updateMember(mem);
		  url = request.getContextPath()+"/member/memberinfo.jsp";
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