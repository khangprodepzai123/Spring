package vn.hoidanit.laptopshop.controller.teacher;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashController {

    @GetMapping("/teacher")
    public String getDashPage() {
        return "teacher/dashboard/show";
    }
}
