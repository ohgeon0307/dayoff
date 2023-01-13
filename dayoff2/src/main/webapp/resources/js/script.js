window.onload = function () {
  var swiper = new Swiper(".mySwiper", {
    slidesPerView: 1,
    spaceBetween: 30,
    loop: true,
    centeredSlides: true,
    autoplay: {
      delay: 2500,
      disableOnInteraction: false,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });
  var ad_slider = new Swiper(".ad_slider", {
    spaceBetween: 30,
    loop: true,
    centeredSlides: true,
    autoplay: {
      delay: 2500,
      disableOnInteraction: false,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
  });
  var press = new Swiper("#press .inner", {
    wrapperClass: "slider",
    slideClass: "item",
    slidesPerView: 5,
    spaceBetween: 30,
    pagination: {
      el: ".pager",
      clickable: true,
      bulletActiveClass: "active", //활성된 영역에 추가되는 클래스
    },
  });
};
