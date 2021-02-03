package mary.spring.mvc.service;

import mary.spring.mvc.vo.PdsVO;

import java.util.List;
import java.util.Map;

public interface PdsService {
    boolean newPds(Map<String, String> frmdata, PdsVO pvo);

    List<PdsVO> readPds(String cp);

    int contPds();

    PdsVO readOnePds(String pno);

    PdsVO readOneFname(String pno, String order);
}
