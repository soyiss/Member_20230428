<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-01
  Time: 오전 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <h2>회원목록 리스트</h2>
  <table>
    <tr>
      <th>회원번호</th>
      <th>이메일</th>
<%--      <th>비밀번호</th>--%>
      <th>이름</th>
      <th>생년월일</th>
      <th>전화번호</th>
      <th>상세조회</th>
      <th>삭제</th>
    </tr>

<%-- 가지고온 list를(객체 여러개) 하나씩 반복해서 뿌려줘야되니까 for문을 쓴다 --%>
    <c:forEach items="${memberList}" var="member">
      <tr>
<%--    id를 클릭 했을때 상세조회 함수를 호출함      --%>
      <td onclick="member_detail_ajax('${member.id}')">${member.id}</td>
      <td>${member.memberEmail}</td>
<%--      <td>${member.memberPassword}</td>--%>
      <td>${member.memberName}</td>
      <td>${member.memberBirth}</td>
      <td>${member.memberMobile}</td>
      <td>
          <button onclick="detail_member('${member.id}')">조회</button>
      </td>
      <td>
          <button onclick="delete_member('${member.id}')">삭제</button>
      </td>
      </tr>
    </c:forEach>
  </table>
    <div id="detail-area"></div>
</div>
<%@include file="./conponent/footer.jsp"%>
</body>
<script>
    const member_detail_ajax = (id) => {
        const resultArea = document.getElementById("detail-area");
      $.ajax({
        type:"get",
        url:"/detail-ajax",
        data: {
            "id": id
        },
          //res에 memberDTO를 담아와서 필드값을 화면에 뿌려줌
        success: function (res){
            let result = "<table>";
            result += "<tr>";
            result += "<td>" + res.memberEmail + "</td>";
            result += "<td>" + res.memberName + "</td>";
            result += "<td>" + res.memberBirth + "</td>";
            result += "<td>" + res.memberMobile + "</td>";
            result += "</tr>";
            result += "</table>";
            resultArea.innerHTML = result;
        },
        error: function () {
            alert("일치하는 정보가 없습니다!!11!!1111!!!");
        }
      })
    }

    const detail_member = (id) => {
      location.href="/detail?id="+id;
    }
  const delete_member = (id) => {
    location.href="/delete?id="+id;
  }
</script>
</html>
