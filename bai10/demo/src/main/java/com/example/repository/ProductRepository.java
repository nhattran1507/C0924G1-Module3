package com.example.repository;

import com.example.entity.Product;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductRepository {
    private static List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(1, "Laptop", 1000, "High-quality laptop", "Dell"));
        products.add(new Product(2, "Smartphone", 500, "Powerful smartphone", "Samsung"));
    }

    public List<Product> findAll() {
        return products;
    }

    public void save(Product product) {
        products.add(product);
    }

    public Product findById(int id) {
        return products.stream()
                .filter(product -> product.getId() == id)
                .findFirst()
                .orElse(null);
    }

    public void update(int id, Product product) {
        Product existingProduct = findById(id);
        if (existingProduct != null) {
            existingProduct.setName(product.getName());
            existingProduct.setPrice(product.getPrice());
            existingProduct.setDescription(product.getDescription());
            existingProduct.setManufacturer(product.getManufacturer());
        }
    }

    public void remove(int id) {
        products.removeIf(product -> product.getId() == id);
    }

    public List<Product> searchByName(String name) {
        return products.stream()
                .filter(product -> product.getName().toLowerCase().contains(name.toLowerCase()))
                .collect(Collectors.toList());
    }
}