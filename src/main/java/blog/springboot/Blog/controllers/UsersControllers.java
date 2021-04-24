package blog.springboot.Blog.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import blog.springboot.Blog.models.User;
import blog.springboot.Blog.services.UserService;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UsersControllers {

    @Autowired
    private UserService userService;

    @RequestMapping("/users")
    public String index(Model model, @PageableDefault(sort = {"userName"}, value = 5) Pageable pageable){

        Page<User> users = this.userService.findAll(pageable);

         model.addAttribute("users", users);

        return "users/index";
    }

}
