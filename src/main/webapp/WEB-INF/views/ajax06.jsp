<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-01
  Time: 오후 3:39
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
<button onclick="ajax06()">함수호출</button>
</body>
<script>
    <%-- 공식처럼 외워서 필요한 부분만 바꿔라 --%>
    const ajax06 = () => {
        $.ajax({
            type:"get",
            url: "/ajax06",
            success: function (res){
                console.log("요쳥성공",res);
                for(let  i in res){
                    console.log(res[i]);
                    console.log(res[i].memberEmail);
                }
            },
            error:function(){
                console.log("요청실패");
            }
        });
    }
</script>
</html>
