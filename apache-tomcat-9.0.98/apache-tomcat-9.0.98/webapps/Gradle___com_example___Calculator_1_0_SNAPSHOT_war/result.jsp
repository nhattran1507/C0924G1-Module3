<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator Result</title>
</head>
<body>
<h2>Calculation Result</h2>
<%
    Object resultObj = request.getAttribute("result");
    String result = resultObj != null ? resultObj.toString() : null;
    String error = (String) request.getAttribute("error");

    if (error != null) {
%>
<p style="color: red;"><%= error %></p>
<%
} else if (result != null) {
%>
<p>Result: <%= result %></p>
<%
} else {
%>
<p>No calculation was performed.</p>
<%
    }
%>
<br>
<a href="index.jsp">Back to Calculator</a>
</body>
</html>
