package blog.springboot.Blog.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import blog.springboot.Blog.models.User;
import blog.springboot.Blog.repositories.UserRepository;

@Service
@Primary
public class UserServiceJpaImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    private BCryptPasswordEncoder bCryptPasswordEncoder;

    public UserServiceJpaImpl(){
        bCryptPasswordEncoder = new BCryptPasswordEncoder();
    }

    @Override
    public boolean authenticate(String userName, String password) {
        return false;
    }
    @Override
    public List<User> findAll() {
        return this.userRepository.findAll();
    }
    @Override
    public Page<User> findAll(Pageable pageable) {
        return this.userRepository.findAll(pageable);
    }
    @Override
    public User findById(Long id) {
        return this.userRepository.getOne(id);
    }
    @Override
    public User create(User user) {
        // Encode user's password before adding it to database
        user.setPasswordHash(bCryptPasswordEncoder.encode(user.getPasswordHash()));
        return this.userRepository.save(user);
    }
    @Override
    public User edit(User user) {
        return this.userRepository.save(user);
    }
    @Override
    public void deleteById(Long id) {
        this.userRepository.deleteById(id);
    }
    @Override
    public User findByUserName(String userName) {
        return this.userRepository.findByUserName(userName);
    }
}
