<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>First class: Index</title>
		<style type="text/css">
			div{border:1px solid black; width:400px; height:60px;
				text-align:center;}
		</style>
	</head>
	<body>
		<div><h3>Main Page</h3></div>
		<%
			if(session.getAttribute("sessoin_flag")==null){
		%>
			<ul>
				<li><a href="login.jsp">로그인~!</a></li>
				<li><a href="member.jsp">회원가입~!</a></li>
			</ul>
		<%		
			}else{
		%>
			<h3><%=session.getAttribute("sessoin_nickname") %>님 로그인 되었습니다~!</h3>
			<ul>
				<li><a href="logout.jsp">로그아웃~!</a></li>
				<li><a href="./board/boardList.jsp">게시판~!</a></li>
				<li><a href="modify.jsp">회원정보수정~!</a></li>
				<li><a href="memberList.jsp">전체회원리스트~!</a></li>
			</ul>
		<%		
			}
		%>
		
	</body>
</html>