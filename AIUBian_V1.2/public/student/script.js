
function showNotifi(){ 
 var username = $("#username").html();
 $("#demo").html(username);
 //document.getElementById('demo').innerHTML = username;
 
  $.ajax({
        type: 'POST',
        data: {uname: username},
        url: '/studentHome/notifiClear',
        success: function(status) {
          if(status){
            console.log("Notification Cleared!");
            $("#notifiNum").html("");
          }
          
        },
        error: function(error){
          alert(error.status);
        }
  });









}

