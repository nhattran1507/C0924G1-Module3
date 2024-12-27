package com.example.service;

import com.example.entity.Product;
import java.util.List;

public interface  IService<P> {
    List<Product> findAll();
    void save(Product product);
    Product findById(int id);
    void update(int id, Product product);
    void remove(int id);
    List<Product> searchByName(String name);
}

