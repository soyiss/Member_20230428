<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-01
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
<%@include file="./conponent/header.jsp"%>
<%@include file="./conponent/nav.jsp"%>
<div id="section">
  <h2>회원목록 상세조회</h2>
  <table>
    <tr>
      <th>회원번호</th>
      <td>${member.id}</td>
    </tr>
    <tr>
      <th>이메일</th>
      <td>${member.memberEmail}</td>
    </tr>
    <tr>
      <th>이름</th>
      <td>${member.memberName}</td>
    </tr>
    <tr>
      <th>생년월일</th>
      <td>${member.memberBirth}</td>
    </tr>
    <tr>
      <th>전화번호</th>
      <td>${member.memberMobile}</td>
    </tr>

  </table>
</div>
<%@include file="./conponent/footer.jsp"%>

</body>
</html>
