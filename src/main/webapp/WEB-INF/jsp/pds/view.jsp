<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%-- 줄바꿈 문자를 newChar 변수에 저장 --%>
<%-- <% String newChar = "블라블라"; %> --%>
<%-- <c:set var="newChar" value="블라블라" /> 둘다 같은건데 위에꺼 보다는 아래꺼가 사용이 더 용이함 --%>
<%-- JSP 객체의 생존기간 : scope --%>
<%-- page : 현재 페이지내에서만 객체 사용 / 생존기간 가장 짧음 --%>
<%-- request : 이전 페이지(폼)에서 생성한 객체를 현재 페이지(처리)에 요청을 통해 사용 --%>
<%-- session : 동일 브라우져내에서 공유할 수 있는 객체 / 로그인 객체가 살아있을떄까진  생존 --%>
<%-- application : 어플리케이션(프로젝트) 내에서 공유할 수 있는 객체 / 톰캣서버를 끌때까진 남아있음 / 생존기간 가장 김  --%>

<%-- pno : 게시글의 글번호 --%>


<c:set var="newChar" value="
" scope="application" />

    <div id="main">
        <div class="margin30">
            <h3><i class="bi bi-chat-dots-fill bidragup"></i> 게시판</h3>
            <hr>
        </div>

        <div class="row margin1050">
            <div class="col-6">
                <button type="button" id="prevbtn"
                        class="btn btn-light">
                    <i class="bi bi-chevron-left bidragup"></i> 이전게시물</button>

                <button type="button" id="nextbtn"
                        class="btn btn-light">
                    <i class="bi bi-chevron-right bidragup"></i> 다음게시물</button>
           </div>
            <div class="col-6 text-right">
                <c:if test="${not empty UID}">
                <button type="button" id="newbd"
                        class="btn btn-light">
                <i class="bi bi-plus-circle-fill bidragup"></i> 새글쓰기</button></c:if>
            </div>
        </div> <!-- 버튼들 -->

        <div class="row margin1050">
            <table class="table">
                <tr><th colspan="2" class="tblines2 tbbg1"><h2>${pd.title}</h2></th></tr> <!-- 제목 -->
                <tr class="tbbg2"><td>${pd.userid}</td><td class="text-right">${pd.regdate} / ${pd.thumbs} / ${pd.views}</td></tr> <!-- 작성자, 작성일, 조회수 -->
                <tr><td colspan="2" class="tbbg3 tblines2">${fn:replace(pd.contents, newChar, "<br>")} <!-- bd.contents 에서 newChar 를 찾아서 <br> 태그로 바꿔줌 -->
                </td></tr> <!-- 본문 -->
                <tr><td class="text-left">첨부1</td><td><a href="/pds/down?pno=${pd.pno}&order=1">${pd.fname1}</a> (${pd.fsize1}kb, ${pd.fdown1}회 다운로드 함)</td></tr>
                <c:if test="${not empty pd.fname2}">
                    <tr><td class="text-left">첨부2</td><td><a href="/pds/down?pno=${pd.pno}&order=2">${pd.fname2}</a> (${pd.fsize2}kb, ${pd.fdown2}회 다운로드 함)</td></tr>
                </c:if>
                <c:if test="${not empty pd.fname3}">
                    <tr><td class="text-left">첨부3</td><td><a href="/pds/down?pno=${pd.pno}&order=3">${pd.fname3}</a> (${pd.fsize3}kb, ${pd.fdown3}회 다운로드 함)</td></tr>
                </c:if>
            </table>
        </div> <!-- 본문글-->

        <div class="row margin1050">
            <div class="col-6">
                <%-- 로그인 했고, 지금 보는 글이 내가 작성한 글이라면 수정/삭제하기를 띄워줌 --%>
                <c:if test="${not empty UID and UID eq pd.userid}">
                    <button type="button" id="upbdbtn"
                            class="btn btn-warning">
                        <i class="bi bi-pencil-square bidragup"></i> 수정하기</button>

                    <button type="button" id="rmbdbtn"
                            class="btn btn-danger">
                        <i class="bi bi-trash-fill bidragup"></i> 삭제하기</button>
                </c:if>
            </div>
            <div class="col-6 text-right">
            <c:if test="${not empty UID}">
                <button type="button" id="thumbbtn" class="btn btn-success"><i class="bi bi-hand-thumbs-up bidragup"></i> 추천하기</button>
            </c:if>

                <button type="button" id="listbdbtn"
                        class="btn btn-dark">
                    <i class="bi bi-card-list bidragup"></i> 목록으로</button>
            </div>
        </div> <!-- 버튼들 -->

        <input type="hidden" id="pno" value="${param.pno}" >
        <input type="hidden" id="cp" value="${param.cp}" >
        <input type="hidden" id="userid" value="${pd.userid}" >

        <div class="row margin1050" style="margin-top: 100px">
            <h3><i class="bi bi-chat-square-dots-fill bidragup"></i>나도 한마디</h3>
            <table class="table tblines tbwide">
                <c:forEach var="r" items="${rp}">
                <c:if test="${r.rno eq r.cno}">
                    <tr><td><h4>${r.userid}</h4></td>
                    <td>
                        <div class="cmtbg1">${r.regdate}</div>
                        <span style="float:right">
                            <c:if test="${not empty UID}">
                                <a href="javascript:addReply('${r.rno}')">[추가]</a>
                            </c:if>
                            <c:if test="${UID eq r.userid}">
                                <a>[수정]</a><a>[삭제]</a>
                            </c:if>
                        </span>
                        <p>${r.reply}</p>
                    </td></tr>
                </c:if> <%-- 댓글 --%>

                <c:if test="${r.rno ne r.cno}">
                    <tr><td></td>
                        <td>
                            <ul class="list-unstyled">
                                <li> <div class="cmtbg2"><span class="h4">${r.userid}</span>
                                     <span class="pushright">${r.regdate}</span></div>
                                     <p>${r.reply}</p>
                                </li>
                            </ul>
                        </td></tr>
                    </c:if> <%-- 댓글의 댓글글 --%>
               </c:forEach>

            </table>

        </div> <!-- 댓글목록 -->

        <c:if test="${not empty UID}">
            <div class="row margin1050">
                <form id="replyfrm" class="card card-body bg-light">
                    <div class="form-group row justify-content-center">
                        <label class="pushtop50 text-primary font-weight-bold">${UID}</label>&nbsp;&nbsp;
                        <textarea id="reply" name="reply" rows="5" class="form-control col-7"></textarea>&nbsp;&nbsp;
                        <span><button type="button" id="bdcmtbtn" class="btn btn-dark pushtop50"><i class="bi bi-chat-text-fill bidragup"></i> 댓글쓰기</button></span>
                    </div>
                    <input type="hidden" name="pno" value="${param.pno}">
                    <input type="hidden" name="userid" id="uid" value="${UID}">
                </form>
            </div> <!-- 댓글폼 -->
        </c:if>

    </div> <!-- 게시판 테이블 -->


<!-- 대댓글 작성을 위한 모달대화상자 -->
<div class="modal hide" id="replyModal" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header"><h3 class="modal-title">대댓글 쓰기</h3></div>
            <div class="modal-body"><form name="rpfrm" id="rpfrm" class="well form-inline">
                <textarea name="reply" id="rereply" rows="8" cols="75" class="span4"></textarea>
                <input type="hidden" name="userid" value="${UID}">
                <input type="hidden" name="pno" value="${param.pno}">
                <input type="hidden" name="cno" id="cno">
            </form></div>
            <div class="modal-footer"><button type="button" id="rpbtn" class="btn btn-warning">대댓글 작성</button></div>
        </div>
    </div>
</div>
