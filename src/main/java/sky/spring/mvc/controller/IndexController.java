package sky.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    // 5.0 버젼 이상은 RequestMapping 대신 겟방식으로 사용
    @GetMapping("/")
    public String index() {

        return "index.tiles";
    }

}
