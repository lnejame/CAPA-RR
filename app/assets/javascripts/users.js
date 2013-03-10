// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
		
		// Added number rule to the phone number field
		$("#user_main_phone").rules("add", {
				number: true
		});
		$("#user_zipcode").rules("add", {
				number: true
		});
		
});