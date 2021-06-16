<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="thumbURL" value="http://localhost/thumb/" />

<div id="main">
    <div>
        <i class="bi bi-image-fill" style="font-size: 2rem">갤러리</i>
    <hr>
    </div> <!--페이지 타이틀-->

    <div class="row">
        <div class="col-5 offset-1">
            <div class="form-group row">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <select class="form-control col-3 border-primary" name="findtype" id="findtype">
                    <option value="title">제목</option>
                    <option value="titcont">제목+내용</option>
                    <option value="userid">작성자</option>
                    <option value="contents">내용</option>
                </select>&nbsp;
                <input type="text" name="findkey" id="findkey" class="form-control col-4 border-primary">&nbsp;
                <button type="button" id="findbtn" class="btn btn-primary">
                    <i class="bi bi-search"></i>검색</button>
            </div>
        </div>
        <div class="col-5 text-right">
          <button type="button" class="btn btn-light" id="newgalbtn">
              <i class="bi bi-plus-circle-fill"></i> 사진올리기</button>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <ul class="list-inline moveright">
                <c:forEach var="g" items="${gals}">
                <li class="list-inline-item pushdown">
                    <div class="card cdwide">
                        <img class="imgsize card-img-top"
                             onclick="showimg('${g.gno}');"
                             src="${thumbURL}small_${g.gno}_${fn:split(g.fnames, "[/]")[0]}">
                        <div class="card-body">
                            <h5 class="card-title">${g.title}</h5>
                            <p class="card-text">${g.userid}
                            <span class="pushright">${fn:substring(g.regdate, 0, 10)}</span></p>
                            <p class="card-text">
                            <i class="bi bi-eye-fill"></i> ${g.views}
                                <span class="pushright">
                                    <i class="bi bi-hand-thumbs-up"></i> ${g.thumbup}</span>
                            </p>
                        </div>
                    </div>
                </li>
                </c:forEach>
            </ul>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a href="#" class="page-link">이전</a></li>
                <li class="page-item active">
                    <a href="#" class="page-link">1</a></li>
                <li class="page-item">
                    <a href="#" class="page-link">2</a></li>
                <li class="page-item">
                    <a href="#" class="page-link">3</a></li>
                <li class="page-item">
                    <a href="#" class="page-link">4</a></li>
                <li class="page-item">
                    <a href="#" class="page-link">5</a></li>
                <li class="page-item">
                    <a href="#" class="page-link">6</a></li>
                <li class="page-item">
                    <a href="#" class="page-link">7</a></li>
                <li class="page-item">
                    <a href="#" class="page-link">8</a></li>
                <li class="page-item">
                    <a href="#" class="page-link">9</a></li>
                <li class="page-item">
                    <a href="#" class="page-link">10</a></li>
                <li class="page-item" >
                    <a href="#" class="page-link">다음</a></li>
            </ul>
        </div>
    </div> <!--페이지네이션-->

</div>