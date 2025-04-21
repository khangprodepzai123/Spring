package vn.hoidanit.laptopshop.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import vn.hoidanit.laptopshop.domain.Contest;
import vn.hoidanit.laptopshop.service.ContestService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContestsController {
    private final ContestService contestService;

    public ContestsController(ContestService contestService) {
        this.contestService = contestService;
    }

    @GetMapping("/contests")
    public String getContestsPage(Model model) {
        List<Contest> contests = this.contestService.getAllContest();
        model.addAttribute("contests1", contests);
        return "client/contests/show";

    }

}
