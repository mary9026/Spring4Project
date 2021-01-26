package mary.spring.mvc.dao;

import mary.spring.mvc.vo.MemberVO;
import mary.spring.mvc.vo.ZipcodeVO;

import java.util.List;


public interface MemberDAO {
    int insertMember(MemberVO mvo);

    List<ZipcodeVO> selectZipcode(String dong);

    int selectOneUserid(String uid);
}
