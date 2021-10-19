$(document).ready(function(){

  // Init ScrollMagic
  var controller = new ScrollMagic.Controller();


  var ourScene27 = new ScrollMagic.Scene({
      triggerElement: '#blackbg',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle('#navbar', 'black') //add class to section1-pic
  .addIndicators({
    name: 'changebg nav',
    colorTrigger: '#c90',
    colorStart: '#F60',
    colorEnd: 'Pink',
    indent: 400
  })//this is requires a plugin
  .addTo(controller);

  var ourScene28 = new ScrollMagic.Scene({
      triggerElement: '#blackbg',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle('#nav-logo-b', 'dis') //add class to section1-pic
  .addIndicators({
    name: 'changebg nav',
    colorTrigger: '#c90',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);

  var ourScene29 = new ScrollMagic.Scene({
      triggerElement: '#blackbg',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle('#nav-logo-w', 'show') //add class to section1-pic
  .addIndicators({
    name: 'changebg nav',
    colorTrigger: '#c90',
    colorStart: '#F60',
    colorEnd: 'Pink'
  })//this is requires a plugin
  .addTo(controller);

  var ournavScene = new ScrollMagic.Scene({
      triggerElement: '#blackbg',
      triggerHook: 0,
      reverse: true
  })
  .setClassToggle('#index-1200', 'white') //add class to section1-pic
  .addIndicators({
    name: 'changenavbg',
    colorTrigger: 'red',
    colorStart: '#F60',
    indent:300
  })//this is requires a plugin
  .addTo(controller);


});
