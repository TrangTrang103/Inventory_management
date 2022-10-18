package inventory.controller;

import java.time.LocalDateTime;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	@GetMapping("/index")
	public String index(Model model) {
	    //LocalDateTime current = LocalDateTime.now();
	   // model.addAttribute("current", current);
		return "index";
	}
}
