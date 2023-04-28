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
</head>
<body>
<%@include file="./conponent/header.jsp"%>
<%@include file="./conponent/nav.jsp"%>


<div id="section">
    <h2>Member Project</h2>
    <pre>
<!--  //pre태그는 우리가 쓴 텍스트 그대로 화면에 출력되는 태그이다 br이런거 안써돋됨          -->

        48일차_20230428_Member Project문제

        1. 프로젝트 기본 정보
            a. project name: member_20230428
            b. package: com.icia.member

        2. Class
            a. HomeController
            b. MemberController
            c. MemberService
            d. MemberRepository
            e. MemberDTO

        3. jsp
            a. index.jsp: 시작페이지(회원가입, 로그인 페이지, 목록출력을 위한 링크 있음)
            b. memberSave.jsp: 회원가입 페이지
                i. 회원가입정보: 이메일(memberEmail), 비밀번호(memberPassword), 이름
                (memberName), 생년월일(memberBirth), 전화번호(memberMobile)
            c. memberLogin.jsp: 로그인 페이지
            d. memberList.jsp: 회원목록 출력 페이지
            e. memberMain.jsp: 로그인 후 메인 페이지
            f. memberDetail.jsp: 회원 상세 페이지
                i. 정보수정버튼, 로그아웃 버튼 있음
            g. memberUpdate.jsp: 회원 정보 수정 페이지
        <div class="table1">
            <table>
                <tr>
                     <th>주소값</th>
                     <th>http method</th>
                     <th>역할</th>
                     <th>파라미터</th>
                     <th>처리 후 결과 페이지</th>
                </tr>
                <tr>
                    <td>/</td>
                    <td>get</td>
                    <td>시작페이지</td>
                    <td>-</td>
                    <td>index.jsp</td>
                </tr>
                 <tr>
                    <td>/save</td>
                    <td>get</td>
                    <td>회원가입 페이지 출력</td>
                    <td>-</td>
                    <td>save.jsp</td>
                </tr>
                 <tr>
                    <td>/save</td>
                    <td>post</td>
                    <td>회원가입 처리</td>
                    <td>MemberDTO</td>
                    <td>login.jsp</td>
                </tr>
                 <tr>
                    <td>/login</td>
                    <td>get</td>
                    <td>로그인 페이지 출력</td>
                    <td>-</td>
                    <td>login.jsp</td>
                </tr>
                <tr>
                    <td>/login</td>
                    <td>post</td>
                    <td>로그인 처리</td>
                    <td>memberEmail,memberPassword</td>
                    <td>memberMain.jsp</td>
                </tr>
                <tr>
                    <td>/members</td>
                    <td>get</td>
                    <td>회원목록 출력</td>
                    <td>-</td>
                    <td>memberList.jsp</td>
                </tr>
                <tr>
                    <td>/member</td>
                    <td>get</td>
                    <td>상세조회</td>
                    <td>id</td>
                    <td>memberDetail.jsp</td>
                </tr>
                <tr>
                    <td>/member-ajax</td>
                    <td>get</td>
                    <td>상세조회(ajax)</td>
                    <td>id</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/delete</td>
                    <td>get</td>
                    <td>회원삭제</td>
                    <td>id</td>
                    <td>memberList.jsp</td>
                </tr>
                <tr>
                    <td>/update</td>
                    <td>get</td>
                    <td>수정화면 출력</td>
                    <td>id</td>
                    <td>memberUpdate.jsp</td>
                </tr>
                 <tr>
                    <td>/update</td>
                    <td>post</td>
                    <td>수정처리</td>
                    <td>MemberDTO</td>
                    <td>memberDetail.jsp</td>
                </tr>
                <tr>
                    <td>/Duplicate-check</td>
                    <td>post</td>
                    <td>이메일 중복체크(ajax)</td>
                    <td>memberEmail</td>
                    <td></td>
                </tr>
                <tr>
                    <td>/logout</td>
                    <td>get</td>
                    <td>로그아웃 처리</td>
                    <td>-</td>
                    <td>index.jsp</td>
                </tr>
            </table>
        </div>
        5. table
            a. table name: member_table
            b. column
                i. id(pk): bigint, auto_increment
                ii. memberEmail: varchar(50), unique
                iii. memberPassword: varchar(20), not null
                iv. memberName: varchar(20), not null
                v. memberBirth: date, not null
                vi. memberMobile: varchar(30), not null

        6. 추가사항 (시간 남으면)
            a. 회원가입시 입력하지 않은 항목이 있다면 회원가입 진행하지 않고 alert 출력
            b. 회원가입시 비밀번호 정규식 체크
                i. 영문소문자, 숫자, 특수문자(!#$%) 하나 이상 입력하고 8~16자로
    </pre>
</div>
<%@include file="./conponent/footer.jsp"%>

</body>
</html>
