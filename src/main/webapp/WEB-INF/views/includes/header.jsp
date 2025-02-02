<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="minimum-scale=1.0, width=device-width, maximum-scale=1, user-scalable=no" name="viewport" />
<title>렌트어때</title>


<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" type="image/x-icon">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">

<script defer src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

</head>
<body>
    <header id="header">
        <div class="h_inner">
            <h1 class="h_logo">
                <a href="${pageContext.request.contextPath}/">
                    <img src="${pageContext.request.contextPath}/resources/images/logo_blue.png" alt="렌트어때 로고">
                </a>
            </h1>
            <nav class="pc">
                <ul class="nav-menu">
                    <li class="nav-menu-btn"><a href="#">렌트카 예약</a></li>
                    <li class="nav-menu-btn"><a href="#">이벤트</a></li>
                    <li class="nav-menu-btn"><a href="#">공지사항</a></li>
                    <li class="nav-menu-btn">
                        <a href="#">고객센터</a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">자주 묻는 질문</a>
                            </li>
                            <li>
                                <a href="#">예약 상담 및 문의</a>
                            </li>
                            <li>
                                <a href="#">차량 반납 안내</a>
                            </li>
                            <li>
                                <a href="#">이용 후기</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="login pc">
                <a href="/loginPage">
                    <span>로그인/회원가입</span>
                </a>
            </div>

            <div class="nav_m">
                <div class="burger_box">
                    <input class="burger-check" type="checkbox" id="burger-check" />
                    <label class="burger-icon" for="burger-check">
                        <span class="burger-sticks"></span>
                    </label>

                    <div class="menu">
                        <nav>
                            <ul class="nav-menu-mo">
                                <li class="nav-menu-btn-mo"><a href="#">렌트카 예약</a></li>
                                <li class="nav-menu-btn-mo"><a href="#">이벤트</a></li>
                                <li class="nav-menu-btn-mo"><a href="#">공지사항</a></li>
                                <li class="nav-menu-btn-mo ">
                                    <div id="Accordion_wrap">
                                        <div class="accordion_box">
                                            <div class="accordion-btn">
                                                <span class="font-bo">고객센터</span>
                                            </div>
                                            <div class="accordion-menu">
                                                <a href="">자주 묻는 질문</a>
                                                <a href="">예약 상담 및 문의</a>
                                                <a href="">차량 반납 안내</a>
                                                <a href="">이용 후기</a>
                                            </div>

                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </nav>
                        <div class="login">
                            <a href="">
                                <span>로그인/회원가입</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>