// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .
//= require websocket_rails/main

$(function(){
  var dispatcher = new WebSocketRails('0.0.0.0:3000/websocket');
  dispatcher.on_open = function(data) {
  console.log('Connection has been established: ', data);
  // You can trigger new server events inside this callback if you wish.
  }

  dispatcher.bind('add_user_submission', function(data) {
  	$("#user-submissions").append('<tr><td>' + data.message + '</td><td><small class="pull-right">' + data.stime + '</small></td><td><a href="#"><i class="icon-ok pull-right"></i></a></td></tr>');
	});

  dispatcher.bind('add_host_submission', function(data) {
  	$("#host-table").append('<tr><td>' + data.message + '</td><td><small class="pull-right">'+data.stime+'</small></td></tr>');
	});

  $("#send").click(function() {
	var data = $("#message").val();
	dispatcher.trigger('new_comment', data);
	$("#message").val('');
	});
  //DOESN'T CHECK THAT SUBMISSION WAS FROM ACTUAL HOST YET!!
  $("#sendhost").click(function() {
	var data = $("#message").val();
	dispatcher.trigger('new_comment_host', data);
	$("#message").val('');
	});
});

