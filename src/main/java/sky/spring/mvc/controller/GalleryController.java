package sky.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import sky.spring.mvc.service.GalleryService;
import sky.spring.mvc.vo.Gallery;

@Controller
public class GalleryController {

    @Autowired private GalleryService gsrv;

    @GetMapping("/gallery/list")
    public ModelAndView list(ModelAndView mv, String cp) {
        if (cp == null) cp = "1";

        mv.setViewName("gallery/list.tiles");
        mv.addObject("gals", gsrv.readGallery(cp));

        return mv;
    }

    @GetMapping("/gallery/view")
    public ModelAndView view(ModelAndView mv,String gno) {
        mv.setViewName("gallery/view.tiles");
        mv.addObject("g", gsrv.readOneGallery(gno));

        return mv;
    }

    @GetMapping("/gallery/write")
    public String write() {
        return "gallery/write.tiles";
    }


    @PostMapping("/gallery/write")
    public String writeok(Gallery g, MultipartFile[] img) {

        gsrv.newGallery(g, img);

        return "redirect:/gallery/list";
    }

    @GetMapping("/gallery/update")
    public ModelAndView update(ModelAndView mv,String gno) {
        mv.setViewName("gallery/update.tiles");
        mv.addObject("g", gsrv.readOneGallery(gno));

        return mv;
    }

    @PostMapping("/gallery/update")
    public String updateok(Gallery g, MultipartFile[] img) {

        gsrv.modifyGallery(g, img);

        return "redirect:/gallery/list";
    }

}
