package com.test.controllers;

import com.test.model.User;
import com.test.service.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/userregistration" ,method = RequestMethod.POST)
    public ModelAndView userregistration(@Valid @ModelAttribute("user") User user, BindingResult bindingResult, ModelAndView model){

        if (bindingResult.hasErrors()){
            model=new ModelAndView("/registration");
            return model;
        }
            User user1=userService.save(user);


        return new ModelAndView("message","user",user1);
    }
}
