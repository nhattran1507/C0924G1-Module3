package com.example.controller;

import com.example.model.Calculator;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");
        String operation = request.getParameter("operation");

        try {
            double num1 = Double.parseDouble(num1Str);
            double num2 = Double.parseDouble(num2Str);

            double result = Calculator.calculate(num1, num2, operation);
            request.setAttribute("result", result);
        } catch (ArithmeticException e) {
            request.setAttribute("error", "Error: " + e.getMessage());
        } catch (Exception e) {
            request.setAttribute("error", "Invalid input. Please try again.");
        }

        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
