package ryan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(path = "/greeting")
public class GreetingController {

    // Handling Method
    @RequestMapping(path="", method= RequestMethod.GET)
    public String greeting(final Model model) {
        model.addAttribute("message", "Hello world");
        return "greeting";
    }

    @RequestMapping(path = "{id}", method = RequestMethod.GET)
    public String greeting2(final Model model, @PathVariable(value = "id") final String id) {
        model.addAttribute("message", "Hello world " + id);
        return "greeting";
    }

    @RequestMapping(path = "", method = RequestMethod.GET, params = {"foo", "!bar"})
    public String greeting3(final Model model) {
        model.addAttribute("message", "Hello world 2");
        return "greeting";
    }

    @RequestMapping(path = "", method = RequestMethod.GET, params = {"!foo", "bar"})
    public String greeting4(final Model model, HttpServletRequest request) {
        String message = request.getParameter("bar");
        model.addAttribute("message", message);
        model.addAttribute("message", "Hello world 3");
        return "greeting";
    }

    @RequestMapping(path = "", method = RequestMethod.GET, params = {"username", "password"})
    public String greeting5(final Model model, HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(username.equals("quang") && password.equals("123")) {
            model.addAttribute("username", username);
            model.addAttribute("password", password);
            return "/welcome";
        } else {
            return "";
        }

    }

}
