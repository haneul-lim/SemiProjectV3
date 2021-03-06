<%@ page pageEncoding="UTF-8"%>


<div id="main">
<script src="https://www.google.com/recaptcha/api.js"></script>
    <div>
        <i class="bi bi-image-fill" style="font-size: 2rem">갤러리</i>
    <hr>
    </div> <!--페이지 타이틀-->

  <div class="row">
    <div class="col-5 offset-1">
        <h4><i class="fas fa-plus-circle"> 새글 쓰기</i></h4>
    </div>
    <div class="col-5 text-right">
      <button type="button" class="btn btn-light"><i class="fas fa-list"></i> 목록으로</button>
    </div>

  <div class="card card-body bg-light col-10 offset-1">
      <form name="galfrm" id="galfrm">
                <div class="form-group row">
                    <label for="title" class="text-danger col-form-label text-right col-2">제목</label>
                    <input type="text" id="title" name="title" class="border-danger form-control col-9">
                </div>
                <div class="form-group row">
                    <label for="userid" class="text-danger col-form-label text-right col-2">작성자</label>
                    <input type="text" id="userid" name="userid" class="border-danger form-control col-9" readonly value="${UID}">
                </div>
                <div class="form-group row">
                    <label for="contents" class="text-right text-danger col-form-label col-2">본문내용</label>
                    <textarea id="contents" name="contents" rows="15" class="border-danger form-control col-9"></textarea>
                </div>
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right text-danger" for="file1">파일첨부</label>
                    <div class="custom-file col-9">
                        <input type="file" name="img" id="file1" class="custom-file-input">
                        <label class="custom-file-label">
                        첨부할 파일을 선택하세요</label>
                    </div>
                    <div class="custom-file col-9 offset-2">
                        <input type="file" name="img" id="file2" class="custom-file-input">
                        <label class="custom-file-label">
                        첨부할 파일을 선택하세요</label>
                    </div>
                    <div class="custom-file col-9 offset-2">
                        <input type="file" name="img" id="file3" class="custom-file-input">
                        <label class="custom-file-label">
                        첨부할 파일을 선택하세요</label>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="text-danger col-form-label text-right col-2">자동<br>입력방지</label>
                     <div class="g-recaptcha"
                            data-sitekey="6LdlIwgbAAAAAK942RrLAG9Oo4FlNuie0lN3EUKM"></div>
                           <input type="hidden" id="g-recaptcha" name="g-recaptcha" />
                </div>
                <div class="form-group row">
                    <label class="col-2 col-form-label"></label>
                    <input type="text" id="captcha" name="captcha" class="border-danger form-control col-2">&nbsp;
                    <button type=button id="captchaimgbtn" class="btn btn-dark"><i class="fas fa-question-circle"></i> 다른 capcha보기</button>
                </div>


        <hr class="col-10">
        <div class="col-12 text-center">
            <button type="button" id="newgal" class="btn btn-primary btn-sm">
                <i class="fas fa-check"></i> 입력완료</button>
            <button type="reset" class="btn btn-danger btn-sm">
                <i class="fas fa-times"></i> 취소하기</button>
        </div><!-- 버튼들 -->

      </form> <!-- form -->
  </div> <!-- card body -->


  </div>


</div>
