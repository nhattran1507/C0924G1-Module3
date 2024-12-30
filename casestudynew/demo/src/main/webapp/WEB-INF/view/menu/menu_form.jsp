<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/utils/bootstrap.jsp" %>
<%@ include file="/WEB-INF/view/utils/navbar.jsp" %>

<div class="container mt-5">
    <h1 class="mb-4">${menu == null ? "Thêm món ăn mới" : "Chỉnh sửa món ăn"}</h1>

    <form action="menu" method="post">
        <input type="hidden" name="action" value="${menu == null ? "add" : "edit"}" />
        <c:if test="${menu != null}">
            <input type="hidden" name="id" value="${menu.id}" />
        </c:if>

        <div class="mb-3">
            <label for="food_name" class="form-label">Tên món ăn</label>
            <input type="text" id="food_name" name="food_name" class="form-control" value="${menu != null ? menu.food_name : ''}" required />
        </div>

        <div class="mb-3">
            <label for="food_description" class="form-label">Mô tả</label>
            <textarea id="food_description" name="food_description" class="form-control" rows="4" required>${menu != null ? menu.food_description : ''}</textarea>
        </div>

        <div class="mb-3">
            <label for="food_price" class="form-label">Giá</label>
            <input type="number" step="0.01" id="food_price" name="food_price" class="form-control" value="${menu != null ? menu.food_price : ''}" required />
        </div>

        <div class="mb-3">
            <label for="food_image" class="form-label">Hình ảnh (URL)</label>
            <input type="text" id="food_image" name="food_image" class="form-control" value="${menu != null ? menu.food_image : ''}" required />
        </div>

        <button type="submit" class="btn btn-primary">${menu == null ? "Thêm mới" : "Cập nhật"}</button>
        <a href="menu?action=list" class="btn btn-secondary">Quay lại danh sách món ăn</a>
    </form>
</div>
