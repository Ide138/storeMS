package com.company;

import com.company.model.Product;
import com.company.service.ProductService;
import com.company.service.ProductServiceI;

import java.sql.SQLException;
import java.util.List;

public class Main {

    public static void main(String[] args) throws SQLException {
        ProductServiceI service = new ProductService();
        List<Product> allProducts = service.getAll();
        for (Product p :allProducts) {
            System.out.println(p.getName());
        }
    }
}
