<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"
    %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>태그관리-상세정보</title>
</head>
<body>
<jsp:include page="../header"></jsp:include>
<h1>자바</h1>
<table border='1'>
<tr>
  <th>콘텐츠일련번호</th>
  <th>회원일련번호</th>
  <th>제목 또는 내용</th>
</tr>
<c:forEach var="tag" items="${tags}">
<tr>
<td>${tag.contentNo}</td>
<td>${tag.memberNo}</td>
<td>${tagDao.getContent(tag.contentNo)}</td>
</tr>
</c:forEach>
</table>
<a href='list'>목록</a>
<jsp:include page="../footer"></jsp:include>
</body>
</html>
