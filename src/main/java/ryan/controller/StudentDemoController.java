package ryan.controller;

import com.google.common.collect.ImmutableMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Controller
public class StudentDemoController {

    @GetMapping(path = "/edit")
    public String editStudent(final Model model) {


        StudentForm student = new StudentForm("TA NHAT QUANG", 100, "SE", "M",
                Arrays.asList("Vietnamese", "English"), Arrays.asList("Sport", "Music"));
        model.addAttribute("student", student);

        return "editStudentDemo";
    }

    @PostMapping(path = "/edit")
    public String editStudent(final Model model, @ModelAttribute("student") final StudentForm student) {
        model.addAttribute("student", student);
        return "studentInfo";
    }

    @ModelAttribute("majors")
    public List<Major> getMajors() {
       return Arrays.asList(new Major("SE", "Software Engineering"),
                            new Major("N", "Networking"),
                            new Major("IS","Information Security"));
    }

    @ModelAttribute("genders")
    public List<String> getGenders() {
        return Arrays.asList("Male", "Female");
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
