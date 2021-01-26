package mary.spring.mvc.service;

import mary.spring.mvc.vo.MemberVO;

public interface MemberService{
    String newMember(MemberVO mvo);

    String findZipcode(String dong);

    String checkUserid(String uid);
}
