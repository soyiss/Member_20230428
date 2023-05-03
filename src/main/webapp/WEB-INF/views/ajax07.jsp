<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-05-02
  Time: 오전 8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
<%-- ajax(Asynchronous Javascript and XML) --%>
<button onclick="ajax07()">함수호출</button>
</body>
<script>
    const ajax07 = () => {
        const member = {
            "memberEmail": "aaa@aaa.com",
            "memberPassword": "1q2w3e",
            "memberName": "회원1"
        };
        $.ajax({
            // 객체를 전달하기 때문에 당연히 전송방식은 'POST'
            // 여기서 추가적으로 주의해야 할 점은 ajax의 contentType속성과 data 속성입니다
            type: "post",
            url: "/ajax07",
            // js object -> JSON 변환
            //컨트롤러에서 @RequestBody를 사용해서 Json타입의 데이터로 값을 받아와야하기 때문에 JSON로 타입을 바꿈
            data: JSON.stringify(member),

            // 서버에게 보내는 데이터의 타입을 지정
            // 멀쩡한 json데이터를 JSON.stringify를 이용하여 String으로 형변환을 하고 있습니다.
            // 당연히 컨트롤러는 String타입의 데이터를 받게 되며 이때 전달한 String데이터(member)는
            // JSON형태로 이루어진 데이터임을 알려주기위하여
            // contentType 속성값을 "application/json"로 지정하는 것입니다.
            contentType: "application/json",
            success: function (res) {
                console.log("요청성공", res);
            },
            error: function () {
                console.log("요청실패");
            }
        });
    }
</script>
</html>