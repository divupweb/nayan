$(document).ready(function() {
	$("#form").submit(function() {
		$.ajax({
			type: "POST",
			url: "wp-content/themes/nayan/modules/mail.php",
			data: $(this).serialize()
		}).done(function() {
			$(this).find("input").val("");
			 window.location.href = "#close"
			 window.location.href = "#success"
			$("#form").trigger("reset");
		});
		return false;
	});
    $("#form_2").submit(function() {
		$.ajax({
			type: "POST",
			url: "wp-content/themes/nayan/modules/mail_2.php",
			data: $(this).serialize()
		}).done(function() {
			$(this).find("input").val("");
			 window.location.href = "#close"
			 window.location.href = "#success"
			$("#form_2").trigger("reset");
		});
		return false;
	});
    $("#form_3").submit(function() {
		$.ajax({
			type: "POST",
			url: "wp-content/themes/nayan/modules/mail_3.php",
			data: $(this).serialize()
		}).done(function() {
			$(this).find("input").val("");
			 window.location.href = "#close"
			 window.location.href = "#success"
			$("#form_3").trigger("reset");
		});
		return false;
	});
});