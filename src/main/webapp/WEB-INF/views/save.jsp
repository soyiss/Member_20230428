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
</head>
<body>
<%@include file="./conponent/header.jsp"%>
<%@include file="./conponent/nav.jsp"%>
<div id="section">
    <h2>회원가입</h2>
    <form action="/save" method="post" name="saveForm">
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
                <th>이름</th>
                <td>
                    <input type="text" name="memberName" id="member-name" placeholder="이름 입력">
                </td>
            </tr>
            <tr>
                <th>생년월일</th>
                <td>
                    <input type="text" name="memberBirth" id="member-Birth" placeholder="주민번호 앞자리 입력">
                </td>
            </tr>
            <tr>
                <th>전화번호</th>
                <td>
                    <input type="text" name="memberMobile" id="member-mobile" placeholder="000-0000-0000">
                </td>
            </tr>
            <tr>
                <!--  colspan=2는 2칸을 하나로 합침(병합)
                      위아래를 합칠땐 rowspan을 쓴다 -->
                <td colspan="2">
                    <input  type="button" onclick="input_check()" value="회원가입" style="margin: auto">
                </td>
            </tr>
        </table>
    </form>
</div>
<%@include file="./conponent/footer.jsp"%>
</body>
<script>
    const input_check = () => {
        const memberEmail = document.getElementById("member-email");
        if(memberEmail.value == ""){
            alert("이메일을 입력해주세요");
            memberEmail.focus();
        } else{
            document.saveForm.submit();
        }
    }
</script>
</html>
