<%--Так виглядають імпорти класів--%>
<%@ page import="java.util.Date" %>
<%@ page import="jsp.JSPMethods" %>

<%-- http://localhost:8080/jsp/hello.jsp --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="hello-support.jsp" %>
<!-- Включення іншої jsp сторінки у нашу 1ий спосіб (пре процесорний, тобто загружає на етапі компіляції)-->
<html>
<head>
    <title>Hello</title>
</head>
<body>
<%--
    В сервлетах ми можемо використовувати як HTML код так і Java код

    Є кілька видів виразів для JSP сторінки:
        1. Declaration (в них просто щось об'являється)
            позначаються <%! %>
        2. Expression (в них просто щось перетворюється або вертається як String)
            позначаються <%= %>
        3. Scriptlet (Тупо код який ми вставляємо, та сама Java)
            позначаються <% %>
--%>
<h1>Hello JSP page</h1>

<%! int i = 5; %> <!-- Java код -->
<%! public void func() {
    System.out.println(i);
}
%>
<%= "Hello JSP page" %>
<%= i + i + 1 %>
<%= new Date() %>
<%--    <%= func() %> Метод видає помилку бо він вертає void --%>
<%= new JSPMethods().func1() %>
<%--    <%= new JSPMethods().func2() %> Метод видає помилку бо він вертає void --%>
<br>
<%
    out.println("Scriptlet JSP"); // Воно хоть видає помилку, але працює (просто виводить Scriptlet JSP)
%>
<%= name %>
<jsp:include page="hello-support.jsp"></jsp:include>
<!-- 2ий спосіб включення jsp сторінки (він э реквестний, тобто з кожним реквестом оновлюється) -->
<jsp:include page="/info.txt"></jsp:include>
<%--Також так можна підключати і сервлети--%>

<jsp:text>Text</jsp:text>

<%--    <jsp:forward page="user.jsp"></jsp:forward> <!-- тупо заміщує сторінку на іншу -->--%>

<br>
<%! String str = "Kytsara"; %>

<jsp:useBean id="user" class="com.example.Java_EE.ServletApi.entities.User" scope="page">
    <jsp:setProperty name="user" property="username" value="Fayon"></jsp:setProperty>
    <jsp:setProperty name="user" property="surname" value="<%= str %>"></jsp:setProperty>
</jsp:useBean>
<jsp:getProperty name="user" property="username"/>
<jsp:getProperty name="user" property="surname"/>

</body>
</html>
