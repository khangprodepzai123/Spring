package vn.hoidanit.laptopshop.controller.teacher;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import vn.hoidanit.laptopshop.domain.Problem;
import vn.hoidanit.laptopshop.service.ProblemService;

@Controller
public class ProblemController {
    private final ProblemService problemService;

    public ProblemController(ProblemService problemService) {
        this.problemService = problemService;
    }

    @GetMapping("/teacher/problem")
    public String getProblemPage(Model model) {
        List<Problem> problems = this.problemService.getAllProblems();
        model.addAttribute("problems1", problems);
        return "teacher/problem/show";
    }

}
