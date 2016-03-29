$(".menu").menu();

$('#stackMenu').on('click', function() {
	if ($('nav').is(':visible')){
		$('#stackMenu').css('background-color', '#cccccc'); //#cccccc #B94657
	} else {
		$('#stackMenu').css('background-color', '#ffffff'); //#ffffff
	}
	$('nav').toggle('blind',150);
});

$('#notificationMenu').on('click', function() {
	if ($('#ui-data-menu').is(':visible')){
		$('#notificationMenu').css('background-color', '#cccccc'); //#cccccc #B94657
	} else {
		$('#notificationMenu').css('background-color', '#ffffff'); //#ffffff
	}
	$('#ui-data-menu').toggle('blind',200);
});