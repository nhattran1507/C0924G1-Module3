<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/utils/bootstrap.jsp" %>
<%@ include file="/WEB-INF/view/utils/navbar.jsp" %>
<html>
<head>
  <title>Thêm sản phẩm</title>
</head>
<body>
<div class="container mt-5">
  <h2>Thêm sản phẩm mới</h2>
  <form method="post" action="/product?action=create">
    <div class="form-group">
      <label for="name">Tên sản phẩm:</label>
      <input type="text" class="form-control" id="name" name="name" required>
    </div>
    <div class="form-group">
      <label for="price">Giá:</label>
      <input type="number" class="form-control" id="price" name="price" step="0.01" required>
    </div>
    <div class="form-group">
      <label for="description">Mô tả:</label>
      <textarea class="form-control" id="description" name="description" required></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Thêm</button>
  </form>
  <c:if test="${not empty message}">
    <div class="alert alert-danger mt-3">${message}</div>
  </c:if>
</div>
</body>
</html>
