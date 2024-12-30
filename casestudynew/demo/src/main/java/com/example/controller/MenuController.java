package com.example.controller;

import com.example.entity.Menu;
import com.example.service.MenuService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MenuController", urlPatterns = {"/menu"})
public class MenuController extends HttpServlet {

    private final MenuService menuService = new MenuService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "list":
                listMenu(request, response);
                break;
            case "search":
                searchMenu(request, response);
                break;
            case "delete":
                deleteMenu(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "add":
                showAddForm(request, response);
                break;
            default:
                listMenu(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "add":
                addMenu(request, response);
                break;
            case "edit":
                updateMenu(request, response);
                break;
            default:
                listMenu(request, response);
                break;
        }
    }

    private void listMenu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Menu> menuList = menuService.findAll();
        request.setAttribute("menuList", menuList);
        request.getRequestDispatcher("menu-list.jsp").forward(request, response);
    }

    private void searchMenu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        List<Menu> result = menuService.searchByName(name);
        request.setAttribute("menuList", result);
        request.getRequestDispatcher("menu-list.jsp").forward(request, response);
    }

    private void deleteMenu(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        menuService.delete(id);
        response.sendRedirect("menu?action=list");
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Menu menu = menuService.findById(id);
        request.setAttribute("menu", menu);
        request.getRequestDispatcher("menu-form.jsp").forward(request, response);
    }

    private void showAddForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("menu-form.jsp").forward(request, response);
    }

    private void addMenu(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String foodName = request.getParameter("food_name");
        String foodDescription = request.getParameter("food_description");
        double foodPrice = Double.parseDouble(request.getParameter("food_price"));
        String foodImage = request.getParameter("food_image");

        Menu newMenu = new Menu(0, foodName, foodDescription, foodPrice, foodImage);
        menuService.add(newMenu);

        response.sendRedirect("menu?action=list");
    }

    private void updateMenu(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String foodName = request.getParameter("food_name");
        String foodDescription = request.getParameter("food_description");
        double foodPrice = Double.parseDouble(request.getParameter("food_price"));
        String foodImage = request.getParameter("food_image");

        Menu updatedMenu = new Menu(id, foodName, foodDescription, foodPrice, foodImage);
        menuService.update(updatedMenu);

        response.sendRedirect("menu?action=list");
    }
}
