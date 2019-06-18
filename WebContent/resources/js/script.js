$(function() {
	$('#list').click(function(event) {
		event.preventDefault();
		$('#content .item').addClass('list-group-item');
	});

	$('#grid').click(function(event) {
		event.preventDefault();
		$('#content .item').removeClass('list-group-item');
		$('#content .item').addClass('grid-group-item');
	});
});