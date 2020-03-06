function like(postId, i){

  var usernameTemp = "#username"+i; 
  var username = $(usernameTemp).html();
  var likeData = "#likeCount"+i;
  var temp = $(likeData).html();
  var totalLike = parseInt(temp) + 1;
  //document.getElementById('demo').innerHTML = totalLike;
  $.ajax({
        type: 'POST',
        data: {postId: postId, like: totalLike, username: username},
        url: '/facultyHome/likeExe',
        success: function(status) {
          if(status){
            console.log("like inserted");
            $(likeData).html(totalLike);
          }
          
        },
        error: function(error){
          alert(error.status);
        }
  });


}


