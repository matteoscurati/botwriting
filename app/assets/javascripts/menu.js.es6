$('.menu__logo').click((e) => {
  e.preventDefault();
  $('.menu__content').toggleClass('is-open', 1000);
});
