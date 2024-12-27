<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 12/27/2024
  Time: 9:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container mt-4">
  <h1>Cập nhật sản phẩm</h1>
  <form action="/product" method="post">
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="id" value="${product.id}">
    <div class="mb-3">
      <label for="name" class="form-label">Tên sản phẩm</label>
      <input type="text" class="form-control" id="name" name="name" value="${product.name}" required>
    </div>
    <div class="mb-3">
      <label for="price" class="form-label">Giá sản phẩm</label>
      <input type="number" class="form-control" id="price" name="price" value="${product.price}" step="0.01" required>
    </div>
    <div class="mb-3">
      <label for="description" class="form-label">Mô tả</label>
      <textarea class="form-control" id="description" name="description" rows="3" required>${product.description}</textarea>
    </div>
    <button type="submit" class="btn btn-primary">Cập nhật</button>
  </form>
</div>
</body>
</html>
