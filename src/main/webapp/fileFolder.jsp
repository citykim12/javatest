<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>FileFolder</title>
	</head>
	<body>
		<form action="./fileFolderOk.jsp" method="post" name="form" enctype="multipart/form-data">
			<label>아이디~!</label>
			<input type="text" id="bid" name="bid"><br>
			<label>게시판 제목~!</label>
			<input type="text" id="btitle" name="btitle"><br>
			<label>게시판 내용~!</label>
			<input type="text" id="bcontent" name="bcontent"><br>
			<label>작성자~!</label>
			<input type="text" id="bname" name="bname"><br>
			<label>파일 업로드~!</label>
			<input type="file" id="file01" name="file01"><br>
			<input type="submit" value="파일올리기~! 할래??">
			<input type="reset" value="안할래~!?">
		
		</form>
	</body>
</html>