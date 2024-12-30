<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/utils/bootstrap.jsp" %>
<%@ include file="/WEB-INF/view/utils/navbar.jsp" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
</head>
<body>
<div class="container mt-5">
    <h2>Danh sách sản phẩm</h2>
    <c:if test="${not empty message}">
        <div class="alert alert-success">${message}</div>
    </c:if>
    <form method="get" action="/product" class="mb-3">
        <input type="hidden" name="action" value="search">
        <input type="text" name="name" placeholder="Tìm kiếm..." class="form-control">
    </form>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Giá</th>
            <th>Mô tả</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td>
                    <a href="/product?action=update&id=${product.id}" class="btn btn-warning btn-sm">Sửa</a>
                    <a href="/product?action=delete&id=${product.id}" class="btn btn-danger btn-sm"
                       onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                    <a href="/product?action=detail&id=${product.id}" class="btn btn-info btn-sm">Chi tiết</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
