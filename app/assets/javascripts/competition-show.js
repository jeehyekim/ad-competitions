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
      url: '/commitments' && '/deadlines',
      datatype: 'JSON', 
      data: data,
    }).done(function(response) {
      // console.log(response);
      // console.log("ajax fired");
      window.location.href = '/competitions/' + data.competition_id;
    });
  });

  // $('#saveToUser').on('click', function(e) {
  //   e.preventDefault();

  //   var data = {competition_id: $('.competition').attr('id'),
  //               user_id: $('.current_user').attr('id')};
  //   // console.log(data.user_id);
  //   // console.log(data.competition_id);

  //   $.ajax({
  //     type: 'POST',
  //     url: '/deadlines',
  //     datatype: 'JSON',
  //     data: data
  //   });
  // });




});