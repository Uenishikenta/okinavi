const swiper = new Swiper('.swiper-container', {
    // Optional parameters
    effect: 'fade',
    speed: 2000,//2sかけてスクロール
    loop: true,

    autoplay: {
        delay: 2000
    },
    //自動でスクロール2s遅らせる
  
    // If we need pagination
    pagination: {
      el: '.swiper-pagination',
    },
  
    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
});
