package com.example.service;

import com.example.entity.Menu;
import com.example.repository.MenuRepository;

import java.util.List;

public class MenuService implements IMenuService {

    @Override
    public List<Menu> findAll() {
        return MenuRepository.getMenuList();
    }

    @Override
    public Menu findById(int id) {
        return MenuRepository.findById(id);
    }

    @Override
    public boolean add(Menu menu) {
        try {
            MenuRepository.addMenu(menu);
            return true;
        } catch (RuntimeException e) {
            return false;
        }
    }

    @Override
    public boolean update(Menu menu) {
        return MenuRepository.updateMenu(menu);
    }

    @Override
    public boolean delete(int id) {
        return MenuRepository.deleteMenu(id);
    }

    @Override
    public List<Menu> searchByName(String name) {
        return MenuRepository.findByName(name);
    }
}
