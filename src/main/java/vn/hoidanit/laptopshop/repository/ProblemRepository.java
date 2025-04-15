package vn.hoidanit.laptopshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.hoidanit.laptopshop.domain.Problem;

@Repository
public interface ProblemRepository extends JpaRepository<Problem, Long> {
    Problem save(Problem pl);

    void deleteById(long id);

    List<Problem> findAll();

    Problem findById(long id);

}
