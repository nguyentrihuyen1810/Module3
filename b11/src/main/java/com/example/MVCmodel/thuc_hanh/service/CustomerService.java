package com.example.MVCmodel.thuc_hanh.service;

import com.example.MVCmodel.thuc_hanh.model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findAll();

    void save (Customer customer);

    Customer findById(int id);

    void update(int id, Customer customer);

    void remove(int id);
}
