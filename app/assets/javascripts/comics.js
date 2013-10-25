var addEvent = function(){

  console.log("DOCUMENT IS READY")
  $("#favorite").click(function(){

      console.log("I WAS CLICKED")
      var images = document.images;
      var imageLinks = [];

      for (var i=0; i<images.length; i++){
        imageLinks.push(images[i].src);
      }

      console.log(imageLinks);

      $.post("/comics", {comics: imageLinks}).done(
        function(data){
          console.log("I'M SOO DONE!")
          console.log(data);
        })
  });
}