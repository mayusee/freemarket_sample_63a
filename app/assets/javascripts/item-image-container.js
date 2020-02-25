function buildImage(loadedImageUri){
  var html =
  `<li class="item-image-container__unit--preview">
    <div class="item-image-container__unit--caption">
      <img src="${loadedImageUri}">
    </div>
    <div class="image-option">
      <div  class="image-option__list">
        <a class=".image-option__list--tag" href="#">編集</a>
      </div>
      <div class="image-option__list">
        <a class=".image-option__list--tag" href="#">削除</a>
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
      
      $(buildImage(loadedImageUri,)).appendTo(".item-image-container__unit ul").trigger("create");
      };

      fileReader.readAsDataURL(files[i]);

      var target1 = document.getElementsByClassName('item-image-container__unit--preview');
      console.log(target1);
      // target1.dataset.num = i;
    }
  }
  
  var elm = document.getElementById('d-d-delete');
  elm.style.display = 'none';

  var cl = document.getElementById('click-delete');
  cl.style.display = 'none';

  console.log(count)
});


