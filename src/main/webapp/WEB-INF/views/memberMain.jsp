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
  <button onclick="fun1()">세션값 js에서 확인</button>
  <button onclick="update()">정보 수정</button>



  <%-- 수정요청은 memberMain.jsp에서 시작
      컨트롤러에서 세션 값을 가져올 때 : session.getAttribute("loginEmail")사용
      수정페이지(memberUpdate.jsp)에서 이름, 전화번호만 수정가능
      그리고 비밀번호 입력칸은 비워두고 사용자 입력을 받아서
      기존 비밀번호와 일치하면 수정처리, 일치하지 않으면 alert으로 비밀벊호 불일치 출력
      --%>
</div>

<%@include file="./conponent/footer.jsp"%>
</body>
<script>
  const fun1 = () => {
    const loginEmail = '${sessionScope.loginEmail}';
    console.log("로그인 이메일: ", loginEmail);
  }

  const update = () => {
    <%--const loginEmail = '${sessionScope.loginEmail}';--%>
    location.href="/update";
  }

</script>
</html>