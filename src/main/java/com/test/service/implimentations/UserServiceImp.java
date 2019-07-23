package com.test.service.implimentations;

import com.test.model.User;
import com.test.repository.UserRepasitory;
import com.test.service.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImp implements UserService {

    @Autowired
    UserRepasitory userRepasitory;

    @Override
    public User getByID(int id) {
        return userRepasitory.findById(id);
    }

    @Override
    public List<User> getAll() {
        return userRepasitory.findAll();
    }

    @Override
    public User save(User user) {
        return userRepasitory.save(user);
    }

    @Override
    public boolean delete(User user) {

        try {
            userRepasitory.delete(user);
            return true;
        }catch (Exception ex){
            return false;
        }
    }

    @Override
    public boolean delete(int id) {
        return userRepasitory.deleteById(id);
    }
}
