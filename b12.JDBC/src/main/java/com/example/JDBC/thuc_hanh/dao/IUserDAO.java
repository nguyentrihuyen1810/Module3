package com.example.JDBC.thuc_hanh.dao;

import com.example.JDBC.thuc_hanh.model.User;
import java.util.List;

import java.sql.SQLException;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> sellectALllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;
}
