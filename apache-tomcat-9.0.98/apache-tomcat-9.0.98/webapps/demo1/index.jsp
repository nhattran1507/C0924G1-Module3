<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Product Discount Calculator</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <div class="card shadow">
    <div class="card-header bg-primary text-white">
      <h1 class="text-center">Product Discount Calculator</h1>
    </div>
    <div class="card-body">
      <form action="display-discount" method="POST">
        <div class="mb-3">
          <label for="productDescription" class="form-label">Product Description</label>
          <input type="text" class="form-control" id="productDescription" name="productDescription" placeholder="Enter product description" required>
        </div>
        <div class="mb-3">
          <label for="listPrice" class="form-label">List Price</label>
          <input type="number" class="form-control" id="listPrice" name="listPrice" step="0.01" placeholder="Enter list price" required>
        </div>
        <div class="mb-3">
          <label for="discountPercent" class="form-label">Discount Percent</label>
          <input type="number" class="form-control" id="discountPercent" name="discountPercent" step="0.01" placeholder="Enter discount percent" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Calculate Discount</button>
      </form>
      <%
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null && !errorMessage.isEmpty()) {
      %>
      <div class="alert alert-danger mt-3">
        <%= errorMessage %>
      </div>
      <% } %>
      <%
        Double discountPrice = (Double) request.getAttribute("discountPrice");
        if (discountPrice != null) {
      %>
      <div class="alert alert-success mt-3">
        <p><strong>Product Description:</strong> <%= request.getAttribute("productDescription") %></p>
        <p><strong>List Price:</strong> $<%= request.getAttribute("listPrice") %></p>
        <p><strong>Discount Percent:</strong> <%= request.getAttribute("discountPercent") %>%</p>
        <p><strong>Discount Amount:</strong> $<%= request.getAttribute("discountAmount") %></p>
        <p><strong>Discount Price:</strong> $<%= request.getAttribute("discountPrice") %></p>
      </div>
      <% } %>
    </div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
