


	$(document).ready(function() {
			
			
			
			// Sets the default selected option
			option = 'option-' + {$vars.optionid};
			press_option(option);

			// Sets the default selected cascade
			cascade = 'cascade-' + {$cascade};
			press_cascade(cascade);
			
			// Enables the JS inputs and disables the noscript inputs.
			$("#signup-option").removeAttr("disabled");
			$("#signup-cascade").removeAttr("disabled");
			$(".noscript").attr("disabled", "disabled");
			
			
	});


<!-- pay by cc as set default -->

window.onload = function() {
$('#cascade-17').bind('mousedown', function(e) {
if ($(this).hasClass('pressed-button')) {
$(this).prop('onclick',null);
$(this).removeClass('pressed-button').addClass('button');
press_cascade('cascade-1');
} else {
press_cascade('cascade-17');
}
})
};

