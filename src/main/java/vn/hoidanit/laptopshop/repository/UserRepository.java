package vn.hoidanit.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.hoidanit.laptopshop.domain.User;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User giakhang);

    Optional<User> findById(Long id);
}
