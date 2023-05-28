$(document).on('turbolinks:load', function(){
  $('#js-copybtn').on('click', function(){
    $('#js-copytext').select();document.execCommand('copy');
    $('#js-copyalert').show().delay(2000).fadeOut(400);});
});
