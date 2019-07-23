package com.test.repository;

import com.test.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepasitory extends JpaRepository<User,Integer> {

    User findById(int id);

    boolean deleteById(int id);
}
