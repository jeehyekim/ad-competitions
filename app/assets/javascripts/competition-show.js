$(document).ready(function() {

  // Add Competition to
  $('#saveToUser').on('click', function(e) {
    e.preventDefault();

    var data = {competition_id: $('.competition').attr('id'),
                user_id: $('.current_user').attr('id')};
    // console.log(data.competition_id);
    // console.log(data.user_id);

    $.ajax({
      type: 'POST',
      url: '/commitments',
      datatype: 'JSON', 
      data: data,
    }).done(function(response) {
      // console.log(response);
      // console.log("ajax fired");
      window.location.href = '/competitions/' + data.competition_id;
    });

    // var deadline_data = {competition_id: $('.competition').attr('id'),
    //                      user_id: $('.current_user').attr('id'),
    //                      early_bird: $('#user-early-reg').attr('data-early-reg'),
    //                      deadline: $('#user-deadline').attr('data-deadline'),
    //                      notification: $('#user-notification').attr('data-notification')};
    // console.log(deadline_data);
    // $.ajax({
    //   type: 'POST',
    //   url: '/deadlines',
    //   datatype: 'JSON', 
    //   data: deadline_data,
    // });

  });




});