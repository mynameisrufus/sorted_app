$(document).ready(function($) {
  ajaxTheTable();
});

var ajaxTheTable = function() {
  $('a').click(function(event){
    event.preventDefault();
    $.ajax({
      type: 'GET',
      dataType: 'html',
      url: this,
      success: function(data) {
        $('body').html(data);
        ajaxTheTable();
      }
    });    
  });
}
