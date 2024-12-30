package com.example.service;

import com.example.entity.Menu;

import java.util.List;

public interface IMenuService extends IService<Menu> {
    List<Menu> searchByName(String name);
}
