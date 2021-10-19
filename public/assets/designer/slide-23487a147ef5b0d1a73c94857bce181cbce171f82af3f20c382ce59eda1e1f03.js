$(document).on('ready', function() {
 var $status = $('.counter');
 var $slickElement = $('.variable');

 $slickElement.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
  //currentSlide is undefined on init -- set it to 0 in this case (currentSlide is 0 based)
  var i = (currentSlide ? currentSlide : 0) + 1;
  $status.text(i + '/' + slick.slideCount);
 });

 $slickElement.slick({
        dots: false,
        prevArrow: '<div class="slide-arrow prev-arrow"><img src="/assets/slide-prev-203ba7e6b42bf3e3231f045b08bada91646fc355a67e45fbb5734506130d57b1.svg" alt=""></div>',
        nextArrow: '<div class="slide-arrow next-arrow"><img src="/assets/slide-next-c53907a24a4a1a8897d582a9e34711ba77f12f3b0caa3a05f5f01d935b54ecb8.svg" alt=""></div>',
        infinite: true,
        variableWidth: false,
        speed: 600,
        centerMode: true,
        centerPadding: '15%',
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 4200, 
        responsive: [
        {
          breakpoint: 1024,
          settings: {
            centerPadding: '110px',
            slidesToShow: 1,
            slidesToScroll: 1,
            infinite: true,
            dots: false
          }
        },
        {
          breakpoint: 800,
          settings: {
            centerPadding: '60px',
            slidesToShow: 1,
            slidesToScroll: 1,
            infinite: true,
            dots: false
          }
        },
        {
          breakpoint: 600,
          settings: {
            prevArrow: '<div class="slide-arrow prev-arrow white"><img src="/assets/slide-prev-w-fe8606529ee740a3ddd36a87486935811301f31c218fc6bc2b5ca9c90a9bb2e8.svg" alt=""></div>',
            nextArrow: '<div class="slide-arrow next-arrow white"><img src="/assets/slide-next-w-50d3383d2428cdf953b2198cd3617f03244375a52bb07901e041939bf3c8cc80.svg" alt=""></div>',
            centerPadding: '0px',
            variableWidth: false,
            slidesToShow: 1,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 480,
          settings: {
            prevArrow: '<div class="slide-arrow prev-arrow white"><img src="/assets/slide-prev-w-fe8606529ee740a3ddd36a87486935811301f31c218fc6bc2b5ca9c90a9bb2e8.svg" alt=""></div>',
            nextArrow: '<div class="slide-arrow next-arrow white"><img src="/assets/slide-next-w-50d3383d2428cdf953b2198cd3617f03244375a52bb07901e041939bf3c8cc80.svg" alt=""></div>',
            centerPadding: '0px',
            variableWidth: false,
            slidesToShow: 1,
            slidesToScroll: 1
          }
        },
        {
          breakpoint: 330,
          settings: {
            prevArrow: '<div class="slide-arrow prev-arrow white"><img src="/assets/slide-prev-w-fe8606529ee740a3ddd36a87486935811301f31c218fc6bc2b5ca9c90a9bb2e8.svg" alt=""></div>',
            nextArrow: '<div class="slide-arrow next-arrow white"><img src="/assets/slide-next-w-50d3383d2428cdf953b2198cd3617f03244375a52bb07901e041939bf3c8cc80.svg" alt=""></div>',
            centerPadding: '0px',
            variableWidth: false,
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      ]
 });

});

$(document).on('ready', function() {
        $(".traffic-slide").slick({
            dots: false,
            prevArrow: '<div class="slide-arrow prev-arrow"><img src="/assets/slide-prev-203ba7e6b42bf3e3231f045b08bada91646fc355a67e45fbb5734506130d57b1.svg" alt=""></div>',
            nextArrow: '<div class="slide-arrow next-arrow"><img src="/assets/slide-next-c53907a24a4a1a8897d582a9e34711ba77f12f3b0caa3a05f5f01d935b54ecb8.svg" alt=""></div>',
            infinite: true,
            variableWidth: false,
            speed: 800,
            slidesToShow: 3,
            slidesToScroll: 3,
            responsive: [{
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                },
                {
                    breakpoint: 780,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        centerMode: false
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        prevArrow: '<div class="slide-arrow prev-arrow white"><img src="/assets/slide-prev-w-fe8606529ee740a3ddd36a87486935811301f31c218fc6bc2b5ca9c90a9bb2e8.svg" alt=""></div>',
                        nextArrow: '<div class="slide-arrow next-arrow white"><img src="/assets/slide-next-w-50d3383d2428cdf953b2198cd3617f03244375a52bb07901e041939bf3c8cc80.svg" alt=""></div>',
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
            ]
        });
    });
