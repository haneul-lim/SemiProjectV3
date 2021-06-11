package sky.spring.mvc.service;

import sky.spring.mvc.vo.Reply;

import java.util.List;

public interface BoardReplyService {

    List<Reply> readReply(String bdno);

    // 댓글작성
    boolean newComment(Reply r);
    // 대댓글작성
    boolean newReply(Reply r);

}
