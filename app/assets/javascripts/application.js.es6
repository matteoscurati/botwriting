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

    const target = $(event.target);
    let url = target.attr('action');
    let content = $("#post_content").val();
    console.log("content: " + content);

    $.ajax({
      url,
      method: "put",
      data: { post: { content: content }},
      dataType: 'json'
    });
  });
});
