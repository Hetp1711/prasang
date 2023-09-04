$('input[type=file]').on('change', function() {
	$("#filename").text($(this).val());
});

$('input[type=file]').on('dragenter', function() {
	$('div').addClass('dragover');
});

$('input[type=file]').on('dragleave', function() {
	$('div').removeClass('dragover');
});