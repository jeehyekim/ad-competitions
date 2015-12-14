$(document).ready(function() {

  $('#saveToUser').on('click', function(e) {
    console.log("Saved to User");
    e.preventDefault();

    var data = {competition_id: $('.competition').attr('id'),
                user_id: $('.current_user')}

  });


});