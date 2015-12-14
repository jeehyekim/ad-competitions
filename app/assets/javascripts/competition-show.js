$(document).ready(function() {

  $('#saveToUser').on('click', function(e) {
    console.log("Saved to User");
    e.preventDefault();

    var data = {competition_id: $('.competition').attr('id'),
                user_id: $('.current_user').attr('id')};
    console.log(data.competition_id);
    console.log(data.user_id);

    $.ajax({
      type: 'POST',
      url: '/commitments',
      datatype: 'JSON', 
      data: {competition_id: $('.competition').attr('id'),
                user_id: $('.current_user').attr('id')}
    }).done(function(response) {
      console.log(response);
      console.log("ajax fired");
      window.location.href = '/competitions/' + data.competition_id;
    });
  });
});