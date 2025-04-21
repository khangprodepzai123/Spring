package vn.hoidanit.laptopshop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomePageController {
    @GetMapping("/")
    public String getHomePage() {
        return "client/homepage/show";
    }

    @GetMapping("/login")
    public String getLoginPage() {

        return "client/auth/login";
    }

    @GetMapping("/about")
    public String getAboutPage() {

        return "client/about/show";
    }

    @GetMapping("/home")
    public String getHPage() {

        return "client/homepage/show";
    }

}
