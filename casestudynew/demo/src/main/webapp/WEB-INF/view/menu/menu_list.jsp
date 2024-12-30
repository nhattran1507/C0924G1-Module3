<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/utils/bootstrap.jsp" %>
<%@ include file="/WEB-INF/view/utils/navbar.jsp" %>

<div class="container mt-5">
    <h1 class="mb-4">Danh sách Món ăn</h1>

    <!-- Form tìm kiếm -->
    <form class="row mb-4" action="menu" method="get">
        <div class="col-md-8">
            <input type="text" name="name" class="form-control" placeholder="Tìm kiếm món ăn theo tên" />
        </div>
        <input type="hidden" name="action" value="search" />
        <div class="col-md-4">
            <button type="submit" class="btn btn-primary w-100">Tìm kiếm</button>
        </div>
    </form>

    <!-- Bảng danh sách món ăn -->
    <table class="table table-bordered table-hover">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Tên món ăn</th>
            <th>Mô tả</th>
            <th>Giá</th>
            <th>Hình ảnh</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="menu" items="${menuList}">
            <tr>
                <td>${menu.id}</td>
                <td>${menu.food_name}</td>
                <td>${menu.food_description}</td>
                <td>${menu.food_price}</td>
                <td>
                    <img src="${menu.food_image}" alt="Hình ảnh" class="img-thumbnail" style="width: 100px;" />
                </td>
                <td>
                    <a href="menu?action=edit&id=${menu.id}" class="btn btn-warning btn-sm">Chỉnh sửa</a>
                    <a href="menu?action=delete&id=${menu.id}" class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc muốn xóa món này không?');">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <a href="menu?action=add" class="btn btn-success">Thêm món ăn mới</a>
</div>
