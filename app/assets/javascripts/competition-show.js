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
      data: data,
    }).done(function(response) {
      console.log(response);
      console.log("ajax fired");
      window.location.href = '/competitions/' + data.competition_id;
    });
  });

  $('#saveToUser').on('click', function(e) {
    console.log('deadline saved to user');
    e.preventDefault();

    var data = {user_id: $('.current_user').attr('id'),
                competition_id: $('.competition').attr('id')};
    console.log(data.user_id);
    console.log(data.competition_id);

    $.ajax({
      type: 'POST',
      url: '/deadlines',
      datatype: 'JSON',
      data: data
    }).done(function(response) {
      console.log(response);
      console.log('ajax fired for deadline add');
      window.location.href = '/competitions/' + data.competition_id;
    });

  });

});