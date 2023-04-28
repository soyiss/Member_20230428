<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="nav">
    <ul>
        <li>
            <a href="/">홈으로.</a>
        </li>
        <li>
            <a href="/save">회원가입</a>
        </li>
        <li>
            <a href="/login">로그인</a>
        </li>
        <li>
            <a href="/list">회원목록</a>
        </li>
        <%-- 로그인을 했으면 로그아웃이 보이고 안했으면 로그인이보임
        jsp에서 if(=c:when) - else(=c:otherwise) 쓴다--%>
        <li class="login-name">
        <c:choose>
            <c:when test="${sessionScope.loginEmail != null}">
                <a href="/mypage" style="color: black;">${sessionScope.loginEmail} 님 환영해요!</a>
                <a href="/logout">logout</a>
            </c:when>
            <c:otherwise>
                <a href="/login">login</a>
            </c:otherwise>
        </c:choose>

        </li>


    </ul>

</div>
