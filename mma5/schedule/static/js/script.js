$(document).ready(function() {

	$('#gInfo').hide();
	$('#id_under_18').prop('checked', false);
 

 $('#id_under_18').click(function () {
        //check if checkbox is checked
        if ($('#id_under_18').is(':checked')) {
        	$('#gInfo').show();


        } else {
            $('#gInfo').hide();

        }
    });


});	//end of $document ready opening function

	 

		
	 