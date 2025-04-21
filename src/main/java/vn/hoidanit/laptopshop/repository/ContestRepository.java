package vn.hoidanit.laptopshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.hoidanit.laptopshop.domain.Contest;

@Repository
public interface ContestRepository extends JpaRepository<Contest, Long> {

    List<Contest> findAll();

}
