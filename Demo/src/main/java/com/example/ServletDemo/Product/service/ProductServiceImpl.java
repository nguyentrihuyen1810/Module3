package com.example.ServletDemo.Product.service;

import com.example.ServletDemo.Product.model.Product;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> productMap;

    static {
        productMap = new HashMap<>();
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        try {
            productMap.put(1, new Product(1, "Samsung", "Hàn Quốc", 20.0, 5, format.parse("20/12/2021")));
            productMap.put(2, new Product(2, "Oppo", "Trung Quốc", 7.0, 2, format.parse("02/07/2021")));
            productMap.put(3, new Product(3, "Xiaomi", "Trung Quốc", 5.0, 7, format.parse("02/01/2022")));
            productMap.put(4, new Product(4, "Iphone", "USA", 32.0, 1, format.parse("15/10/2021")));
            productMap.put(5, new Product(5, "Nokia", "Trung Quốc", 7.5, 3, format.parse("27/05/2021")));
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void create(Product product) {
        if (!productMap.containsKey(product.getId())) {
            productMap.put(product.getId(), product);
        }

    }

    @Override
    public void update(Product product) {
        if (productMap.containsKey(product.getId())) {
            productMap.put(product.getId(), product);
        }
    }

    @Override
    public void delete(int id) {
        if (productMap.containsKey(id)) {
            productMap.remove(id);
        }

    }

    @Override
    public Product findById(int id) {
        if (productMap.containsKey(id)) {
            return productMap.get(id);
        } else {
            return null;
        }
    }
}
