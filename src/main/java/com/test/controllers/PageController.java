package com.test.controllers;

import com.test.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

    @GetMapping("/")
    public String getIndexPage() {
        return "index";
    }

    @GetMapping("/registration")
    public ModelAndView getRegistrationPage() {
        return new ModelAndView("registration", "user", new User());
    }
}

