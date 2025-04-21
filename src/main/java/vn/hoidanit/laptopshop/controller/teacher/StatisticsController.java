package vn.hoidanit.laptopshop.controller.teacher;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vn.hoidanit.laptopshop.domain.DTO.ContestResultSummary;
import vn.hoidanit.laptopshop.domain.DTO.UserScoreSummary;
import vn.hoidanit.laptopshop.service.StatisticsService;

@Controller
public class StatisticsController {
    @Autowired
    private StatisticsService statisticsService;

    @GetMapping("/teacher/statistics")
    public String getStatisticsPage(Model model) {
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

}
