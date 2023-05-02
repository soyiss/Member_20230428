<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <style>
        #section{
            height: auto;
        }
        #section a{
            display: block;
            text-align: center;
        }
    </style>
</head>
<body>
<%@include file="./conponent/header.jsp"%>
<%@include file="./conponent/nav.jsp"%>


<div id="section">
    <pre>
    <h2>Member Project</h2>

            <a href="/ajax-view01">ajax01 클릭</a>
            <a href="/ajax-view02">ajax02 클릭</a>
            <a href="/ajax-view03">ajax03 클릭</a>
            <a href="/ajax-view04">ajax04 클릭</a>
            <a href="/ajax-view05">ajax05 클릭</a>
            <a href="/ajax-view06">ajax06 클릭</a>
            <a href="/ajax-view07">ajax07 클릭</a>
            <a href="/ajax-view08">ajax08 클릭</a>
            <a href="/ajax-view09">ajax09 클릭</a>
            <a href="/ajax-view10">ajax10 클릭</a>
    </pre>
</div>
<%@include file="./conponent/footer.jsp"%>

</body>
</html>
