<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="view/header.jsp" />

<body>
    <!-- Sidebar -->
      <jsp:include page="view/sidebar.jsp" />

    <!-- Main Content -->
    <div class="main-content">
      <jsp:include page="view/banner.jsp" />
      <jsp:include page="view/food_menu.jsp" />
      <jsp:include page="view/feedback_form.jsp" />
      <jsp:include page="view/utilities.jsp" />
      <jsp:include page="view/footer.jsp" />
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
