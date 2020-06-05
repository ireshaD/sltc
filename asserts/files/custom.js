$(document).ready(function () {
    "use strict";
	var target = window.location.hash;
	// alert(target);
	if (target !== '#staff') {
		if (target !== '') {
			$('html, body').animate({
				scrollTop: $(target).offset().top -150
			}, 900,'swing');
		}
	}

	$('a[href*="#"]:not([data-toggle=tab])').click(function () {
		var target = $(this).attr('href').replace(/^.*?(#|$)/,'');
		$('html, body').animate({
			scrollTop: $('#'+target).offset().top -150
		}, 900,'swing');
	});

	// $('.select2').select2();
	// return false;
	// console.log($(window.location.hash).offset().top());
    //Active Link
    // let location = window.location.href;
    // $('.edu-nav .nav li').each(function () {
    //     let href = $(this).find('a').attr('href');
    //     if (href === location) {
    //         $(this).addClass('active');
    //     }
    // });
    // switchNavMenuItem($('.edu-nav .nav li'));
    // if (location.pathname === '/') {
    //     $('.edu-nav .nav li a[href="' + base_url + '"]').parent().addClass('active');
    // } else {
    //     $('.edu-nav .nav li a[href*="/' + location.pathname.split('/')[1] + '"]').parent().addClass('active');
    // }

    // /* Navigation Reverse*/
    // $(".main-menu .navbar-nav li").on('mouseenter mouseleave', function (e) {
    //     if ($('ul', this).length) {
    //         var elm = $('ul:first', this);
    //         var off = elm.offset();
    //         var l = off.left;
    //         var w = elm.width();
    //         var docH = $("body").height();
    //         var docW = $("body").width();
    //
    //         var isEntirelyVisible = (l + w <= docW);
    //         console.log(isEntirelyVisible);
    //
    //         if (!isEntirelyVisible) {
    //             $(this).addClass('reverse');
    //         } else {
    //             $(this).removeClass('reverse');
    //         }
    //     }
    // });


    //Back to top
    let scrollTrigger = 100, // px
        backToTop = function () {
            let scrollTop = $(window).scrollTop();
            if (scrollTop > scrollTrigger) {
                $('#back-to-top').parents('div').addClass('show-btn');
            } else {
                $('#back-to-top').parents('div').removeClass('show-btn');
            }
        };

    backToTop();

    $(window).on('scroll', function () {
        backToTop();
    });

    $('#back-to-top').on('click', function (e) {
        e.preventDefault();
        $('html,body').animate({
            scrollTop: 0
        }, 700);
    });

    //Mean Menu
    jQuery('header .main-menu').meanmenu({
        meanScreenWidth: "767"
    });

    //Sticky Nav
    $(".edu-navbar").sticky({topSpacing: 0});

    //Scroll Spy
    $('body').scrollspy({target: '.edu-navbar'});
    $(window).on('load', function (e) {
        $('#status').fadeOut();
        $('#preloader').delay(350).fadeOut('slow');
        $('body').delay(350).css({'overflow': 'visible'});
    });
    $('body').scrollspy({target: ".edu-navbar'"});

    // Contact Form

    // $('#contactform').submit(function () {
    //     var action = $(this).attr('action');
    //     $("#message").slideUp(750, function () {
    //         $('#message').hide();
    //         $('#submit')
    //             .after('')
    //             .attr('disabled', 'disabled');
    //         $.post(action, {
    //                 name: $('#name').val(),
    //                 email: $('#email').val(),
    //                 subject: $('#subject').val(),
    //                 comments: $('#comments').val()
    //             },
    //             function (data) {
    //                 document.getElementById('message').innerHTML = data;
    //                 $('#message').slideDown('slow');
    //                 $('#contactform img.loader').fadeOut('slow', function () {
    //                     $(this).remove()
    //                 });
    //                 $('#submit').removeAttr('disabled');
    //                 if (data.match('success') != null) $('#contactform').slideUp('slow');
    //             }
    //         );
    //     });
    //     return false;
    // });


    //Popup
    // $('.gallery-single-item').magnificPopup({
    //     delegate: 'li .port-view',
    //     type: 'image',
    //     gallery: {
    //         enabled: true
    //     },
    //     removalDelay: 300,
    //     mainClass: 'mfp-fade'
    // });


    // ************ Search On Click
    // $(".search_btn").on("click", function (event) {
    //     event.preventDefault();
    //     $("#search").addClass("open");
    //     $("#search > form > input[type='search']").focus();
    // });

    // $("#search, #search button.close").on("click keyup", function (event) {
    //     if (event.target == this || event.target.className == "close" || event.keyCode == 27) {
    //         $(this).removeClass("open");
    //     }
    // });

    // Parent Say's index-02
    // $("#parent-say-02").owlCarousel({
    //     items: 3,
    //     lazyLoad: true,
    //     navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
    //     slideSpeed: 500,
    //     paginationSpeed: 1000,
    //     rewindSpeed: 1000,
    //     navigation: true,
    //     pagination: false,
    //     responsive: {
    //         0: {
    //             items: 1,
    //             nav: false
    //         },
    //         480: {
    //             items: 1,
    //             nav: false
    //         },
    //         768: {
    //             items: 2,
    //             nav: true
    //         },
    //         992: {
    //             items: 2,
    //             nav: true,
    //             loop: false
    //         }
    //     }
    // });

    // Courses-carousel index-03
    // $("#courses-carousel-03").owlCarousel({
    //     items: 4,
    //     lazyLoad: true,
    //     navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
    //     slideSpeed: 500,
    //     paginationSpeed: 1000,
    //     rewindSpeed: 1000,
    //     navigation: true,
    //     pagination: false,
    //     responsive: {
    //         0: {
    //             items: 1,
    //             nav: false
    //         },
    //         480: {
    //             items: 1,
    //             nav: false
    //         },
    //         768: {
    //             items: 2,
    //             nav: true
    //         },
    //         992: {
    //             items: 3,
    //             nav: true,
    //             loop: false
    //         }
    //     }
    // });

    // Courses-carousel index-04
    // $("#courses-carousel-04").owlCarousel({
    //     items: 1,
    //     lazyLoad: true,
    //     navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
    //     slideSpeed: 500,
    //     paginationSpeed: 1000,
    //     rewindSpeed: 1000,
    //     navigation: true,
    //     pagination: false,
    //     responsive: {
    //         0: {
    //             items: 1,
    //             nav: false
    //         },
    //         480: {
    //             items: 1,
    //             nav: false
    //         },
    //         768: {
    //             items: 2,
    //             nav: true
    //         },
    //         992: {
    //             items: 3,
    //             nav: true,
    //             loop: false
    //         }
    //     }
    // });

    // Blog-carousel index-03
    // $("#bolg-carousel-03").owlCarousel({
    //     items: 3,
    //     lazyLoad: true,
    //     navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
    //     slideSpeed: 500,
    //     paginationSpeed: 1000,
    //     rewindSpeed: 1000,
    //     navigation: true,
    //     pagination: false,
    //     responsive: {
    //         0: {
    //             items: 1,
    //             nav: false
    //         },
    //         480: {
    //             items: 1,
    //             nav: false
    //         },
    //         768: {
    //             items: 2,
    //             nav: true
    //         },
    //         992: {
    //             items: 3,
    //             nav: true,
    //             loop: false
    //         }
    //     }
    // });

    // Success carousel index-04
    // $("#success-carousel-04").owlCarousel({
    //     items: 1,
    //     lazyLoad: true,
    //     slideSpeed: 500,
    //     paginationSpeed: 1000,
    //     rewindSpeed: 1000,
    //     navigation: false,
    //     pagination: true,
    //     responsive: false
    // });

    // Bolg carousel index-04
    // $("#bolg-carousel-01").owlCarousel({
    //     items: 1,
    //     lazyLoad: true,
    //     navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
    //     slideSpeed: 500,
    //     paginationSpeed: 1000,
    //     rewindSpeed: 1000,
    //     navigation: true,
    //     pagination: false,
    //     responsive: false
    // });

    // $("#single-carousel-03").owlCarousel({
    //     items: 4,
    //     lazyLoad: true,
    //     navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
    //     slideSpeed: 500,
    //     paginationSpeed: 1000,
    //     rewindSpeed: 1000,
    //     navigation: true,
    //     pagination: false,
    //     responsive: {
    //         0: {
    //             items: 1,
    //             nav: false
    //         },
    //         480: {
    //             items: 1,
    //             nav: false
    //         },
    //         768: {
    //             items: 2,
    //             nav: true
    //         },
    //         992: {
    //             items: 3,
    //             nav: true,
    //             loop: false
    //         }
    //     }
    // });

});
