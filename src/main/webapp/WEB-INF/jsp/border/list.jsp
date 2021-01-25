<%@ page pageEncoding="UTF-8" %>


    <div id="main">
        <div class="margin30">
            <h3><i class="bi bi-chat-dots-fill bidragup"></i> 게시판</h3>
            <hr>
        </div>

        <div class="row margin1050">
            <div class="col-12 text-right">
                <button type="button" id="newbd" class="btn btn-info">
                    <i class="bi bi-plus-circle bidragup"></i> 새글쓰기</button>
            </div>
        </div>

        <div class="row margin1050">
            <div class="col-12">
                <table class="table table-striped tblines text-center table-hover">
                    <thead style="background: #dff0d8">
                        <tr><th style="width: 7%">번호</th>
                            <th>제목</th>
                            <th style="width: 12%">작성자</th>
                            <th style="width: 10%">작성일</th>
                            <th style="width: 7%">추천</th>
                            <th style="width: 7%">조회</th></tr>
                    </thead>
                    <tbody>
                        <tr class="text-danger"><th>공지</th>
                            <th><span class="badge badge-danger">Hot</span>
                                Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</th>
                            <th>운영자</th>
                            <th>2021.01.15</th>
                            <th>10</th>
                            <th>128</th></tr>

                        <tr><td>1</td>
                            <td><a href="/board/view?bno=1">Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</a></td>
                            <td>zzyzzy</td>
                            <td>2021.01.25</td>
                            <td>45</td>
                            <td>256</td></tr>
                        <tr><td>2</td>
                            <td>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</td>
                            <td>zzyzzy</td>
                            <td>2021.01.25</td>
                            <td>45</td>
                            <td>256</td></tr>
                        <tr><td>3</td>
                            <td>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</td>
                            <td>zzyzzy</td>
                            <td>2021.01.25</td>
                            <td>45</td>
                            <td>256</td></tr>
                        <tr><td>4</td>
                            <td>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</td>
                            <td>zzyzzy</td>
                            <td>2021.01.25</td>
                            <td>45</td>
                            <td>256</td></tr>
                        <tr><td>5</td>
                            <td>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</td>
                            <td>zzyzzy</td>
                            <td>2021.01.25</td>
                            <td>45</td>
                            <td>256</td></tr>
                        <tr><td>6</td>
                            <td>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</td>
                            <td>zzyzzy</td>
                            <td>2021.01.25</td>
                            <td>45</td>
                            <td>256</td></tr>
                        <tr><td>7</td>
                            <td>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</td>
                            <td>zzyzzy</td>
                            <td>2021.01.25</td>
                            <td>45</td>
                            <td>256</td></tr>
                        <tr><td>8</td>
                            <td>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</td>
                            <td>zzyzzy</td>
                            <td>2021.01.25</td>
                            <td>45</td>
                            <td>256</td></tr>
                        <tr><td>9</td>
                            <td>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</td>
                            <td>zzyzzy</td>
                            <td>2021.01.25</td>
                            <td>45</td>
                            <td>256</td></tr>
                        <tr><td>10</td>
                            <td>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</td>
                            <td>zzyzzy</td>
                            <td>2021.01.25</td>
                            <td>45</td>
                            <td>256</td></tr>
                        <tr><td>11</td>
                            <td>Lorem ipsu, dolor sit amen, consectetur adipiscing elit.</td>
                            <td>zzyzzy</td>
                            <td>2021.01.25</td>
                            <td>45</td>
                            <td>256</td></tr>

                    </tbody>
                </table>
            </div>
        </div> <!-- 게시판 테이블 -->

        <div class="row">
            <div class="col-12">
                <ul class="pagination justify-content-center">
                   <li class="page-item disabled"><a href="#" class="page-link font-weight-bold">이전</a></li>
                   <li class="page-item active"><a href="#" class="page-link">1</a></li>
                   <li class="page-item"><a href="#" class="page-link">2</a></li>
                   <li class="page-item"><a href="#" class="page-link">3</a></li>
                   <li class="page-item"><a href="#" class="page-link">4</a></li>
                   <li class="page-item"><a href="#" class="page-link">5</a></li>
                   <li class="page-item"><a href="#" class="page-link">6</a></li>
                   <li class="page-item"><a href="#" class="page-link">7</a></li>
                   <li class="page-item"><a href="#" class="page-link">8</a></li>
                   <li class="page-item"><a href="#" class="page-link">9</a></li>
                   <li class="page-item"><a href="#" class="page-link">10</a></li>
                   <li class="page-item"><a href="#" class="page-link">다음</a></li>
                </ul>
            </div>
        </div> <!-- 페이지네이션 -->

    </div>
