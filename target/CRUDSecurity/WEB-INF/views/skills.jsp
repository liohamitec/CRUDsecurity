<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Skills</title>
</head>
<body>

<c:forEach items="${skillsList}" var="skill">
    <c:out value="${skill}"/> <br>
</c:forEach>

<br>
<form action="${contextPath}/skills" method="GET">
    <tr>
        <td><input type="submit" value="Reload skills" style="height:25px; width:140px"></td>
    </tr>
</form>
<br>
<br>

<c:if test="${not empty skillsList}">
    <table>
        <form:form action="${contextPath}/updateSkill" modelAttribute="skill" method="POST">
            <tr>
                <td></td>
                <td><label>id</label></td>
                <td><label>new name</label></td>
            </tr>
            <tr>
                <td><input type="submit" value="Update skill" style="height:25px; width:120px"/></td>

                <td><form:input required="true" path="id"/></td>

                <td><form:input required="true" path="name"/></td>
            </tr>
        </form:form>

        <form:form action="${contextPath}/deleteSkill" modelAttribute="skill" method="POST">
            <tr>
                <td><input type="submit" value="Delete skill" style="height:25px; width:120px"></td>

                <td><input type="text" name="id" required style="height:25px; width:30px"></td>
            </tr>
        </form:form>


    </table>
</c:if>

<br>
<a href="/welcome">Return to main page</a>

<c:if test="${empty skillsList}">
    "Skill" collection is empty!<br>
</c:if>

</body>
</html>