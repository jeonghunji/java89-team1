<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>태그 서블릿 시연</title>
</head>
<body>
<jsp:include page="../header"></jsp:include>
<form action='add' method='POST'>

<table style='border:1px; solid red;'>

<tr><th>ContentNo:</th><td><input name='contentNo' type='text'></td></tr>
<tr><th>TagName:</th><td><input name='tagName' type='text'></td></tr>

</table>

<br><button type='submit'>등록</button>

</form>
</body>

<hr>

<body>
<form action='delete' method='POST'>

<table>

<tr><th>ContentNo:</th><td><input name='ContentNo' type='text'></td></tr>

</table>

<br><button type='submit'>삭제</button>

</form>
<jsp:include page="../footer"></jsp:include>
</body>
</html>
