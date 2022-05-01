package com.example.JDBC.bai_tap.service;

import com.example.JDBC.bai_tap.model.Users;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import java.sql.*;
import java.util.ArrayList;


public class UsersService {
    private String jdbcURL = "jdbc:mysql://localhost:3306/demo?userSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456";

    private final String SELECT_ALL_USERS = "select * from users";
    private final String SELECT_USERS_BY_COUNTRY = "select * from users where country like ?";

    protected static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        return connection;
    }

    public Users selectUsers(String country) {
        Users users = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USERS_BY_COUNTRY);) {
            preparedStatement.setString(1, country);
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                country = resultSet.getString("country");

                users = new Users(id, name, email, country);
            }

        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return users;
    }

    public static List<Users> sellectAllUsers() {
        java.util.List<Users> users = new ArrayList<>();
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT_ALL_USERS");) {
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    private static void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLSate: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
