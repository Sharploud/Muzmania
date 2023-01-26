<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Muzmaniya</title>
    <link rel="icon" type="image/x-icon" href="/images/favicon-32x32.png">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,400;1,600;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/slick.css">
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.css"
    />
    <link rel="stylesheet" href="/css/product.css">
{{--    <link rel="stylesheet" href="/css/product-filter.css">--}}
    <link rel="stylesheet" href="/css/popup.css">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

<header class="header">

    <div class="container">
        <div class="header__top">
            <div class="logo">
                <a href="/">
                    <img src="/images/logo.svg" alt="">
                </a>
            </div>
            <nav class="menu">
                <ul class="menu__list">
                    <li><a href="/">главная</a></li>
                    <li><a href="../products">товары</a></li>
                    <li><a href="/">акции</a></li>
                    <li><a href="/contact">контакты</a></li>
                </ul>
            </nav>

            <div  class="header-btn">
                @if(session('id') == null)
                <button id="show-login">
                <a  class="sing-up" >
                    <img width="50%" src="/images/user.png" alt="">
                    <div class="sing-up__text" >
                        Войти
                    </div>
                </a>
                </button>
                    <a class="basket" href="../cart">
                        <img width="50%" src="/images/basket.png" alt="">
                        <div class="basket__text" >
                            Корзина
                        </div>
                    </a>
                @endif
                @if(session('id') !== null)
                        <button >
                            <a href="/user" class="sing-up" >
                                <img width="50%" src="/images/user.png" alt="">
                                <div class="sing-up__text" >
                                    Аккаунт
                                </div>
                            </a>
                        </button>
                        <a class="basket" href="../cart">
                            <img width="50%" src="/images/basket.png" alt="">
                            <div class="basket__text" >
                                Корзина
                            </div>
                        </a>
                    @endif
                <div class="popup">
                    <div class="tab-form">
                        <div class="tab-header">
                            <div class="active">Зарегистрироваться</div>
                            <div>Войти</div>
                        </div>
                        <div class="close-btn">&times;</div>
                        <div class="tab-body">
                            <div class="signup active">
                                <form action="/user/reg" method="post">
                                    @csrf
                                <h2>Регистрация</h2>
                                <div class="form-input">
                                    <label>Телефон</label>
                                    <input name="phone_reg" id="phone" type="text" placeholder="Введите номер телефона">
                                </div>
                                <div class="form-input">
                                    <label>Пароль</label>
                                    <input name="password_reg" type="password" placeholder="Придумайте пароль">
                                </div>
                                <div class="form-input">
                                    <button>Создать аккаунт</button>
                                </div>
                                </form>
                            </div>
                            <div class="login">
                               <form action="/user/auth" method="post">
                                   @csrf
                                <h2>Вход</h2>
                                <div class="form-input">
                                    <label>Телефон</label>
                                    <input name="phone" id="phone_login" type="tel" placeholder="Введите номер телефона">
                                </div>
                                <div class="form-input">
                                    <label>Пароль</label>
                                    <input name="password" type="password" placeholder="Введите пароль">
                                </div>
                                <div class="form-input">
                                    <button>Войти</button>
                                </div>
                               </form>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

</header>

<div>
    @yield('content')
</div>
<div class="wrapper">
<footer class="footer">
    <div class="container">
        <div class="footer_down">
            <div class="footer__content">
                <div class="footer-logo">
                    <a href="index.html">
                        <img src="/images/logo-footer.svg" alt="">
                    </a>

                </div>
                <div class="footer__info">
                    <div class="footer__info-name">
                        Интернет-магазин <p> «Музмания» </p>
                    </div>
                    <div class="footer__info-phone">
                        +7 (902) 222-22-22
                    </div>
                </div>
            </div>

            <nav class="footer-menu">
                <ul class="footer-menu__list">
                    <li><a href="#">Как сделать заказ?</a></li>
                    <li><a href="#">Информация о доставке</a></li>
                    <li><a href="#">Акции и скидки</a></li>
                </ul>
            </nav>
            <div class="footer__social">
                <div class="footer__social-title">
                    Мы в соц. сетях:
                </div>
                <div class="footer__social-image">
                    <a href="#"><img width="26px" height="26px" src="/images/social-1.svg" alt="twitter"></a>
                    <a href="#"><img  src="/images/social-2.svg" alt="instagram"></a>
                    <a href="#"><img width="26px" height="26px" src="/images/social-3.svg" alt="facebook"></a>
                </div>
            </div>
        </div>
    </div>
</footer>
</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="/js/slick.min.js"></script>
<script src="/js/anime.min.js"></script>
<script src="/js/main.js"></script>
<script src="/js/jquery.maskedinput.min.js"></script>
</html>
