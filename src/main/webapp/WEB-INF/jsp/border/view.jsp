<%@ page pageEncoding="UTF-8" %>


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
                <button type="button" id="newbdbtn"
                        class="btn btn-light">
                    <i class="bi bi-plus-circle-fill bidragup"></i> 새글쓰기</button>
            </div>
        </div> <!-- 버튼들 -->

        <div class="row margin1050">
            <table class="table">
                <tr><th colspan="2" class="tblines2 tbbg1"><h2>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</h2></th></tr> <!-- 제목 -->
                <tr class="tbbg2"><td>mary</td><td class="text-right">2021.01.25 12:12:12 / 45 / 256</td></tr> <!-- 작성자, 작성일, 조회수 -->
                <tr><td colspan="2" class="tbbg3 tblines2">Contrary to popular belief, Lorem Ipsum is not simply random text. <br> It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. <br>  Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. <br>  This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. <br>

                    The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. <br>  Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. <br>
                </td></tr> <!-- 본문 -->
            </table>
        </div> <!-- 본문글-->

        <div class="row margin1050">
            <div class="col-6">
                <button type="button" id="upbdbtn"
                        class="btn btn-warning">
                    <i class="bi bi-pencil-square bidragup"></i> 수정하기</button>

                <button type="button" id="rmbdbtn"
                        class="btn btn-danger">
                    <i class="bi bi-trash-fill bidragup"></i> 삭제하기</button>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="listbdbtn"
                        class="btn btn-light">
                    <i class="bi bi-card-list bidragup"></i> 목록으로</button>
            </div>
        </div> <!-- 버튼들 -->

        <div class="row margin1050" style="margin-top: 100px">
            <h3><i class="bi bi-chat-square-dots-fill bidragup"></i>나도 한마디</h3>
            <table class="table tblines tbwide">
                <tr><td><h4>marymary</h4></td>
                    <td>
                        <div class="cmtbg1">2021-01-30 15:15:15</div>
                        <p>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</p> <!-- 댓글-->
                        <ul class="list-unstyled">
                            <li>
                                <div class="cmtbg2"><span class="h4">mary</span>
                                <span class="pushright">2021-01-30 16:16:16</span></div>
                                <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.</p>
                            </li>
                        </ul> <!-- 댓글의 댓글 -->
                    </td></tr>
                <tr><td><h4>marymary</h4></td>
                    <td>
                        <div class="cmtbg1">2021-01-30 15:15:15</div>
                        <p>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</p> <!-- 댓글-->
                </td></tr>
                <tr><td><h4>marymary</h4></td>
                    <td>
                        <div class="cmtbg1">2021-01-30 15:15:15</div>
                        <p>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</p> <!-- 댓글-->
                </td></tr>

            </table>

        </div> <!-- 댓글목록 -->

        <div class="row margin1050">
            <form id="replyfrm" class="card card-body bg-light">
                <div class="form-group row justify-content-center">
                    <label class="pushtop50 text-primary font-weight-bold">로그인하세요</label>&nbsp;&nbsp;
                    <textarea id="comments" rows="5" class="form-control col-7"></textarea>&nbsp;&nbsp;
                    <span><button id="bdcmtbtn" class="btn btn-dark pushtop50"><i class="bi bi-chat-text-fill bidragup"></i> 댓글쓰기</button></span>
                </div>
            </form>
        </div> <!-- 댓글폼 -->


    </div> <!-- 게시판 테이블 -->


</div>
