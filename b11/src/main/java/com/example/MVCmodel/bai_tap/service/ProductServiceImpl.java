package com.example.MVCmodel.bai_tap.service;

import com.example.MVCmodel.bai_tap.model.Product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Samsung", 15000000, 5));
        products.put(2, new Product(2, "Oppo", 5000000, 8));
        products.put(3, new Product(3, "Nokia", 7200000, 3));
        products.put(4, new Product(4, "Iphone", 33000000, 1));
        products.put(5, new Product(5, "Xiaomi", 3000000, 20));
    }

    @Override
    public List<Product> findAll() {
        return null;
    }

    @Override
    public void save(Product product) {

    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public void update(int id, Product product) {

    }

    @Override
    public void remove(int id) {

    }
}
