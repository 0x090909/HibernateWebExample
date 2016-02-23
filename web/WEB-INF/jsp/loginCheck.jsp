<%-- 
    Document   : loginCheck
    Created on : 11-feb-2016, 10.49.52
    Author     : FSEVERI\gutu2891
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>${status}</h1>
         <h1>${sessione.getNome()}</h1>
        <c:if test="${status == 'ok'}">
            <c:set var="loggedIn" scope="session" value="1"/>
            <c:redirect url="/dash"></c:redirect>
        </c:if>
        <c:if test="${status == 'not ok'}">
            <c:set var="loggedIn" scope="session" value="0"/>
            <c:redirect url="/"></c:redirect>
        </c:if>
         
    </body>
</html>
