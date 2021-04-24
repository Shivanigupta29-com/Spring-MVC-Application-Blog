package blog.springboot.Blog.repositories;

import java.util.List;

import blog.springboot.Blog.models.Post;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
// Needed for query parameters
// import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PostRepository extends JpaRepository<Post, Long> {


    @Query(value="SELECT p.* FROM posts p ORDER BY p.date DESC", nativeQuery = true)
    List<Post> findLatest5Posts(Pageable pageable);

}
