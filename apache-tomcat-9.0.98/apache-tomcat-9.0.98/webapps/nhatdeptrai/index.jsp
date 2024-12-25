<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Product Discount Calculator</title>
  <!-- Bootstrap CSS -->
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
    </div>
  </div>
</div>
<!-- Bootstrap JS (optional, for interactive components) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

