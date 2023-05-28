$(document).on('turbolinks:load', function(){
  $('#js-copybtn').on('click', function(){
    const text = $('#js-copyid').text();
    const $textarea = $('<textarea></textarea>');
    $textarea.text(text);
    $(this).append($textarea);
    $textarea.select();
    document.execCommand('copy');
    $textarea.remove();
    $('#js-copyalert').show().delay(2000).fadeOut(400);});
});
