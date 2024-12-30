package com.example.repository;

import com.example.entity.Menu;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MenuRepository {

    private static final String SELECT_ALL_MENU = "SELECT * FROM menu";
    private static final String INSERT_MENU = "INSERT INTO menu(food_name, food_description, food_price, food_image) VALUES (?, ?, ?, ?)";
    private static final String DELETE_MENU = "DELETE FROM menu WHERE id = ?";
    private static final String SELECT_MENU_BY_ID = "SELECT * FROM menu WHERE id = ?";
    private static final String UPDATE_MENU = "UPDATE menu SET food_name = ?, food_description = ?, food_price = ?, food_image = ? WHERE id = ?";
    private static final String SEARCH_MENU_BY_NAME = "SELECT * FROM menu WHERE food_name LIKE ?";

    public static List<Menu> getMenuList() {
        List<Menu> menuList = new ArrayList<>();
        try (PreparedStatement statement = BaseRepository.getConnection().prepareStatement(SELECT_ALL_MENU);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String food_name = resultSet.getString("food_name");
                String food_description = resultSet.getString("food_description");
                double food_price = resultSet.getDouble("food_price");
                String food_image = resultSet.getString("food_image");
                menuList.add(new Menu(id, food_name, food_description, food_price, food_image));
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving menu list", e);
        }
        return menuList;
    }

    public static void addMenu(Menu menu) {
        try (PreparedStatement statement = BaseRepository.getConnection().prepareStatement(INSERT_MENU)) {
            statement.setString(1, menu.getFood_name());
            statement.setString(2, menu.getFood_description());
            statement.setDouble(3, menu.getFood_price());
            statement.setString(4, menu.getFood_image());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error adding menu", e);
        }
    }

    public static boolean deleteMenu(int id) {
        try (PreparedStatement statement = BaseRepository.getConnection().prepareStatement(
                "DELETE FROM menu WHERE id = ?"
        )) {
            statement.setInt(1, id);

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting menu", e);
        }
    }


    public static Menu findById(int id) {
        Menu menu = null;
        try (PreparedStatement statement = BaseRepository.getConnection().prepareStatement(SELECT_MENU_BY_ID)) {
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String food_name = resultSet.getString("food_name");
                String food_description = resultSet.getString("food_description");
                double food_price = resultSet.getDouble("food_price");
                String food_image = resultSet.getString("food_image");
                menu = new Menu(id, food_name, food_description, food_price, food_image);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error finding menu by ID", e);
        }
        return menu;
    }

    public static boolean updateMenu(Menu menu) {
        try (PreparedStatement statement = BaseRepository.getConnection().prepareStatement(
                "UPDATE menu SET food_name = ?, food_description = ?, food_price = ?, food_image = ? WHERE id = ?"
        )) {
            statement.setString(1, menu.getFood_name());
            statement.setString(2, menu.getFood_description());
            statement.setDouble(3, menu.getFood_price());
            statement.setString(4, menu.getFood_image());
            statement.setInt(5, menu.getId());

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            throw new RuntimeException("Error updating menu", e);
        }
    }


    public static List<Menu> findByName(String name) {
        List<Menu> result = new ArrayList<>();
        try (PreparedStatement statement = BaseRepository.getConnection().prepareStatement(SEARCH_MENU_BY_NAME)) {
            statement.setString(1, "%" + name + "%");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String food_name = resultSet.getString("food_name");
                String food_description = resultSet.getString("food_description");
                double food_price = resultSet.getDouble("food_price");
                String food_image = resultSet.getString("food_image");
                result.add(new Menu(id, food_name, food_description, food_price, food_image));
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error searching menu by name", e);
        }
        return result;
    }
}
