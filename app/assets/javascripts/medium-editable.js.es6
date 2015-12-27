$(document).ready(() => {
  let editor = new MediumEditor('.editable', {
  });
  $('.editable').bind('input propertychange', function() {
    $("#post_" + $(this).attr("data-field-id")).val($(this).html());
  });
});
