$(function(){
	window.onload = (e) => {
		window.addEventListener('message', (event) => {
			var item = event.data;
			if (item !== undefined && item.type === "message") {
				if (item.display !== true) {
                    $("#message").fadeOut(500);
				} 
				else 
				{
                    $("#message").fadeIn(500);
				}
			}
		});
	};
});
