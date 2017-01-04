<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"
    %>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>테그관리-목록</title>
</head>
<body>
<jsp:include page="../header"></jsp:include>
<h1>테그 정보</h1>
<table border='1'>
<tr>
  <th>테그명</th>
</tr>
<c:forEach var="tag" items="${tags}">
<tr>
<td><a href='detail?tagName=${tag.tagName}'>${tag.tagName}</td></tr>
</c:forEach>
</table>
<jsp:include page="../footer"></jsp:include>
</body>
</html>
