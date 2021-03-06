package blog.springboot.Blog.controllers;

import blog.springboot.Blog.models.Post;
import blog.springboot.Blog.services.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
public class HomeController {
    @Autowired
    private PostService postService;

    @RequestMapping(value = "/")
    public String index(Model model) {
        List<Post> latest5Posts = this.postService.findLatest5();
        model.addAttribute("latest5posts", latest5Posts);

        List<Post> latest3Posts = latest5Posts.stream()
                .limit(3).collect(Collectors.toList());
        model.addAttribute("latest3posts", latest3Posts);

        return "index";
    }
}