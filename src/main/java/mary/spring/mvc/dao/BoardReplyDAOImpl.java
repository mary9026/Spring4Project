package mary.spring.mvc.dao;

import mary.spring.mvc.vo.ReplyVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("brdao")
public class BoardReplyDAOImpl implements BoardReplyDAO{

    @Autowired private SqlSession sqlSession;

    @Override
    public List<ReplyVO> selectReply(int bno) {
        return sqlSession.selectList("reply.selectList", bno);
    }

    @Override // 댓글쓰기
    public int insertReply(ReplyVO rvo) {
        rvo.setCno(selectLastRno());
        // 댓글 저장 시 최근 댓글번호를 알아내서 cno 에 저장
        return sqlSession.insert("reply.insertReply", rvo);
        // return sqlSession.insert("reply.insertReply2", rvo);
    }

    @Override // 대댓글쓰기
    public int insertReReply(ReplyVO rvo) {
        return sqlSession.insert("reply.insertReply", rvo);
    }

    public String selectLastRno() {
        return sqlSession.selectOne("reply.lastRno");
    }
}
