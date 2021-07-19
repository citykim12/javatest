<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>FileFolderOk</title>
	</head>
	<body>
	<%
		String path = request.getRealPath("upload");
		int size = 10 * 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		String bid = multi.getParameter("bid");
		String btitle = multi.getParameter("btitle");
		String bcontent = multi.getParameter("bcontent");
		String bname = multi.getParameter("bname");
		String file01 = multi.getFilesystemName("file01");
	
	%>
	<h3>파일 업로드 정보~!</h3>
		<table>
		<tr>
			<th>아이디~!</th>
			<td><%=bid %></td>
		</tr>
		<tr>
			<th>게시판 제목~!</th>
			<td><%=btitle %></td>
		</tr>
		<tr>
			<th>게시판 내용~!</th>
			<td><%=bcontent %></td>
		</tr>
		<tr>
			<th>작성자~!</th>
			<td><%=bname %></td>
		</tr>
		<tr>
			<th>이미지~!</th>
			<td><img src="./upload/<%=file01 %>"></td>
		</tr>
		
		</table>
	
	</body>
</html>