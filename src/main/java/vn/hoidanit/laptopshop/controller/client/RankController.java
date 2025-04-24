package vn.hoidanit.laptopshop.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.domain.DTO.UserRankingSummary;
import vn.hoidanit.laptopshop.service.RankService;
import vn.hoidanit.laptopshop.service.StatisticsService;
import vn.hoidanit.laptopshop.service.UserService;

@Controller
public class RankController {
    private final UserService userService;
    private final RankService rankService;
    private final StatisticsService statisticsService;

    public RankController(UserService userService, RankService rankService, StatisticsService statisticsService) {
        this.statisticsService = statisticsService;
        this.userService = userService;
        this.rankService = rankService;
    }

    @GetMapping("/rank")
    public String getRankPage(Model model) {
        // List<User> users = this.rankService.getAllUsersByScore();
        // model.addAttribute("users1", users);
        List<UserRankingSummary> userRankingSummaries = statisticsService.getUserRankingByProblemCount();
        for (UserRankingSummary summary : userRankingSummaries) {
            System.out.printf("%-10d %-20s %-30s %-15d%n",
                    summary.getUserId(),
                    summary.getFullName(),
                    summary.getEmail(),
                    summary.getProblemCount());
        }
        model.addAttribute("userRankingSummaries", userRankingSummaries);
        return "client/rank/show";
    }

}
