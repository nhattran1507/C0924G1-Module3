<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/utils/bootstrap.jsp" %>
<%@ include file="/WEB-INF/view/utils/navbar.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container mt-4">
  <h1>Thêm sản phẩm mới</h1>
  <form action="/product" method="post">
    <input type="hidden" name="action" value="create">
    <div class="mb-3">
      <label for="name" class="form-label">Tên sản phẩm</label>
      <input type="text" class="form-control" id="name" name="name" required>
    </div>
    <div class="mb-3">
      <label for="price" class="form-label">Giá sản phẩm</label>
      <input type="number" class="form-control" id="price" name="price" step="0.01" required>
    </div>
    <div class="mb-3">
      <label for="description" class="form-label">Mô tả</label>
      <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Lưu</button>
  </form>
</div>
</body>
</html>
