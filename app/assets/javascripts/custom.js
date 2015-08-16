$(document).ready(function(){
    $('[data-js-screen-slider]').slick({
        arrows: true,
        dots: false,
        autoplay: true,
        autoplaySpeed: 5000
    });

    // scroll.js lib candidate
    $( "[data-js-scroll]" ).each(function() {
        var scroller = $(this);
        var treshold = $(this).attr("data-js-scroll")

        $(window).scroll(function() {
            if ($(window).scrollTop() > treshold) {
                scroller.addClass("scrolling");
            } else {
                scroller.removeClass("scrolling");
            }
        });
    })

});