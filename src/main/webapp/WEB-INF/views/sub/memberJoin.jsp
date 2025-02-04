<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<div class="joinform__box">
    <h1 class="joinform__title">렌트어때 회원가입</h1>
    <form action="" class="joinform">
        <div class="form__group id__part">
            <div class="label__tag">
                아이디 <span class="identify"></span>
            </div>
            <div class="sort">
                <input type="text" name="" id="id" placeholder="아이디를 입력해주세요" required>
                <button type="button" id="checkIdBtn">중복 확인</button>
            </div>
        </div>

        <div class="form__group pwd__part">
            <div class="label__tag">
                비밀번호 <span class="identify"></span>
            </div>
            <div>
                <input type="password" name="" id="password" placeholder="(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)" required>
            </div>
        </div>

        <div class="form__group pwd__confirm__part">
            <div class="label__tag">
                비밀번호 확인 <span class="identify"></span>
            </div>
            <div>
                <input type="password" name="" id="passwordConfirm" placeholder="비밀번호와 같이 입력해주세요" required>
            </div>
        </div>

        <div class="form__group name__part">
            <div class="label__tag">
                이름 <span class="identify"></span>
            </div>
            <div>
                <input type="text" name="" id="name" placeholder="이름을 입력해주세요" required>
            </div>
        </div>

        <div class="form__group idnum__part">
            <div class="label__tag">
                생년월일 <span class="identify"></span>
            </div>
            <div>
                <input type="text" name="" id="birthdate" placeholder="-없이 입력하세요 (예시 YYYYMMDD)" required>
            </div>
        </div>

        <div class="form__group tel__part">
            <div class="label__tag">
                휴대전화 <span class="identify"></span>
            </div>
            <div>
                <input type="text" name="" id="tel" placeholder="-없이 입력하세요 (예시 01012345678)" required>
            </div>
        </div>

        <div class="form__group email__part">
            <div class="label__tag">
                이메일 <span class="identify"></span>
            </div>

            <div class="email__box">
                <input type="text" name="" id="email" placeholder="이메일을 입력해주세요" required>
                <div class="at">
                    @
                </div>
                <input type="text" name="" id="domain__input" placeholder="직접입력">
                <select name="" id="domain__select" onchange="updateDomain()">
                    <option value="">직접입력</option>
                    <option value="naver.com">naver.com</option>
                    <option value="daum.net">daum.net</option>
                    <option value="google.com">google.com</option>
                </select>
            </div>
        </div>

        <hr class="submit__line">

        <div class="form__group">
            <button type="submit" class="submit__btn">회원가입</button>
        </div>
    </form>
</div>

<script>
    document.querySelector('.joinform').addEventListener('submit', function(event) {
        event.preventDefault(); // 폼 제출 방지
        clearErrors(); // 에러 메시지 초기화

        let isValid = true;

        // 아이디 검사
        const idInput = document.getElementById('id');
        if (!idInput.value.trim() || idInput.value.length < 4) {
            showError(idInput, '아이디는 최소 4자 이상이어야 합니다.');
            isValid = false;
        }

        // 비밀번호 검사
        const passwordInput = document.getElementById('password');
        const passwordRegex = /^(?=.*[a-zA-Z])(?=.*\d|[!@#$%^&*]).{10,16}$/;
        if (!passwordRegex.test(passwordInput.value)) {
            showError(passwordInput, '대소문자/숫자/특수문자 조합과 10자~16자여야 합니다.');
            isValid = false;
        }

        // 비밀번호 확인 검사
        const passwordConfirmInput = document.getElementById('passwordConfirm');
        if (passwordInput.value !== passwordConfirmInput.value) {
            showError(passwordConfirmInput, '비밀번호가 일치하지 않습니다.');
            isValid = false;
        }

        // 이름 검사
        const nameInput = document.getElementById('name');
        if (!nameInput.value.trim() || nameInput.value.length < 2) {
            showError(nameInput, '이름은 최소 2자 이상이어야 합니다.');
            isValid = false;
        }

        // 생년월일 검사
        const birthdateInput = document.getElementById('birthdate');
        const birthdateRegex = /^\d{8}$/;
        if (!birthdateRegex.test(birthdateInput.value)) {
            showError(birthdateInput, '생년월일은 8자리 숫자로 입력해주세요.');
            isValid = false;
        }

        // 휴대전화 검사
        const telInput = document.getElementById('tel');
        const telRegex = /^\d{11}$/;
        if (!telRegex.test(telInput.value)) {
            showError(telInput, '휴대전화 번호는 11자리 숫자로 입력해주세요.');
            isValid = false;
        }

        // 이메일 검사
        const emailInput = document.getElementById('email');
        const domainInput = document.getElementById('domain__input');
        const domainSelect = document.getElementById('domain__select');
        const email = emailInput.value + '@' + (domainSelect.value || domainInput.value);
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            showError(emailInput, '유효한 이메일 주소를 입력해주세요.');
            isValid = false;
        }

        // 모든 검사를 통과하면 폼 제출
        if (isValid) {
            alert('회원가입이 완료되었습니다!');
            this.submit();
        }
    });

    // 비밀번호 입력 시 포커스 아웃될 때 유효성 검사
    document.getElementById('password').addEventListener('blur', function() {
        const passwordInput = this;
        const passwordRegex = /^(?=.*[a-zA-Z])(?=.*\d|[!@#$%^&*]).{10,16}$/;
        const identifySpan = passwordInput.closest('.form__group').querySelector('.identify');

        if (!passwordRegex.test(passwordInput.value)) {
            identifySpan.textContent = '대소문자/숫자/특수문자 조합과 10자~16자여야 합니다.';
            identifySpan.style.display = 'inline';
        } else {
            identifySpan.textContent = ''; // 유효할 경우 메시지 삭제
            identifySpan.style.display = 'none';
        }
    });

    // 비밀번호 확인 입력 시 포커스 아웃될 때 유효성 검사
    document.getElementById('passwordConfirm').addEventListener('blur', function() {
        const passwordConfirmInput = this;
        const passwordInput = document.getElementById('password');
        const identifySpan = passwordConfirmInput.closest('.form__group').querySelector('.identify');

        if (passwordInput.value !== passwordConfirmInput.value) {
            identifySpan.textContent = '비밀번호가 일치하지 않습니다.';
            identifySpan.style.display = 'inline';
        } else {
            identifySpan.textContent = ''; // 유효할 경우 메시지 삭제
            identifySpan.style.display = 'none';
        }
    });

    function showError(input, message) {
        const identifySpan = input.closest('.form__group').querySelector('.identify');
        identifySpan.textContent = message; // 에러 메시지 설정
        identifySpan.style.display = 'inline'; // 에러 메시지 표시
        input.focus();
    }

    function clearErrors() {
        const identifySpans = document.querySelectorAll('.identify');
        identifySpans.forEach(span => {
            span.textContent = ''; // 에러 메시지 초기화
            span.style.display = 'none'; // 에러 메시지 숨김
        });
    }

    function updateDomain() {
        const select = document.getElementById('domain__select');
        const domainInput = document.getElementById('domain__input');

        if (select.value !== "") {
            domainInput.value = select.value; // 선택된 도메인을 input에 설정
            domainInput.readOnly = true;
        } else {
            domainInput.value = ""; // "직접입력" 선택 시 빈 값으로 설정
            domainInput.readOnly = false;
        }
    }


    $(function() {
        // 중복 확인이 완료되었는지 추적하는 변수
        var idCheckDone = false;

        $("#checkIdBtn").click(function() {
            let idval = {"id" : document.frm.memberId.value};
            $.ajax({
                url : "loginsameCheck",
                type : "get",
                data : idval,
                contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                success : function(data) {
                    $("#idCheck").empty();
                    $("#idCheck").append(data.map.str);
                    // 중복 확인이 성공적으로 완료되었음을 표시
                    idCheckDone = true;
                },
                error : function() {
                    alert('error');
                }
            });
        });

        // 폼 제출 이벤트에 대한 핸들러
        $("form.joinform").submit(function(e) {
            // 중복 확인이 완료되지 않았다면 폼 제출을 방지
            if (!idCheckDone) {
                alert("아이디 중복 확인이 필요합니다.");
                e.preventDefault(); // 폼 제출 방지
                return false;
            }
            // 중복 확인이 완료되었다면, 폼 정상 제출
        });
    });
</script>
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>