<%@ page import="com.example.Java_EE.ServletApi.entities.Test" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 10.02.2022
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<%--    <jsp:useBean id="test" class="com.example.Java_EE.ServletApi.entities.Test" scope="page"></jsp:useBean>--%>
<jsp:useBean id="test" class="com.example.Java_EE.ServletApi.entities.Test" scope="request"></jsp:useBean>
<jsp:getProperty name="test" property="id"/>
<jsp:getProperty name="test" property="name"/>
<jsp:getProperty name="test" property="count"/>

<br>
<%--Expression Language--%>
${test.name}
${test["count"]}
<%--${requestScope.test.name}--%>
<%--${sessionScope.test.name}--%>
<%--${applicationScope.test.name}--%>
<br>
${list[0].name}
<br>
${1 + 2 + 3}
<br>
${"12" +"32"}
<br>
${"12".concat("32")}
<br>
${1 == 2}


<jsp:setProperty name="test" property="name" value="${'New name'}"></jsp:setProperty>
<br>
<jsp:getProperty name="test" property="name"></jsp:getProperty>
<br>
\${1,2,3,4}
</body>
</html>
