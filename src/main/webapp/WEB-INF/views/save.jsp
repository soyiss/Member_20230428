<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
<%@include file="./conponent/header.jsp"%>
<%@include file="./conponent/nav.jsp"%>
<div id="section">
<%--    //목적지 (/save),요청방식(post)--%>
    <form action="/save" method="post">
<%--        //input태그의 name이 중요함 ( 안쓰면 에러가 뜬다)--%>
<%--        //onblur : 마우스 클릭 했다가 다른데로 옮기면 함수 발생한다--%>
        <input type="text" name="memberEmail" placeholder="이메일" id="member-email" onblur="email_check()"> <br>

<%--        //발생한 함수에서 뜰 메세지 여기다 적음--%>
        <p id="check-result"></p>
        <input type="text" name="memberPassword" placeholder="비밀번호"> <br>
        <input type="text" name="memberName" placeholder="이름"> <br>
        <input type="text" name="memberBirth" placeholder="생년월일(YYYYMMDD)"> <br>
        <input type="text" name="memberMobile" placeholder="전화번호"> <br>
        <input type="submit" value="회원가입">
    </form>
</div>

</div>
<%@include file="./conponent/footer.jsp"%>
</body>
<script>

    const email_check = () => {
        //마우스가 벗어나면  id가 member-email인 이메일값이 email에 담긴다
        const email = document.getElementById("member-email").value;
        // "check-result"는 위에 p태그에 감싸진 빈칸 divd이 result에 담김
        const result = document.getElementById("check-result");

        $.ajax({
            // 요청 방식 post
            type: "post",

            // 보낼 목적지 /email-check
            url: "/email-check",

            //가지고 갈 data 인풋에 담긴 email값을 memberEmail에 담아서 가져감
            data: {
                "memberEmail": email
            },

            //성공하면 result에 녹색으로 사용가능한 이메일 입니다 뜸
            success: function () {
                result.innerHTML = "사용가능한 이메일입니다.";
                result.style.color = "green";
            },

            //실패하면 result에 빨간색으로 이미 사용중인 이메일입니다 뜨고 콘솔에 에러표시가 뜸(틀리게 쓴게 아니라 원래 뜸)
            error: function () {
                result.innerHTML = "이미 사용 중인 이메일입니다.";
                result.style.color = "red";
            }
        });
    }
</script>
</html>
