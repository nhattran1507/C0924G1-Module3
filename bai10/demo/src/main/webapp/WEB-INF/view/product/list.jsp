<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 12/27/2024
  Time: 8:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/utils/bootstrap.jsp"%>
<%@include file="/WEB-INF/view/utils/navbar.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container mt-4">
    <h1>Danh sách sản phẩm</h1>
    <form class="mb-3" action="/product" method="get">
        <input type="hidden" name="action" value="search">
        <div class="input-group">
            <input type="text" name="name" class="form-control" placeholder="Tìm sản phẩm theo tên">
            <button class="btn btn-primary" type="submit">Tìm kiếm</button>
        </div>
    </form>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
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
                    <a href="/product?action=detail&id=${product.id}" class="btn btn-info btn-sm">Chi tiết</a>
                    <a href="/product?action=update&id=${product.id}" class="btn btn-warning btn-sm">Cập nhật</a>
                    <a href="/product?action=delete&id=${product.id}" class="btn btn-danger btn-sm">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
