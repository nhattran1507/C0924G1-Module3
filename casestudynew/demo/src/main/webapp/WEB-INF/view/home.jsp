<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/utils/bootstrap.jsp" %>
<%@ include file="/WEB-INF/view/utils/navbar.jsp" %>

<div class="container mt-5">
    <div class="text-center">
        <h1>Chào mừng đến với Hệ thống Quản lý Thực đơn</h1>
        <p class="lead">Dễ dàng quản lý món ăn với các chức năng của hệ thống.</p>
        <a href="menu?action=list" class="btn btn-primary btn-lg">Xem danh sách món ăn</a>
        <a href="menu?action=add" class="btn btn-success btn-lg">Thêm món ăn mới</a>
    </div>
</div>
