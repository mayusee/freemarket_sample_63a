
window.onload = function () {
  $("item_description").onKeyUp = function(){
    countLength(value, 'textlength');
  };
}
function countLength(text, field) {
  document.getElementById(field).innerHTML = text.length + "/1000";
}
