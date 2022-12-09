package com.techelevator.dao;

import com.techelevator.model.User;
import com.techelevator.model.UserInfo;

import java.util.List;

public interface UserDao {

    List<User> findAll();

    UserInfo getUserById(int userId);

    User findByUsername(String username);

    int findIdByUsername(String username);

    boolean create(String username, String password, String role);

    void createUserInfo(UserInfo user);
}
