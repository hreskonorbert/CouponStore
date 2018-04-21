<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<jsp:include page="../snippets/head.jsp">
    <jsp:param name="title" value="Profile"/>
</jsp:include>
<body>
<h1>Profile</h1>
<p>Email: <c:out value="${user.email}"/></p>
<p>Password: <c:out value="${user.password}"/></p>
<h2>Links</h2>
<ul>
    <li><a href="shops">Shops</a></li>
    <li><a href="coupons">Add a coupon</a></li>

</ul>



<p>My coupons:</p>
<table border="1">
<tr>
    <th> CouponID</th>
    <th> CouponName </th>
    <th> Percentage </th>
</tr>

<c:set var = "userid" scope = "session" value = "${user.getId()}"/>
<c:forEach var="coupon" items="${coupons}">
    <c:if test="${coupon.getCreatedById() == userid}">
        <tr>
            <td>${coupon.id}</td>
            <td><a href="coupon?id=<c:out value="${coupon.id}"/>">${coupon.name}</a></td>
            <td>${coupon.percentage}</td>
        </tr>
    </c:if>
</c:forEach>
</table>
<br>
<br>


<jsp:include page="../snippets/logout.jsp"/>
</body>
</html>
