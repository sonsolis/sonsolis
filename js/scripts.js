$(document).ready(function() {
    $('.menu-toggle').on('click', function() {
        $('.nav').toggleClass('showing');
    });

    $('.fa-user').on('click', function() {
        $('.nav ul').toggleClass('showing');
    });

});