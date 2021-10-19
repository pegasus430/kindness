jQuery(function($) { 

  // settings
  var $slider = $('.index-slider'); // class or id of carousel slider
  var $slide = 'li'; // could also use 'img' if you're not using a ul
  var $transition_time = 1000; // 1 second
  var $time_between_slides = 4000; // 4 seconds

  function slides(){
    return $slider.find($slide);
  }

  slides().fadeOut();

  // set active classes
  slides().first().addClass('active');
  slides().first().fadeIn($transition_time);

  // auto scroll 
  $interval = setInterval(
    function(){
      var $i = $slider.find($slide + '.active').index();

      slides().eq($i).removeClass('active');
      slides().eq($i).fadeOut($transition_time);

      if (slides().length == $i + 1) $i = -1; // loop to start

      slides().eq($i + 1).fadeIn($transition_time);
      slides().eq($i + 1).addClass('active');
    }
    , $transition_time +  $time_between_slides 
  );

});

$(document).ready(function(){

  // Init ScrollMagic
  var controller = new ScrollMagic.Controller();

  //build a scene
  
  var ourScene8 = new ScrollMagic.Scene({
      triggerElement: '#section3',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle('#navbar', 'black') //add class to section1-pic
  .addTo(controller);

  var ourScene9 = new ScrollMagic.Scene({
      triggerElement: '#section3',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle('#nav-logo-b', 'dis') //add class to section1-pic
  .addTo(controller);

  var ourScene10 = new ScrollMagic.Scene({
      triggerElement: '#section3',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle('#nav-logo-w', 'show') //add class to section1-pic
  .addTo(controller);

  var ournavScene = new ScrollMagic.Scene({
      triggerElement: '#section3',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle('#index-1200', 'white') //add class to section1-pic
  .addTo(controller);

  var ourScene11 = new ScrollMagic.Scene({
      triggerElement: '#section3',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle('#section4', 'black') //add class to section1-pic
  .addTo(controller);

  var ourScene7 = new ScrollMagic.Scene({
      triggerElement: '#section3',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle('#section3', 'black') //add class to section1-pic
  .addTo(controller);

  var ourScene13 = new ScrollMagic.Scene({
      triggerElement: '#section3',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle('#content3-more-b', 'dis') //add class to section1-pic
  .addTo(controller);

  var ourScene14 = new ScrollMagic.Scene({
      triggerElement: '#section3',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle('#content3-more-w', 'show') //add class to section1-pic
  .addTo(controller);

  var ourScene5 = new ScrollMagic.Scene({
      triggerElement: '#section3-pic',
      triggerHook: 0.6,
      reverse: true
  })
  .setClassToggle('#section3-pic', 'fade-in') //add class to section1-pic
  .addTo(controller);

  var ourScene6 = new ScrollMagic.Scene({
      triggerElement: '#section3-txt',
      triggerHook: 0.5,
      reverse: true
  })
  .setClassToggle('#section3-txt', 'fade-in') //add class to section1-pic
  .addTo(controller);


  $('.news-info').each(function(){

    //build a scene
  var ourScene19 = new ScrollMagic.Scene({
      triggerElement: '#section3',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle(this, 'white') //add class to section1-pic
  .addTo(controller);
  });


  });
