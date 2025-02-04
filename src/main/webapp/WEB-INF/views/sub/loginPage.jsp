<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<div id="login__page">
    <div class="login__box">
        <h2 class="login__title">렌트어때 아이디로 로그인</h2>
        <form action="" class="login__form">
            <div class="form-group id__part">
                <div>
                    <input type="text" name="" id="" placeholder="아이디" required>
                </div>
            </div>

            <div class="form-group pwd__part">
                <div>
                    <input type="password" name="" id="" placeholder="비밀번호" required>
                </div>
            </div>

            <div class="form__group">
                <button type="submit" class="submit__btn">로그인</button>
            </div>

            <div class="form__group">
                <a href="" class="find__btn go__find__id">아이디 찾기</a>
                <a href="" class="find__btn go__find__pwd">비밀번호 찾기</a>
            </div>
        </form>

        <a class="go__join__form" href="memberJoin">
            회원가입
        </a>
    </div>
</div>
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>