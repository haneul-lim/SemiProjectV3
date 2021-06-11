package sky.spring.mvc.dao;

import sky.spring.mvc.vo.Reply;

import java.util.List;

public interface BoardReplyDAO {

    List<Reply> selectReply(String bdno);

    // 댓글작성
    int insertComment(Reply r);
    // 대댓글작성
    int insertReply(Reply r);

}
