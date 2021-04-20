package blog.springboot.Blog;

import org.springframework.boot.SpringApplication;
//import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;

//@Configuration
//@ComponentScan(basePackages = "blog.springboot.Blog")
//@EnableAutoConfiguration
@SpringBootApplication(scanBasePackages={"blog.springboot.Blog"})

public class BlogApplication {

	public static void main(String[] args) {
		SpringApplication.run(BlogApplication.class, args);
	}

}
