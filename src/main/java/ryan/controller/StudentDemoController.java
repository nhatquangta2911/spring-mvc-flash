package ryan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ryan.form.StudentForm;
import java.util.Arrays;

@Controller
public class StudentDemoController {

    @GetMapping(path = "/edit")
    public String editStudent(final Model model) {

        StudentForm student = new StudentForm("Ryan Shaun", 10,
                "Software Engineering", "Male",
                Arrays.asList("EN", "VI"), Arrays.asList("Game", "Music", "Sport", "Code"));

        model.addAttribute("student", student);

        return "editStudentDemo";
    }

}
