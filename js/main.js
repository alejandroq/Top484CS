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

$('#wall').galereya({

	 // spacing between cells of the masonry grid
    spacing: 3,

    // waving visual effect
    wave: false,

    // speed of the slide show
    slideShowSpeed: 10000,

    // speed of appearance of cells
    cellFadeInSpeed: 100,

});