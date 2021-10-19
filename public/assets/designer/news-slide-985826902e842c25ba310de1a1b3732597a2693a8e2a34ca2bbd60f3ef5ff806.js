$(document).on('ready', function() {
 var $status = $('.news-counter');
 var $slickElement = $('.news-banner');

 $slickElement.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
  //currentSlide is undefined on init -- set it to 0 in this case (currentSlide is 0 based)
  var i = (currentSlide ? currentSlide : 0) + 1;
  $status.text(i + '/' + slick.slideCount);
 });

 $slickElement.slick({
        dots: true,
        prevArrow: '<div class="slide-arrow prev-arrow white"><img src="images/slide-prev-w.svg" alt=""></div>',
        nextArrow: '<div class="slide-arrow next-arrow white"><img src="images/slide-next-w.svg" alt=""></div>',
        infinite: true,
        speed: 800,
        slidesToShow: 1,
        slidesToScroll: 1,
        lazyLoad: 'ondemand',
        autoplay: false,
        autoplaySpeed: 4500, 
        responsive: [
        {
          breakpoint: 1024,
          settings: {
            prevArrow: '<div class="slide-arrow prev-arrow white"><img src="images/slide-prev-w.svg" alt=""></div>',
            nextArrow: '<div class="slide-arrow next-arrow white"><img src="images/slide-next-w.svg" alt=""></div>',
            slidesToShow: 1,
            slidesToScroll: 1,
            infinite: true,
            dots: false
          }
        },
        {
          breakpoint: 600,
          settings: {
            prevArrow: '<div class="slide-arrow prev-arrow white"><img src="images/slide-prev-w.svg" alt=""></div>',
            nextArrow: '<div class="slide-arrow next-arrow white"><img src="images/slide-next-w.svg" alt=""></div>',
            lazyLoad: 'ondemand',
            slidesToShow: 1,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 480,
          settings: {
            prevArrow: '<div class="slide-arrow prev-arrow white"><img src="images/slide-prev-w.svg" alt=""></div>',
            nextArrow: '<div class="slide-arrow next-arrow white"><img src="images/slide-next-w.svg" alt=""></div>',
            lazyLoad: 'ondemand',
            slidesToShow: 1,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 330,
          settings: {
            prevArrow: '<div class="slide-arrow prev-arrow white"><img src="images/slide-prev-w.svg" alt=""></div>',
            nextArrow: '<div class="slide-arrow next-arrow white"><img src="images/slide-next-w.svg" alt=""></div>',
            lazyLoad: 'ondemand',
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      ]
   });


});

