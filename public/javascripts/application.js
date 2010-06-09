var image = false;
$(document).ready(function(){
	$("#social > a > img").bind('mouseover', function() {
	  $($("#social > ul > li."+$(this).css()[0].className).get(0)).addClass('active')
	});
	$("#social > a > img").bind('mouseout', function() {
	  $($("#social > ul > li."+$(this).css()[0].className).get(0)).removeClass('active')
	});
	
});
