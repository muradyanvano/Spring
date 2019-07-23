package com.test.model;

import org.hibernate.validator.constraints.Range;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Size(  min = 3,
            max = 20,
            message = "{name.size.val}")
    private String name;
    @Size(  min = 3,
            max = 20,
            message = "{surname.size.val}")
    private String surname;
    @Range( min = 18,
            message = "{age.range.val}")
    private int age;
    @Email
    @Size(  min = 5,
            max =80,
            message = "{email.size.val}")
    private String email;
    @Size(  min = 3,
            max = 20,
            message = "{password.size.val}")
    private String password;

    public User() {
    }

    public User(@Size(min = 3,
            max = 20,
            message = "{name.size.val}") String name, @Size(min = 3,
            max = 20,
            message = "{email.size.val}") String surname, @Range(min = 18,
            message = "{age.range.val}") int age, @Size(min = 3,
            max = 20,
            message = "{email.size.val}") String email, @Size(min = 3,
            max = 20,
            message = "{password.size.val}") String password) {
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.email = email;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", age=" + age +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
