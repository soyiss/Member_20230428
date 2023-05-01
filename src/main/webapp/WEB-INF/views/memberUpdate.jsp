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
  <h2>회원수정 </h2>
  <form action="/update" method="post" name="updateForm">
    <input type="text" name="id" value="${member.id}" readonly placeholder="아이디"><br>
    <input type="text" name="memberEmail" value="${member.memberEmail}" readonly placeholder="이메일"><br>
    <input type="text" name="memberPassword" id="memberPassword" value="${member.memberPassword}" placeholder="비밀번호"><br>
    <input type="text" name="memberName" value="${member.memberName}" placeholder="이름"><br>
    <input type="text" name="memberBirth" value="${member.memberBirth}" readonly placeholder="생년월일"><br>
    <input type="text" name="memberMobile" value="${member.memberMobile}" placeholder="전화번호"><br>
    <input type="button" onclick="update_check()" value="수정">

  </form>
</div>
<%@include file="./conponent/footer.jsp"%>

</body>
<script>
  const update_check = () => {
    const inputPass = document.getElementById("memberPassword").value;
    const DBPass ='${member.memberPassword}';
    if(inputPass == DBPass){
      document.updateForm.submit();
    }else{
      alert("비밀번호가 일치하지 않습니다!!")
    }
  }
</script>
</html>
