package ryan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TestPathParameterController {

//    @GetMapping(path = "/welcome/{id}")
//    public String welcome(final Model model, @PathVariable(value="id") String id,
//                          @RequestParam(value="param1", required=true) String param1,
//                          @RequestParam(value="param2", required=false) String param2) {
//        model.addAttribute("welcome", "Login Successfully!");
//        return "welcome";
//    }
}
