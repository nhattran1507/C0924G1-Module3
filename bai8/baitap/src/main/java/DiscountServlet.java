import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", value = "/display-discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productDescription = request.getParameter("productDescription");
        double listPrice = Double.parseDouble(request.getParameter("listPrice"));
        double discountPercent = Double.parseDouble(request.getParameter("discountPercent"));

        double discountAmount = listPrice * discountPercent * 0.01;
        double discountPrice = listPrice - discountAmount;

        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();

        writer.println("<!DOCTYPE html>");
        writer.println("<html>");
        writer.println("<head>");
        writer.println("<title>Discount Result</title>");
        writer.println("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css' rel='stylesheet'>");
        writer.println("</head>");
        writer.println("<body>");
        writer.println("<div class='container mt-5'>");
        writer.println("<div class='card shadow'>");
        writer.println("<div class='card-header bg-success text-white'>");
        writer.println("<h1 class='text-center'>Discount Calculation Result</h1>");
        writer.println("</div>");
        writer.println("<div class='card-body'>");
        writer.println("<p><strong>Product Description:</strong> " + productDescription + "</p>");
        writer.println("<p><strong>List Price:</strong> $" + listPrice + "</p>");
        writer.println("<p><strong>Discount Percent:</strong> " + discountPercent + "%</p>");
        writer.println("<p><strong>Discount Amount:</strong> $" + discountAmount + "</p>");
        writer.println("<p><strong>Discount Price:</strong> $" + discountPrice + "</p>");
        writer.println("</div>");
        writer.println("<div class='card-footer text-center'>");
        writer.println("<a href='index.jsp' class='btn btn-primary'>Back to Calculator</a>");
        writer.println("</div>");
        writer.println("</div>");
        writer.println("</div>");
        writer.println("<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js'></script>");
        writer.println("</body>");
        writer.println("</html>");

        writer.close();
    }

}
