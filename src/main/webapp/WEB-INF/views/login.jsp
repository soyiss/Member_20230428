<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오후 1:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
<%@include file="./conponent/header.jsp"%>
<%@include file="./conponent/nav.jsp"%>
<div id="section">
    <div class="login">
        <h2>로그인</h2>
        <form action="/login" method="post" id="save-form">
            <table>
                <tr>
                    <th>이메일</th>
                    <td>
                        <input type="text" name="memberEmail" id="member-email" placeholder="이메일 입력">
                    </td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td>
                        <input type="text" name="memberPassword" id="member-password" placeholder="비밀번호 입력">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="로그인">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<%@include file="./conponent/footer.jsp"%>
</body>
<script>
    <!-- 이벤트 리스너 적용 -->
    const saveForm = document.getElementById("save-form");
    saveForm.addEventListener("submit", function (e) {
        e.preventDefault(); // 해당 요소의 기본 동작을 수행하지 않을 때
        // 로그인 버튼을 아무리 눌러도 서브밋을 막음

        const email = document.getElementById("member-email");
        const password = document.getElementById("member-password");
        if(email.value == ""){
            alert("이메일을 입력하세요");
            email.focus();
        }else if(password.value == ""){
            alert("비밀번호를 입력하세요");
            password.focus();
        }else{
            saveForm.submit();
        }

    });
</script>
</html>
