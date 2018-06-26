<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Developers</title>
</head>
<body>

<c:forEach items="${developersList}" var="developer">
    <c:out value="${developer}"/> <br>
</c:forEach>

<br>
<form action="${contextPath}/developers" method="GET">
    <tr>
        <td><input type="submit" value="Reload developers" style="height:25px; width:140px"></td>
    </tr>
</form>
<br>
<br>

<c:if test="${not empty developersList}">
    <table>
        <form:form action="${contextPath}/updateDeveloper" modelAttribute="developer" method="POST">
            <tr>
                <td></td>
                <td><label>id</label></td>
                <td><label>new name</label></td>
                <td><label>new age</label></td>
                <td><label>new salary</label></td>
            </tr>
            <tr>
                <td><input type="submit" value="Update developer" style="height:25px; width:120px"/></td>

                <td><form:input required="true" path="id"/></td>

                <td><form:input required="true" path="name"/></td>

                <td><form:input path="age"/></td>

                <td><form:input required="true" path="salary"/></td>
            </tr>
        </form:form>

        <form:form action="${contextPath}/deleteDeveloper" modelAttribute="developer" method="POST">
            <tr>
                <td><input type="submit" value="Delete developer" style="height:25px; width:120px"></td>

                <td><input type="text" name="id" required style="height:25px; width:30px"></td>
            </tr>
        </form:form>


    </table>
</c:if>

<c:if test="${empty developersList}">
    "Developer" collection is empty!<br>
</c:if>

<br>
<a href="/welcome">Return to main page</a>

</body>
</html>