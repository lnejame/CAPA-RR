// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
		
		// Added number rule to the phone number field
		if ($("#user_main_phone").length > 0) {
				$("#user_main_phone").rules("add", {
						number: true
				});
		}
		
		if ($("#user_zipcode").length > 0) {
				$("#user_zipcode").rules("add", {
						number: true
				});
		}
		
});