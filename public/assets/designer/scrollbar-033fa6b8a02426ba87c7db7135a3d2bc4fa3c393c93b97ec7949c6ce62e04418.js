

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 115 || document.documentElement.scrollTop > 115) {
    document.getElementById("navbar").setAttribute("style", "top: 0; background-color: rgba(255,255,255,1);");
  } else {
    document.getElementById("navbar").setAttribute("style", "top: -70; background-color: rgba(255,255,255,.4);");
  }
}
;
