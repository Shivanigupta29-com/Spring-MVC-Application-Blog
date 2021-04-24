package blog.springboot.Blog.services;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import blog.springboot.Blog.models.Post;
import blog.springboot.Blog.repositories.PostRepository;


@Service
@Primary
public class PostServiceJpaImpl implements PostService {

    @Autowired
    private PostRepository postRepository;

    @Override
    public List<Post> findAll() {
        return this.postRepository.findAll();
    }
    @Override
    public Page<Post> findAll(Pageable pageable){
        return this.postRepository.findAll(pageable);
    }
    @Override
    public List<Post> findLatest5() {

        return this.postRepository.findLatest5Posts( PageRequest.of(0,5) );
        // Using Streams also worked Descending order
        //return this.postRepository.findAll( PageRequest.of(0, 2) ).stream().sorted( (a,b) -> a.getDate().compareTo(b.getDate()) ).collect(Collectors.toList());
    }
    @Override
    public Post findById(Long id) {
        return this.postRepository.findById(id).orElse(null);
        // return this.postRepository.getOne(id);
    }
    @Override
    public Post create(Post post) {
        return this.postRepository.save(post);
    }
    @Override
    public Post edit(Post post) {
        return this.postRepository.save(post);
    }
    @Override
    public void deleteById(Long id) {
        this.postRepository.deleteById(id);
    }
}