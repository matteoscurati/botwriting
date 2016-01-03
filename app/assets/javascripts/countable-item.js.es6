$(document).ready(() => {
  const area = document.getElementById('area')
  Countable.live(area, function (counter) {
    console.log(counter)
  },{
  stripTags: true
  });
});
