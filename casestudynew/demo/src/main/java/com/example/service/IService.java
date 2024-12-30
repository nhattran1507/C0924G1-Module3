package com.example.service;

import java.util.List;

public interface IService<T> {
    List<T> findAll();
    T findById(int id);
    boolean add(T entity);
    boolean update(T entity);
    boolean delete(int id);
}
