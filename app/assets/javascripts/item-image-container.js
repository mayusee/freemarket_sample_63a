function buildImage(loadedImageUri){
  var html =
  `<li class="item-image-container__unit--preview" id="visible">
    <div class="item-image-container__unit--caption">
      <img src="${loadedImageUri}">
    </div>
    <div class="image-option">
      <div  class="image-option__list">
        <div class="image-option__list--tag">編集</div>
      </div>
      <div class="image-option__list">
        <a class="image-option__list--tag">削除</a>
      </div>
    </div>
  </li>`
  return html
};

var files_array = [];

$('.item-image-container__unit--guide').on('dragover',function(e){
    e.preventDefault();
});

$('.item-image-container__unit--guide').on('drop',function(event){
  event.preventDefault();
    
  files = event.originalEvent.dataTransfer.files;
    
  var count = files.length;

  if(count<=5){
    for (var i=0; i<count; i++) {
      files_array.push(files[i]);
      var fileReader = new FileReader();
      
      fileReader.onload = function( event ) {
      
      var loadedImageUri = event.target.result;
      
      $(buildImage(loadedImageUri,)).appendTo(".item-image-container__unit ul").trigger("build");
      };

      fileReader.readAsDataURL(files[i]);

    }
  }
  
  var elm = document.getElementById('d-d-delete');
  elm.style.display = 'none';

  var cl = document.getElementById('click-delete');
  cl.style.display = 'none';
  
});

//次の画像機能の実装で使用する予定のためコメントアウトしています。
$(document).on('click','.item-image-container__unit--preview a',function(){

  var index = $(".item-image-container__unit--preview a").index(this);

  files_array.splice(index - 1, 1);

  $(this).parent().parent().parent().remove();
});
$(document).on('click','.item-image-container__unit--preview-second a',function(){

  var index = $(".item-image-container__unit--preview-second a").index(this);

  files_array.splice(index - 1, 1);

  $(this).parent().parent().parent().remove();
});
$(document).on('click','.item-image-container__unit--preview-third a',function(){

  var index = $(".item-image-container__unit--preview-third a").index(this);

  files_array.splice(index - 1, 1);

  $(this).parent().parent().parent().remove();
});
$(document).on('click','.item-image-container__unit--preview-fourth a',function(){

  var index = $(".item-image-container__unit--preview-fourth a").index(this);

  files_array.splice(index - 1, 1);

  $(this).parent().parent().parent().remove();
});

// var aj_url = window.location.pathname;
// var aj_url = '/users/1/items';

// $('#new_item').on('submit', function(e){
//   e.preventDefault();
  
//   var formData = new FormData($(this).get(0));
  
//   files_array.forEach(function(file){
//    formData.append("image[images][]" , file)
//   });
  
//   $.ajax({
//     url:         aj_url,
//     type:        "POST",
//     data:        formData,
//     contentType: false,
//     processData: false,
//     dataType:   'json',
//   })
//   .done(function(){
//     alert('出品に成功しました！');
//   })
//   .fail(function(){
//     alert('出品に失敗しました！');
//   });
// });