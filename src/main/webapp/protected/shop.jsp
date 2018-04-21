<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<jsp:include page="../snippets/head.jsp">
    <jsp:param name="title" value="Shop"/>
</jsp:include>
<body>
<h1>Shop</h1>
<c:if test="${empty error}">
    <p>ID: ${shop.id}</p>
    <p>Name: ${shop.name}</p>
</c:if>

<h1>Coupons for this store created by me</h1>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Percentage</th>
    </tr>

<c:forEach items="${coupons}" var="coupon">
    <tr>
        <td>
            <c:out value="${coupon.getName()}"/>
        </td>
        <td>
            <c:out value="${coupon.getPercentage()}"/>
        </td>
    </tr>
</c:forEach>
</table>

<jsp:include page="../snippets/show-error.jsp"/>
<jsp:include page="../snippets/to-profile.jsp"/>
<jsp:include page="../snippets/logout.jsp"/>
</body>
</html>
