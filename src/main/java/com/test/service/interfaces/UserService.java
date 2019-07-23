package com.test.service.interfaces;

import com.test.model.User;

import java.util.List;

public interface UserService {

    User getByID(int id);
    List<User> getAll();

    User save(User user);
    boolean delete(User user);
    boolean delete(int id);

}
