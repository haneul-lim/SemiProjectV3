<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:set var="fnames" value="${fn:split(g.fnames,'/')}" />
<c:set var="fsizes" value="${fn:split(g.fsizes,'/')}" />
<c:set var="baseURL" value="http://localhost/cdn/" />


<div id="main">
    <div>
        <i class="bi bi-image-fill" style="font-size: 2rem">갤러리</i>
    <hr>
    </div> <!--페이지 타이틀-->

    <div>
        <div class="row">
            <div class="col-5 offset-1">
                <button type="button" id="prevbtn" class="btn btn-light">
                    <i class="bi bi-caret-left-fill"></i>이전게시물</button>
                &nbsp;
                <button type="button" id="nextbtn" class="btn btn-light">
                    <i class="bi bi-caret-right-fill"></i>다음게시물</button>
            </div>
            <div class="col-5 text-right">
                <button type="button" class="btn btn-light">
                  <i class="bi bi-plus-circle-fill"></i>
                    새글쓰기</button>
            </div>
        </div>
        <div class="row">
            <table class="table col-10 offset-1">
                <tr class="tbbg1 text-center"><th colspan="2">
                    <h3>${g.title}</h3>
                    </th></tr>
                <tr class="tbbg2">
                    <td style="width: 50%">${g.userid}</td>
                    <td class="text-right">${g.regdate} / ${g.thumbup} / ${g.views}</td></tr>
                <tr class="tbbg3"><td colspan="2">
                        <c:forEach var="f" items="${fnames}">

                        <c:set var="pos" value="${fn:indexOf(f, '.')}" />
                        <c:set var="fname" value="${fn:substring(f, 0, pos)}" />
                        <c:set var="fext" value="${fn:substring(f, pos + 1, fn:length(f))}" />
                        <div>
                        <img src="${baseURL}${fname}${g.uuid}.${fext}" class="img-fluid">
                        </div>
                        </c:forEach>

                    </td></tr> <!-- 본문 -->

                <%--첨부파일 표시--%>
                <c:forEach begin="0" end="${fn:length(fnames) - 1}" var="i">
                <tr><td colspan="2" class="tbbg4">
                    <i class="bi bi-image"></i>
                        ${fnames[i]} (${fsizes[i]}KB)</td></tr>
                </c:forEach>
            </table>
        </div>

        <div class="row">
            <div class="col-5 offset-1">
                <button type="button" class="btn btn-warning text-white">
                    <i class="bi bi-question-circle"></i>수정하기</button>
                &nbsp;
                <button type="button" class="btn btn-danger">
                    <i class="bi bi-x-circle"></i>삭제하기</button>
            </div>
            <div class="col-5 text-right">
              <button type="button" class="btn btn-light">
                  <i class="bi bi-list"></i> 목록으로</button>
            </div>
        </div>
    </div> <!--본문글-->

    <div>
        <div class="row">
            <h3 class="col-10 offset-1">
                <i class="bi bi-chat-dots-fill"></i> 나도 한마디</h3>
        </div>
        <table class="table col-10 offset-1">
            <tr><td><h4>zzyzzy</h4></td>
                <td><div class="cmtbg1">2021.05.21 10:10:10</div>
                    <p>아하! 그렇군요!</p></td>
            </tr>
            <tr>
                <td></td>
                <td><div class="cmtbg2">
                    <span>sky</span>
                    <span class="pushright">
                        2021.05.21 10:10:10</span></div>
                    <p>네ㅔ에ㅔ</p></td>
            </tr>
            <tr><td><h4>zzyzzy</h4></td>
                <td><div class="cmtbg1">2021.05.21 10:10:10</div>
                    <p>아하! 그렇군요!</p></td>
            </tr>
            <tr>
                <td></td>
                <td><div class="cmtbg2">
                    <span>sky</span>
                    <span class="pushright">
                        2021.05.21 10:10:10</span></div>
                    <p>네ㅔ에ㅔ</p></td>
            </tr>
            <tr><td><h4>zzyzzy</h4></td>
                <td><div class="cmtbg1">2021.05.21 10:10:10</div>
                    <p>아하! 그렇군요!</p></td>
            </tr>
            <tr>
                <td></td>
                <td><div class="cmtbg2">
                    <span>sky</span>
                    <span class="pushright">
                        2021.05.21 10:10:10</span></div>
                    <p>네ㅔ에ㅔ</p></td>
            </tr>
            <tr><td><h4>zzyzzy</h4></td>
                <td><div class="cmtbg1">2021.05.21 10:10:10</div>
                    <p>아하! 그렇군요!</p></td>
            </tr>
            <tr>
                <td></td>
                <td><div class="cmtbg2">
                    <span>sky</span>
                    <span class="pushright">
                        2021.05.21 10:10:10</span></div>
                    <p>네ㅔ에ㅔ</p></td>
            </tr>
            <tr><td><h4>zzyzzy</h4></td>
                <td><div class="cmtbg1">2021.05.21 10:10:10</div>
                    <p>아하! 그렇군요!</p></td>
            </tr>
            <tr>
                <td></td>
                <td><div class="cmtbg2">
                    <span>sky</span>
                    <span class="pushright">
                        2021.05.21 10:10:10</span></div>
                    <p>네ㅔ에ㅔ</p></td>
            </tr>
            <tr><td><h4>zzyzzy</h4></td>
                <td><div class="cmtbg1">2021.05.21 10:10:10</div>
                    <p>아하! 그렇군요!</p></td>
            </tr>
            <tr>
                <td></td>
                <td><div class="cmtbg2">
                    <span>sky</span>
                    <span class="pushright">
                        2021.05.21 10:10:10</span></div>
                    <p>네ㅔ에ㅔ</p></td>
            </tr>
            <tr><td><h4>zzyzzy</h4></td>
                <td><div class="cmtbg1">2021.05.21 10:10:10</div>
                    <p>아하! 그렇군요!</p></td>
            </tr>
            <tr>
                <td></td>
                <td><div class="cmtbg2">
                    <span>sky</span>
                    <span class="pushright">
                        2021.05.21 10:10:10</span></div>
                    <p>네ㅔ에ㅔ</p></td>
            </tr>
            <tr><td><h4>zzyzzy</h4></td>
                <td><div class="cmtbg1">2021.05.21 10:10:10</div>
                    <p>아하! 그렇군요!</p></td>
            </tr>
            <tr>
                <td></td>
                <td><div class="cmtbg2">
                    <span>sky</span>
                    <span class="pushright">
                        2021.05.21 10:10:10</span></div>
                    <p>네ㅔ에ㅔ</p></td>
            </tr>
        </table>
    </div><!--댓글목록-->

    <div>
        <div class="row">
            <form name="replyfrm" id="replyfrm" class="card card-body bg-light col-10 offset-1">
                <div class="form-group row justify-content-center">
                    <label class="col-form-label col-2 pushdwn" for="reply">
                        작성자</label>
                    <textarea class="form-control col-7" name="reply" id="reply" rows="5"></textarea>
                    &nbsp;&nbsp;
                    <button class="btn btn-dark form-control col-2 pushdwn" type="button"><i class="bi bi-check-circle-fill"></i> 댓글쓰기</button>
                </div>
            </form>
        </div>
    </div><!--댓글쓰기-->


</div>