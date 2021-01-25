<%@ page pageEncoding="UTF-8" %> <!-- 모듈에 사용되는 각 페이지에는 해당 값이 template 페이지와 중복될 경우 문제될 수 있으므로 한국어 출력을 위해서 해당값으로 변경-->

<header class="row">
    <div class="col-6">
        <h1>Lorem Ipsum</h1>
    </div>
    <div class="col-6 text-right">
        <h1>
            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#loginmodal">로그인</button>
            <button type="button" class="btn btn-primary">회원가입</button>
        </h1>
    </div>
</header>
<vav class="nav navbar-expand navbar-dark bg-dark">
    <ul class="nav navbar-nav nav-fill w-100">
        <li class="nav-item active"><a class="nav-link" href="/intro">프로젝트 소개</a></li>
        <li class="nav-item"><a class="nav-link"  href="/join/agree">회원가입</a></li>
        <li class="nav-item"><a class="nav-link"  href="/board/list">게시판</a></li>
        <li class="nav-item"><a class="nav-link"  href="/pds/list">자료실</a></li>
        <li class="nav-item"><a class="nav-link"  href="/gallery/list">갤러리</a></li>
        <li class="nav-item"><a class="nav-link"  href="/admin">관리자</a></li>
    </ul>
</vav>