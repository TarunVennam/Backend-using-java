<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
     HttpSession Session = request.getSession(false);
if(Session != null && Session.getAttribute("uname") != null) {
        response.sendRedirect("loginform.jsp");
        return;
    }
  
%>
<!DOCTYPE html>
<html>
<head>
    <title>Protected Page</title>
</head>
<body>
    <h1>Welcome, <c:out value="${sessionScope.n}" />!</h1>
    <p>This is a protected page only accessible to logged-in users.</p>

    <c:choose>
        <c:when test="${sessionScope.p == 'student@12'}">
            <p>You have student privileges.</p>
        </c:when>
        <c:otherwise>
            <p>List Of Available Book.</p>
        </c:otherwise>
    </c:choose>

    <c:if test="${not empty sessionScope.username}">
        <p>Your username is: <c:out value="${sessionScope.username}" /></p>
    </c:if>

    <c:set var="userList" value="${['IpBased', 'BackendUsingJava']}" />
    <ul>
        <c:forEach var="user" items="${userList}">
            <li><c:out value="${user}" /></li>
        </c:forEach>
    </ul>

    <jsp:include page="external_user.jsp" />
</body>
</html>

