<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>할일 정보</h1>
<a href='form.html'>추가</a><br>
<table border='1'>
<tr>
  <th>번호</th>
  <th>순서</th>
  <th>이름</th>
  <th>프로젝트명</th>
  <th>상태</th>
  <th>등록일</th>
</tr>
<c:forEach var="todo" items="${todoes}">
<tr> 
  <td><a href='detail?tdno=${todo.todoNo}'>${todo.todoNo}</a></td>
  <td>${todo.sequence}</td>
  <td>${todo.name}</td> 
  <td>${todo.title}</td>
  <td>${todo.state}</td>
  <td>${todo.registerDate}</td>
</tr>
</c:forEach>
</table>

