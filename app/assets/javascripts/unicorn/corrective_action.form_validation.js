$(document).ready(function(){
	
		// Form Validation
		$("#form_validator").validate({
				rules:{
						required:{
								required:true
						},
						email:{
								required:true,
								email: true
						},
						date:{
								required:true,
								date: true
						},
						url:{
								required:true,
								url: true
						},
						phone:{
								required:true,
								number:true
						}
				},
				errorClass: "help-inline",
				errorElement: "span",
				highlight:function(element, errorClass, validClass) {
						$(element).parents('.control-group').addClass('error');
				},
				unhighlight: function(element, errorClass, validClass) {
						$(element).parents('.control-group').removeClass('error');
						$(element).parents('.control-group').addClass('success');
				}
		});
		

});
