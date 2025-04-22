package vn.hoidanit.laptopshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.Contest;
import vn.hoidanit.laptopshop.domain.Problem;
import vn.hoidanit.laptopshop.repository.ContestRepository;

@Service
public class ContestService {
    private final ContestRepository contestRepository;

    public ContestService(ContestRepository contestRepository) {
        this.contestRepository = contestRepository;
    }

    public List<Contest> getAllContest() {
        return this.contestRepository.findAll();
    }

    public Optional getContestById(String id) {
        return this.contestRepository.findById(id);
    }
}
