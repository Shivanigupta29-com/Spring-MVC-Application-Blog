package blog.springboot.Blog.controllers;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import blog.springboot.Blog.forms.LoginForm;
import blog.springboot.Blog.models.User;
import blog.springboot.Blog.services.UserService;

@RestController
public class LoginControllers {

    @Autowired
    private UserService userService;

    @RequestMapping("/users/login")
    public String login(LoginForm loginForm){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if ( (auth instanceof AnonymousAuthenticationToken) ) {
            return "users/login";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping("/users/register")
    public ModelAndView registration(){
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        modelAndView.addObject(user);
        modelAndView.setViewName("users/register");
        return modelAndView;
    }
    @RequestMapping(value = "users/register", method = RequestMethod.POST)
    public ModelAndView registration(@Valid User user, BindingResult bindingResult){
        ModelAndView modelAndView = new ModelAndView();
        User userExists = this.userService.findByUserName(user.getUserName());
        modelAndView.setViewName("users/register");
        if( userExists != null ){
            bindingResult.rejectValue("userName", "error.user", "User exists");
        }
        if( !bindingResult.hasErrors() ){
            this.userService.create(user);
            modelAndView.addObject("successMessage", "User has been created");
            modelAndView.addObject("user", new User());
        }
        return modelAndView;

    }

}