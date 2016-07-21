// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


 $(document).ready(function(){

  var filter = $('.filter').find('input').val();

    $('.filter').find('input').keyup(function(e) {
      console.log("Value: " + $(this).val());
      filter = $(this).val();
      $.ajax({
        url: '/newspapers/filter',
        method: 'post',
        data: {
          search: filter,
        },
        success: function(data) {
          console.log(data.newspapers);
          $('tbody').empty();
          data.newspapers.forEach(function(newspaper) {

            $('tbody').append("<tr>\
              <td><a href='newspapers/" + newspaper.id + "'>" + newspaper.publication + "</a></td>\
              <td>" + newspaper.editor + "</td>\
              <td>" + newspaper.sales_manager + "</td>\
              </tr>")
          });       
        }
      });
  });


 });