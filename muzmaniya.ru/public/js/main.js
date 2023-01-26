let tab = document.querySelector(".tab-form");
let tabHeader = tab.querySelector(".tab-header");
let tabHeaderElements = tab.querySelectorAll(".tab-header > div");
let tabBody = tab.querySelector(".tab-body");
let tabBodyElements = tab.querySelectorAll(".tab-body > div");

for(let i=0;i<tabHeaderElements.length;i++){
    tabHeaderElements[i].addEventListener("click",function(){
        tabHeader.querySelector(".active").classList.remove("active");
        tabHeaderElements[i].classList.add("active");
        tabBody.querySelector(".active").classList.remove("active");
        tabBodyElements[i].classList.add("active");
    });
}

// const header = document.querySelector('.popup');
// const Topheader = document.querySelector('.popup');
// const headerHeight = Topheader.offsetHeight;
// window.addEventListener('scroll', () => {
//     let scrollDistance = window.scrollY;
//     if(scrollDistance >= headerHeight){
//         header.style.position = 'fixed';
//         header.style.top = 0 + 'px';
//     }else{
//         header.style.position = 'absolute';
//     }
// });

$(function(){
    $('.header-slider').slick({
        arrows:true,
        dotsClass:'header-dots',
        autoplay: 100
    });
});

document.querySelector("#show-login").addEventListener("click",function(){
    document.querySelector(".popup").classList.add("active");
});
document.querySelector(".popup .close-btn").addEventListener("click",function(){
    document.querySelector(".popup").classList.remove("active");
});

$(function(){
    $("#phone").mask("+7(999) 999-99-99");
});

$(function(){
    $("#phone_login").mask("+7(999) 999-99-99");
});



