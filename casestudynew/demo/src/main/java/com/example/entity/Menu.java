package com.example.entity;

import java.util.Objects;

public class Menu {
    private int id;
    private String food_name;
    private String food_description;
    private double food_price;
    private String food_image;

    public Menu() {
    }

    public Menu(int id, String food_name, String food_description, double food_price, String food_image) {
        this.id = id;
        this.food_name = food_name;
        this.food_description = food_description;
        this.food_price = food_price;
        this.food_image = food_image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFood_name() {
        return food_name;
    }

    public void setFood_name(String food_name) {
        this.food_name = food_name;
    }

    public String getFood_description() {
        return food_description;
    }

    public void setFood_description(String food_description) {
        this.food_description = food_description;
    }

    public double getFood_price() {
        return food_price;
    }

    public void setFood_price(double food_price) {
        this.food_price = food_price;
    }

    public String getFood_image() {
        return food_image;
    }

    public void setFood_image(String food_image) {
        this.food_image = food_image;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Menu menu = (Menu) o;
        return id == menu.id && Objects.equals(food_name, menu.food_name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, food_name);
    }

    @Override
    public String toString() {
        return "menu{" +
                "id" + id +
                "food_name" + food_name +
                "food_description" + food_description +
                "food_price" + food_price +
                "food_image" +food_image +"}";
    }
}
