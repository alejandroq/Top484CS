$(".menu").menu();

$('#stackMenu').on('click', function() {
	if ($('nav').is(':visible')){
		$('#stackMenu').css('background-color', '#B94657'); //#cccccc
	} else {
		$('#stackMenu').css('background-color', '#ffffff'); //#ffffff
	}
	$('nav').toggle('blind',150);
});