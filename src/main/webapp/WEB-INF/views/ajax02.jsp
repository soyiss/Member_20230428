<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-01
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <%--제이쿼리 라이브러리--%>
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
<button onclick="ajax02()">함수호출</button>
</body>
<script>
  <%-- 공식처럼 외워서 필요한 부분만 바꿔라 --%>
  const ajax02 = () => {
    $.ajax({
      // type는 요청방식(get, post)
      type:"post",
      // url은 요청하는 주솟값
      url: "/ajax02",
      //success는 요청이 성공적으로 보내지고 서버로부터 응답을 받게됨
      // success는 요청이 잘 실행됬을때 처리할 부분
      success: function (res){
        console.log("요쳥성공",res);
      },
      //error은 요청이 실패했을때 실행됨
      error:function(){
        console.log("요청실패");
      }
    });
  }
</script>
</html>
