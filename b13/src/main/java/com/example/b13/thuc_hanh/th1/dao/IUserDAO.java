package com.example.b13.thuc_hanh.th1.dao;

import com.example.b13.thuc_hanh.th1.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    User getUserById(int id);

    void insertUserStone(User user) throws SQLException;

    void addUserTransaction(User user, int[] permisions);

    public void insertUpdateWithoutTransaction();

    public void insertUpdateUseTransaction();
}
