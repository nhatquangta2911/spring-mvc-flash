package ryan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @GetMapping(path = "/login")
    public String login(final Model model) {
        return "/login";
    }

    @PostMapping(path = "/login")
    public String login(final Model model,
                        @RequestParam(value = "email") String email,
                        @RequestParam(value = "password") String password) {

        if("user01@gmail.com".equals(email) && "123456".equals(password)) {
            model.addAttribute("email", email);
            return "redirect:/welcome";
        }

        model.addAttribute("error", "Email or password is invalid");
        return "/login";

    }

}
