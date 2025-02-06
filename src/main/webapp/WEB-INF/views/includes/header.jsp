<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<meta content="yes" name="mobile-web-app-capable" />
<meta content="minimum-scale=1.0, width=device-width, maximum-scale=1, user-scalable=no" name="viewport" />
<title>렌트어때</title>


<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" type="image/x-icon">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

</head>
<body>
    <header id="header">
        <div class="h__inner">
            <h1 class="h__logo">
                <a href="${pageContext.request.contextPath}/">
                    <img src="${pageContext.request.contextPath}/resources/images/logo_blue.png" alt="렌트어때 로고">
                </a>
            </h1>
            <div class="nav__box">
                <nav>
                    <ul class="nav__menu">
                        <li class="nav__menu__btn"><a href="#">렌트카 예약</a></li>
                        <li class="nav__menu__btn"><a href="#">이벤트</a></li>
                        <li class="nav__menu__btn"><a href="#">공지사항</a></li>
                        <li class="nav__menu__btn"><a href="#">고객센터</a></li>
                    </ul>
                </nav>
                <div class="login">
                    <a href="/loginPage">
                        <span>로그인/회원가입</span>
                    </a>
                </div>
            </div>

            <div class="burger__box">
                <input class="burger__check" type="checkbox" id="burger__check" />
                <label class="burger__icon" for="burger__check">
                    <span class="burger__sticks"></span>
                </label>
            </div>
        </div>
    </header>