// Trigger the modal with a button
$(function() {

	$("#develop-info-dismiss").on('click', function() {
		setCookie('closed', '1', 1);
	});

	$("#develop-info-close").on('click', function() {
		setCookie('closed', '1', 1);
	});

	var cookie = getCookie('closed');
	if (cookie === "" || cookie === null || cookie === undefined) {
		$("#develop-info").modal('show');
	}

	function getCookie(cname) {
		var name = cname + "=";
		var ca = document.cookie.split(';');
		for (var i = 0; i < ca.length; i++) {
			var c = ca[i];
			while (c.charAt(0) == ' ') {
				c = c.substring(1);
			}
			if (c.indexOf(name) == 0) {
				return c.substring(name.length, c.length);
			}
		}
		return "";
	}

	function setCookie(cname, cvalue, exdays) {
		var d = new Date();
		d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
		var expires = "expires=" + d.toUTCString();
		document.cookie = cname + "=" + cvalue + "; " + expires;
	}
});
