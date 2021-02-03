package mary.spring.mvc.dao;

import mary.spring.mvc.vo.PdsVO;

import java.util.List;

public interface PdsDAO {
    int insertPds(PdsVO pvo);

    List<PdsVO> selectPds(int snum);

    int selectCountPds();

    PdsVO selectOnePds(String pno);

    PdsVO selectOneFname(String pno, String order);
}
