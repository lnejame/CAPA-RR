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
		
		
		// TODO: Move this code into required js file. Previously tried placing in appropriate js file but it is throwing some errors..		
		// Added number rule to CustomerSubsystem fields
		if($("#customer_subsystem_main_phone").length > 0) {
				$("#customer_subsystem_main_phone").rules("add", {
						number: true
				});
		}
		
		if($("#customer_subsystem_zipcode").length > 0) {
				$("#customer_subsystem_zipcode").rules("add", {
						number: true
				});
		}
		
		// Added number rule to SupplierSubsystem fields
		if ($("#supplier_subsystem_main_phone").length > 0) {
				$("#supplier_subsystem_main_phone").rules("add", {
						number: true
				});
		}
		
		if ($("#supplier_subsystem_zipcode").length > 0) {
				$("#supplier_subsystem_zipcode").rules("add", {
						number: true
				});
		}
});
