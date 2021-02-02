// list
$('#newbd').on('click', function () {
   location.href = "/board/write";
});

$('#bdfindbtn').on('click', function () {
    let param = '?findtype=' + $('#findtype').val();
    param += '&findkey=' + $('#findkey').val();

    location.href='/board/find' + param + '&cp=1';
})

// view
$('#listbdbtn').on('click', function (){
    // location.href = '/board/list?cp=1'; // 최신글(1페이지)로 이동
    location.href = '/board/list?cp=' + $('#cp').val(); // 내가 보고 있던 페이지로 이동
    // history.back(); // 내가 보고있던 페이지로 이동 // 위랑 두개의 방법으로 둘 다 쓸 수 있음
});
$('#thumbbtn').on('click', function (){});

$('#upbdbtn').on('click', function (){
    if (confirm('정말루 수정하시겠슴까 ?')) {
        let param= '?bno=' + $('#bno').val();
        param += "&cp=" + $('#cp').val();
        location.href = '/board/update' + param;
    }
});

$('#bdcmtbtn').on('click', function (){
   if ($('#reply').val() == '') alert('댓글을 작성하세요 !');
   else {
       $('#replyfrm').attr('method', 'post');
       $('#replyfrm').attr('action', '/board/replyok');
       $('#uid').val('리플작성');
       $('#replyfrm').submit();
   }
});

function addReply(cno) {
    $('#replyModal').modal('show');
    $('#cno').val(cno); // 대댓글 작성 시 부모댓글 번호를 cno 에 저장함
} // 대댓글 대화상자 띄우기기

$('#rpbtn').on ('click', function () {
    if($('#rereply').val() == '') alert('대댓글을 작성하세요~');
    else {
        $('#rpfrm').attr("method", "post");
        $('#rpfrm').attr("action", "/board/replyok");
        $('#rpfrm').submit();
    }
}); // 대댓글 작성하기


$('#rmbdbtn').on('click', function (){
    if (confirm('정말루 삭제하시겠어영 ?')) {
        let param = '?bno=' + $('#bno').val();
        param += "&cp=" + $('#cp').val();
        param += "&userid=" + $('#userid').val();
        location.href = '/board/delete' + param;
    }
});


// write
$('#newbdbtn').on('click', function (){
    if ($('#title').val()== '') alert('제목을 작성하세요!');
    else if ($('#contents').val() == '') alert('본문 작성하세요!');
    else {
        $('#newbdfrm').attr("method", "post");
        $('#newbdfrm').attr("action", "/board/write");
        $('#newbdfrm').submit();
    }
});

// update
$('#upbdokbtn').on('click', function () {

    if (confirm('정말루 수정하시겠습니까?')) {
        $('#upbdfrm').attr("method", "post");
        $('#upbdfrm').attr("action", "/board/update");
        $('#upbdfrm').submit();
    }
});