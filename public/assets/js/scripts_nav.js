$(function(){

		$('.toggle-nav').click(function(e){

			e.stopPropagation();
			toogleNav(); 

		});

		$('#wraper-main').click(function(e){

			//var target = $(e.target);
			//if(!target.closest("#nav").length && $("#wraper").hasClass("show-nav")) toogleNav();

		});

		function toogleNav(){

			if($("#wraper").hasClass("show-nav")){
				
				$("#wraper").removeClass("show-nav");
				$(".menu").css("display", "inline-block");
				$(".nav-massages").css("margin-right", "0");
				$(".nav-form-search").css("margin-left", "-12.5%");
				$(".content-bar").css("padding", "1% 6.5%");
				$("#box-grafico-pie").removeClass("col-md-4");
				$("#box-grafico-pie").addClass("col-md-6");
				$(".circle-description").css("display", "inline-block");

				$("#panel-form").removeClass("col-md-9");
				$("#panel-form").addClass("col-md-12");

				aler("ola");

			}else{

				$("#wraper").addClass("show-nav");
				$(".menu").css("display", "none");
				$(".nav-massages").css("margin-right", "15%");
				$(".nav-form-search").css("margin-left", "-16%");
				$(".content-bar").css("padding-left", "6%");

				$("#box-grafico-pie").removeClass("col-md-6 ");
				$("#box-grafico-pie").addClass("col-md-4");
				$(".circle-description").css("display", "none");

				$("#panel-form").removeClass("col-md-12");
				$("#panel-form").addClass("col-md-9");

				aler("ola");



			}
		}

	});

	$(document).ready(function(){
		$('[data-toggle="tooltip"]').tooltip();
		$('[data-toggle="popover"]').popover();
	});

	window.onload = function(){
		toogleNav();
	}

