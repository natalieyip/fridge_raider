// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

	$("#recipe-form").on("submit", function(e) {
		e.preventDefault();

		var form = this;
		var food = $(form).children()[0].value;

		var apiID = ENV["EDAMAM_API_ID"] ;
		var apiKey = ENV["EDAMAM_API_KEY"];
		var unencodedURL = `https://api.edamam.com/search?q=${food}&app_id=${apiID}&app_key=${apiKey}`;
		var url = encodeURI(unencodedURL);
		
		$.ajax({
			url: url
		})
		.done(function(response) {
			console.log(JSON.stringify(response));

			for (var i = 0; i <= 10; i ++){
				var link = response['hits'][i]['recipe']['url']
				if(link.endsWith("/")){ 
					link = link.slice(0, -1)
				}
				$('body').append(`<ol> <a href=${link}>` + response['hits'][i]['recipe']['label']+ `</a></ol>`) 
				
			}
		})
		.fail(function(response) {
			console.log("fail");
		});
	});
