$(document).ready(function() {
    $('.menu-toggle').on('click', function() {
        $('.nav').toggleClass('showing');
    });

    $('.fa-user').on('click', function() {
        $('.nav ul').toggleClass('showing');
    });

    $('.post-wrapper').slick({
  	slidesToShow: 3,
  	slidesToScroll: 1,
  	autoplay: true,
  	autoplaySpeed: 2000,
	nextArrow: $('.next'),
	prevArrow: $('.prev'),
	responsive: [
	    {
	      breakpoint: 1024,
	      settings: {
		slidesToShow: 3,
		slidesToScroll: 3,
		infinite: true,
		dots: true
	      }
	    },
	    {
	      breakpoint: 600,
	      settings: {
		slidesToShow: 2,
		slidesToScroll: 2
	      }
	    },
	    {
	      breakpoint: 480,
	      settings: {
		slidesToShow: 1,
		slidesToScroll: 1
	      }
	    }
        ]
    });
});
