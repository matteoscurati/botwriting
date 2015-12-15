$(document).ready(() => {
  setTimeout(() => {
    $('.flash').fadeOut(500);
  }, 8000);
  $('.flash').click((e) => {
    e.preventDefault();
    $('.flash').fadeOut(500);
  });
});
