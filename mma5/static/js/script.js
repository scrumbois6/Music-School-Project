$(document).ready(function() {

	$('#gInfo').hide();
	$('#id_under_18').prop('checked', false);
	$('.collapse').hide();
	$('.hidelesson').hide();


 $('#id_under_18').click(function () {
        //check if checkbox is checked
        if ($('#id_under_18').is(':checked')) {
        	$('#gInfo').show();


        } else {
            $('#gInfo').hide();

        }
    });

 $('.expand').click(function () {

     $(this).hide();
     $(this).closest('.lesson-module').children('.collapse').show();

     $(this).closest('.lesson-module').children('.hidelesson').show();



 }) ;

 $('.collapse').click(function () {

     $(this).hide();
     $(this).closest('.lesson-module').children('.expand').show();

     $(this).closest('.lesson-module').children('.hidelesson').hide();




 }) ;




});	//end of $document ready opening function




