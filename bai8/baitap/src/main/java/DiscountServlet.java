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
        String listPriceStr = request.getParameter("listPrice");
        String discountPercentStr = request.getParameter("discountPercent");

        try {
            InputValidator.validateInputs(productDescription, listPriceStr, discountPercentStr);

            double listPrice = Double.parseDouble(listPriceStr);
            double discountPercent = Double.parseDouble(discountPercentStr);

            double discountAmount = DiscountCalculator.calculateDiscountAmount(listPrice, discountPercent);
            double discountPrice = DiscountCalculator.calculateDiscountPrice(listPrice, discountAmount);

            request.setAttribute("productDescription", productDescription);
            request.setAttribute("listPrice", listPrice);
            request.setAttribute("discountPercent", discountPercent);
            request.setAttribute("discountAmount", discountAmount);
            request.setAttribute("discountPrice", discountPrice);

        } catch (IllegalArgumentException e) {
            request.setAttribute("errorMessage", e.getMessage());
        }
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}

