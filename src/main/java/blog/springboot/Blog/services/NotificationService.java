package blog.springboot.Blog.services;



public interface NotificationService {
    void addInfoMessage(String msg);
    void addErrorMessage(String msg);
}
