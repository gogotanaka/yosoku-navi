$(document).ready(function(){
/*rank-tab*/
	$(".content:not(" + "#" + $("#tab_menu .now").attr("id") + "on)" ).css("display" , "none");
	$("#tab_menu li").click(function(){
		$("#tab_menu li").removeClass("now");
		$(this).addClass("now");
		$(".content").hide();
		$("#" + $(this).attr("id") + "on").show();
	});

/*2ch-tab*/
	$(".content-2ch:not(" + "#" + $("#bbs-2ch-menu .now").attr("id") + "on)" ).css("display" , "none");
	$("#bbs-2ch-menu li").click(function(){
		$("#bbs-2ch-menu li").removeClass("now");
		$(this).addClass("now");
		$(".content-2ch").hide();
		$("#" + $(this).attr("id") + "on").show();
	});

/*stock-tab*/
	$(".content-stock:not(" + "#" + $("#stock-menu .now").attr("id") + "on)" ).css("display" , "none");
	$("#stock-menu li").click(function(){
		$("#stock-menu li").removeClass("now");
		$(this).addClass("now");
		$(".content-stock").hide();
		$("#" + $(this).attr("id") + "on").show();
	});

/*brand-tab*/
	$(".content-brand:not(" + "#" + $("#brand-menu .now").attr("id") + "on)" ).css("display" , "none");
	$("#brand-menu li").click(function(){
		$("#brand-menu li").removeClass("now");
		$(this).addClass("now");
		$(".content-brand").hide();
		$("#" + $(this).attr("id") + "on").show();
	});

});

