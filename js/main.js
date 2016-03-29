$("#menu").menu();

$('#stackMenu').on('click', function() {
	if ($('nav').is(':visible')){
		$('#stackMenu').css('background-color', '#cccccc');
	} else {
		$('#stackMenu').css('background-color', '#ffffff');
	}
	$('nav').toggle('blind',150);
});