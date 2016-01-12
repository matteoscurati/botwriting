#= require jquery
#= require jquery_ujs
#= require Countable
#= require countable-item
#= require medium-editor
#= require medium-editable
#= require turbolinks
#= require_tree .

$(document).ready(() => {
  $(".edit_post").submit((event) => {
    event.preventDefault();

    let url = $(this).attr('action');
    let method = $(this).attr('method');
    let content = $("#post_" + $(this).attr("data-field-id")).val($(this).html());

    $.ajax({
      type: 'put',
      url: url,
      method: method,
      data: { content: content },
      dataType: 'json',
      processData: false
    });
  });
});
