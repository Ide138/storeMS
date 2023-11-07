package com.company.service;

import com.company.model.Product;

import java.sql.SQLException;
import java.util.List;

public interface ProductServiceI {
    List<Product> getAll() throws SQLException;
    Product getById(int id);
    List<Product> getAllFromCategory(int id);
}
