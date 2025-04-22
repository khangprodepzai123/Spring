package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.DTO.ContestResultSummary;
import vn.hoidanit.laptopshop.domain.DTO.ProblemResultSummary;
import vn.hoidanit.laptopshop.domain.DTO.UserRankingSummary;
import vn.hoidanit.laptopshop.domain.DTO.UserScoreSummary;
import vn.hoidanit.laptopshop.repository.StatisticsRepository;

@Service
public class StatisticsService {
    @Autowired
    private StatisticsRepository statisticsRepository;

    public List<ContestResultSummary> getContestResultSummary() {
        return statisticsRepository.getContestResultSummary();
    }

    public List<UserScoreSummary> getTop5UsersByAverageScore() {
        return statisticsRepository.getTop5UsersByAverageScore();
    }

    public List<ProblemResultSummary> getProblemResultSummary() {
        return statisticsRepository.getProblemResultSummary();
    }

    public List<UserRankingSummary> getUserRankingByProblemCount() {
        return statisticsRepository.getUserRankingByProblemCount();
    }

}
