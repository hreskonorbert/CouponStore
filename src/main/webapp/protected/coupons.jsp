<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<jsp:include page="../snippets/head.jsp">
    <jsp:param name="title" value="Coupons"/>
</jsp:include>
<body>

<h2>Add new coupon</h2>
<form action="coupons" method="post">
    <input type="text" name="name">
    <input type="range" min="0" max="100" name="percentage">
    <input type="submit" value="Add">
</form>
<jsp:include page="../snippets/show-info.jsp"/>
<jsp:include page="../snippets/show-error.jsp"/>
<jsp:include page="../snippets/to-profile.jsp"/>
<jsp:include page="../snippets/logout.jsp"/>
</body>
</html>
