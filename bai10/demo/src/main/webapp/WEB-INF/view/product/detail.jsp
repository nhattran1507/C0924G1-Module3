<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/utils/bootstrap.jsp" %>
<%@ include file="/WEB-INF/view/utils/navbar.jsp" %>
<html>
<head>
    <title>Chi tiết sản phẩm</title>
</head>
<body>
<div class="container mt-5">
    <h2>Chi tiết sản phẩm</h2>
    <p><strong>ID:</strong> ${product.id}</p>
    <p><strong>Tên:</strong> ${product.name}</p>
    <p><strong>Giá:</strong> ${product.price}</p>
    <p><strong>Mô tả:</strong> ${product.description}</p>
    <a href="/product" class="btn btn-secondary">Quay lại</a>
</div>
</body>
</html>
