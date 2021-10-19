$(document).ready(function(){

  // Init ScrollMagic
  var controller = new ScrollMagic.Controller();

  //build a scene
  var ourScene = new ScrollMagic.Scene({
      triggerElement: '#section1-pic',
      triggerHook: 0.7,
      reverse: true
  })
  .setClassToggle('#section1-pic', 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'pic fade',
    colorTrigger: 'black',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);

  //build a scene
  var ourScene2 = new ScrollMagic.Scene({
      triggerElement: '#k-bg',
      triggerHook: 0.6,
      reverse: true
  })
  .setClassToggle('#k-bg', 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'kbg fade2',
    colorTrigger: '#F98',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);

  //build a scene
  var ourScene3 = new ScrollMagic.Scene({
      triggerElement: '#section2-pic',
      triggerHook: 1,
      reverse: true
  })
  .setClassToggle('#section2-pic', 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'pic2 fade3',
    colorTrigger: '#c90',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:400
  })//this is requires a plugin
  .addTo(controller);

  var ourScene4 = new ScrollMagic.Scene({
      triggerElement: '#section2-txt',
      triggerHook: 0.7,
      reverse: true
  })
  .setClassToggle('#section2-txt', 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'txt fade4',
    colorTrigger: '#c90',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);
 

//this is news
 $('.news_list').each(function(){

    //build a scene
  var ourScene12 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.9,
      reverse: true
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'newsfade',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);
  });

 //this is mask
 $('.mask').each(function(){

    //build a scene
  var ourScene15 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 1,
      reverse: true
  })
  .setClassToggle(this, 'scale') //add class to section1-pic
  .addIndicators({
    name: 'imgmask',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);
  });

 //this is abouttxt
 $('.about-txt').each(function(){

    //build a scene
  var ourScene16 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.9,
      reverse: true
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'abouttxt',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);
  });

 //this is foodbgtxt
 $('.food-bgtxt').each(function(){

    //build a scene
  var ourScene17 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.7,
      reverse: true
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'foodbgtxt',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);
  });

 //this is hotel list
 $('.hotel_list').each(function(){

    //build a scene
  var ourScene20 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.7,
      reverse: true
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'hotellist',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);
  });

 //this is facility-txt
 $('.facility-txt').each(function(){

    //build a scene
  var ourScene21 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 1,
      reverse: false
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'facility-txt',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);
  });

 //this is icon-ul
 $('.icon-ul').each(function(){

    //build a scene
  var ourScene22 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.8,
      reverse: false
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'icon-ul',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);
  });

 $('.facility-gallery').each(function(){

    //build a scene
  var ourScene23 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.6,
      reverse: true
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'facility-gallery',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);
  });

 $('.mask2').each(function(){

    //build a scene
  var ourScene24 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.9,
      reverse: true
  })
  .setClassToggle(this, 'scale2') //add class to section1-pic
  .addIndicators({
    name: 'imgmask2',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:300
  })//this is requires a plugin
  .addTo(controller);
  });

 $('.fadetran-img').each(function(){

    //build a scene
  var ourScene26 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.8,
      reverse: true
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'reservimg',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:400
  })//this is requires a plugin
  .addTo(controller);
  });

 $('.reserv-txt').each(function(){

    //build a scene
  var ourScene25 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.4,
      reverse: true
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'reservtxt',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:300
  })//this is requires a plugin
  .addTo(controller);
  });

 $('.reserv-bottom1').each(function(){

    //build a scene
  var ourScene26 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.6,
      reverse: true
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'reserv-bottom1',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:300
  })//this is requires a plugin
  .addTo(controller);
  });

 $('.reserv-bottom-txt').each(function(){

    //build a scene
  var ourScene26 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.5,
      reverse: true
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'reserv-bottom-txt',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:400
  })//this is requires a plugin
  .addTo(controller);
  });

 $('.reserv-detail-txt').each(function(){

    //build a scene
  var ourScene30 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.6,
      reverse: true
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'reserv-detail-txt',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:400
  })//this is requires a plugin
  .addTo(controller);
  });

 $('.news-banner').each(function(){

    //build a scene
  var ourScene31 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.9,
      reverse: false
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'news-banner',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:400
  })//this is requires a plugin
  .addTo(controller);
  });

  $('.news-txt-left').each(function(){

    //build a scene
  var ourScene32 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.8,
      reverse: false
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'news-txt-left',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:400
  })//this is requires a plugin
  .addTo(controller);
  });

  $('.news-txt-right').each(function(){

    //build a scene
  var ourScene33 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.7,
      reverse: false
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'news-txt-left',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:400
  })//this is requires a plugin
  .addTo(controller);
  });

  $('.map-info').each(function(){

    //build a scene
  var ourScene34 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.7,
      reverse: false
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'map-info',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:400
  })//this is requires a plugin
  .addTo(controller);
  });

  $('.traffic-how').each(function(){

    //build a scene
  var ourScene35 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.7,
      reverse: false
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'traffic-how',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:400
  })//this is requires a plugin
  .addTo(controller);
  });

  $('.traffic-where').each(function(){

    //build a scene
  var ourScene35 = new ScrollMagic.Scene({
      triggerElement: this,
      triggerHook: 0.7,
      reverse: true
  })
  .setClassToggle(this, 'fade-in') //add class to section1-pic
  .addIndicators({
    name: 'traffic-where',
    colorTrigger: '#F60',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent:400
  })//this is requires a plugin
  .addTo(controller);
  });


});

