package vn.hoidanit.laptopshop.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.RankService;
import vn.hoidanit.laptopshop.service.UserService;

@Controller
public class RankController {
    private final UserService userService;
    private final RankService rankService;

    public RankController(UserService userService, RankService rankService) {
        this.userService = userService;
        this.rankService = rankService;
    }

    @GetMapping("/rank")
    public String getRankPage(Model model) {
        List<User> users = this.rankService.getAllUsersByScore();
        model.addAttribute("users1", users);
        return "client/rank/show";
    }

}
