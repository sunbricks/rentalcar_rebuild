<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<div id="login-page">
    <div class="login-box">
        <h2 class="login-title">렌트어때 아이디로 로그인</h2>
        <form action="" class="login-form" method="post">
            <div class="form-group id-part">
                <div>
                    <input type="text" name="memberId" placeholder="아이디" required>
                </div>
            </div>

            <div class="form-group pwd-part">
                <div>
                    <input type="password" name="memberPassword" placeholder="비밀번호" required>
                </div>
            </div>

            <div class="form-group">
                <button type="submit" class="submit-btn">로그인</button>
            </div>

            <div class="form-group">
                <a href="" class="find-btn go-find-id">아이디 찾기</a>
                <a href="" class="find-btn go-find-pwd">비밀번호 찾기</a>
            </div>
        </form>

        <a class="go-join-form" href="">
            회원가입
        </a>
    </div>
</div>
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>