package sky.spring.mvc.service;

import org.springframework.web.multipart.MultipartFile;
import sky.spring.mvc.vo.Gallery;
import sky.spring.mvc.vo.Pds;

import java.util.List;

public interface GalleryService {

    boolean newGallery(Gallery g, MultipartFile[] img);
    List<Gallery> readGallery(String cp);
    Gallery readOneGallery(String gno);

}
