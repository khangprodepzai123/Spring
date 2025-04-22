package vn.hoidanit.laptopshop.controller.teacher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vn.hoidanit.laptopshop.domain.DTO.ContestResultSummary;
import vn.hoidanit.laptopshop.domain.DTO.ProblemResultSummary;
import vn.hoidanit.laptopshop.domain.DTO.UserRankingSummary;
import vn.hoidanit.laptopshop.domain.DTO.UserScoreSummary;
import vn.hoidanit.laptopshop.service.StatisticsService;

@Controller
public class StatisticsController {
    @Autowired
    private StatisticsService statisticsService;

    @GetMapping("/teacher/statistics")
    public String getStatisticsPage(Model model) {

        // try {
        // List<UserScoreSummary> userScoreSummaries =
        // statisticsService.getTop5UsersByAverageScore();
        // // In tiêu đề
        // System.out.println("Top 5 người dùng có điểm trung bình cao nhất:");
        // System.out.println("--------------------------------------------------");
        // System.out.printf("%-10s %-20s %-10s%n",
        // "ID", "Tên người dùng", "Điểm TB");

        // // In từng dòng kết quả
        // for (UserScoreSummary summary : userScoreSummaries) {
        // System.out.printf("%-10d %-20s %-10.2f%n", // Sử dụng %d cho userId (Long)
        // summary.getUserId(),
        // summary.getUserName(),
        // summary.getAverageScore());
        // }
        // System.out.println("--------------------------------------------------");

        // model.addAttribute("topUsers", userScoreSummaries);
        // } catch (Exception e) {
        // System.err.println("Lỗi khi truy vấn top users: " + e.getMessage());
        // e.printStackTrace();
        // }

        return "teacher/statistics/show";
    }

    @GetMapping("/question/cau1a")
    public String getQuestion1a(Model model) {
        List<ContestResultSummary> contestResultSummaries = statisticsService.getContestResultSummary();
        // In tiêu đề
        System.out.println("Kết quả thống kê bài thi:");
        System.out.println("--------------------------------------------------");
        System.out.printf("%-10s %-20s %-15s %-10s%n",
                "ID", "Tên bài thi", "Số thí sinh", "Điểm TB");

        // In từng dòng kết quả
        for (ContestResultSummary summary : contestResultSummaries) {
            System.out.printf("%-10s %-20s %-15d %-10.2f%n", // Thay %-10d thành %-10s

                    summary.getContestId(),
                    summary.getContestName(),
                    summary.getCandidateCount(),
                    summary.getAverageScore());
        }
        model.addAttribute("contestResultSummaries", contestResultSummaries);

        return "teacher/question/cau1a";
    }

    @GetMapping("/question/cau1c")
    public String getQuestion1c(Model model) {
        // Lấy thống kê tỷ lệ đúng/sai của bài code

        List<ProblemResultSummary> problemResultSummaries = statisticsService.getProblemResultSummary();
        System.out.println("\nThống kê tỷ lệ đúng/sai của bài code:");
        System.out.println("--------------------------------------------------");
        System.out.printf("%-10s %-20s %-15s %-15s %-15s %-10s%n",
                "ID", "Tên bài code", "Số lượt đúng", "Số lượt sai", "Tổng lượt nộp", "Tỷ lệ đúng");

        for (ProblemResultSummary summary : problemResultSummaries) {
            System.out.printf("%-10s %-20s %-15d %-15d %-15d %-10s%n",
                    summary.getProblemId(),
                    summary.getProblemName(),
                    summary.getCorrectSubmissions(),
                    summary.getIncorrectSubmissions(),
                    summary.getTotalSubmissions(),
                    summary.getCorrectPercentage());
        }

        model.addAttribute("problemResultSummaries", problemResultSummaries);
        return "teacher/question/cau1c";
    }

    @GetMapping("/question/cau1d")
    public String getQuestion1d(Model model) {
        // Lấy xếp hạng users theo số bài code
        List<UserRankingSummary> userRankingSummaries = statisticsService.getUserRankingByProblemCount();
        System.out.println("\nXếp hạng users theo số bài code:");
        System.out.println("--------------------------------------------------");
        System.out.printf("%-10s %-20s %-30s %-15s%n",
                "ID", "Họ tên", "Email", "Số bài code");
        for (UserRankingSummary summary : userRankingSummaries) {
            System.out.printf("%-10d %-20s %-30s %-15d%n",
                    summary.getUserId(),
                    summary.getFullName(),
                    summary.getEmail(),
                    summary.getProblemCount());
        }
        model.addAttribute("userRankingSummaries", userRankingSummaries);

        return "teacher/question/cau1d";

    }

}
