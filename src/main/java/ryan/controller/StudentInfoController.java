package ryan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StudentInfoController {

    @GetMapping(path = "/info")
    public String showInfo(final Model model) {
        return "studentInfo";
    }

}
