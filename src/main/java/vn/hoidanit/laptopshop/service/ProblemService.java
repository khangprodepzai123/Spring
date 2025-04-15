package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.Problem;
import vn.hoidanit.laptopshop.repository.ProblemRepository;

@Service
public class ProblemService {
    private final ProblemRepository problemRepository;

    public ProblemService(ProblemRepository problemRepository) {
        this.problemRepository = problemRepository;
    }

    public void deleteAProblem(long id) {
        this.problemRepository.deleteById(id);
    }

    public void saveProblem(Problem problem) {
        this.problemRepository.save(problem);
    }

    public List<Problem> getAllProblems() {
        return this.problemRepository.findAll();
    }

    public Problem getProblemById(long id) {
        return this.problemRepository.findById(id);
    }
}
