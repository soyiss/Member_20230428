<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오후 3:45
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
${sessionScope.loginEmail} 님 환영해요!<br>
  <button onclick="location.href='/logout'">로그아웃</button>
  <button onclick="fun1()">세션값 js에서 확인</button>
</div>
<%@include file="./conponent/footer.jsp"%>
</body>
<script>
  const fun1 = () => {
    const loginEmail = '${sessionScope.loginEmail}';
    console.log("로그인 이메일: ", loginEmail);
  }

</script>
</html>