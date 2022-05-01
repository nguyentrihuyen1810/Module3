package com.example.ServletDemo.Product.service;

import com.example.ServletDemo.Product.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();

    void create(Product product);

    void update(Product product);

    void delete(int id);

    Product findById(int id);
}
