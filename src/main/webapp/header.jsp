<%@ page 
    language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true" %>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id='header' style='background-color:gray; height:40px;position:relative;'>
  <div style='width:300px; height:38px; position:absolute; left:0px; top:0px;'>
    <img src='../image/logo.jpeg'  height='30' style='float:left; margin-top:6px; margin-left:6px;'>
    <div style='color:white; font-weight:bold; margin-left:60px; padding-top:7px; font-family:돋움체,sans-serif; font-size:x-large;'>교육센터관리시스템</div>
  </div>

  <div style='height:30px; float:right; margin:5px;'>
    <c:choose>
      <c:when test="${not empty member}">
        <img src='../upload/${photoPath}' height='30' style='vertical-align:middle;'>
        <span>${member.name}</span>
        <a href='../auth/logout'>로그아웃</a>
      </c:when>
      <c:otherwise>
        <a href='../auth/login'>로그인</a>
      </c:otherwise>
    </c:choose>
  </div>

</div>

<c:if test="${isStud}">
  <div style='text-align:right;'>
  <a href='../lectureappy/list?memberNo=${member.memberNo}'>강의조회</a>
  <a href='../lectureappy/reqlist?memberNo=${member.memberNo}'>신청목록</a>
  </div>
</c:if>

<div style='text-align:left;'>
<a href='../student/list'>학생정보</a>
<a href='../teacher/list'>강사정보</a>
<a href='../manager/list'>매니저정보</a>
<a href='../feed/list'>피드</a>
<a href='../board/list'>게시판</a>
</div><br>
