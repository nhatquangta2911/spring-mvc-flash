package ryan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Arrays;


@Controller
public class StudentDemoController {

    @GetMapping(path = "/edit")
    public String editStudent(final Model model) {

        StudentForm student = new StudentForm("Tạ Nhật Quang", 9, "An toàn thông tin", "Male",
                Arrays.asList("Vietnamese", "English"), Arrays.asList("Sport", "Music"));
        model.addAttribute("student", student);

        return "editStudentDemo";
    }

    @PostMapping(path = "/edit")
    public String editStudent(final Model model, @ModelAttribute("student") final StudentForm student) {
        model.addAttribute("username", student.getName());
        return "/welcome";
    }

    @ModelAttribute("majors")
    public String[] getMajors() {
        return new String[]{
                "Công nghệ phần mềm",
                "An toàn thông tin",
                "Mạng",
                "Hệ thống nhúng"
        };
    }

    @ModelAttribute("genders")
    public String[] getGenders() {
        return new String[]{
                "Male",
                "Female"
        };
    }

    @ModelAttribute("languages")
    public String[] getLanguages() {
        return new String[]{
                "Vietnamese",
                "English",
                "Japanese"
        };
    }

    @ModelAttribute("hobbies")
    public String[] getHobbies() {
        return new String[]{
                "Sport",
                "Music",
                "Game"
        };
    }

}
