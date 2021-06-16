package sky.spring.mvc.dao;

import sky.spring.mvc.vo.Gallery;
import sky.spring.mvc.vo.Pds;

import java.util.List;

public interface GalleryDAO {

    int insertGallery(Gallery g);
    List<Gallery> selectGallery(int snum);
    Gallery selectOneGallery(String gno);

}
