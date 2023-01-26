@extends('master')
@section('content')
<section class="pay-form">
    <div class="container">
        <div class="pay-form_title">
            Оформление заказа
        </div>
        <form class="pay-form__items" action="/user/reg" method="post">
            @csrf

            <div class="pay-form__input">
                <label>Введите ФИО</label>
                <input  type="text" placeholder="ФИО">
            </div>
            <div class="pay-form__input">
                <label>Введите Email</label>
                <input  type="email" placeholder="Email">
            </div>
            <div class="card__items">
            <div class="pay-form__input">
                <label>Введите номер карты</label>
                <input  type="text" placeholder="2222-2222-2222-2222">
            </div>
            <div class="pay-form__input">
                <label>Введите CVC карты</label>
                <input  type="password" placeholder="232">
            </div>
            </div>
            <div class="pay-form__input">
                <div class="pay__item-btn">
                    <button>
                <a class="pay-btn" href="/">Оформить заказ</a>
                    </button>
                </div>
            </div>
        </form>
    </div>
</section>
@endsection
