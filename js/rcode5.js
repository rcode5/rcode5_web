var setBrowserClass = function() {
  var bod = document.getElementsByTagName('body')[0]; 
  if (bod) {
    bod.className = bod.className + " " + BrowserDetect.browser.toLowerCase();
  }
  setBrowserClass = function(){};
};


if( window.addEventListener ) {
  window.addEventListener('load',setBrowserClass,false);
} else if( document.addEventListener ) {
  document.addEventListener('load',setBrowserClass,false);
} else if (window.attachEvent ) {
  window.attachEvent('onload', setBrowserClass)
} else if (document.attachEvent) {
  document.attacheEvent('onload', setBrowserClass)
}


$(function() {
  $('.section_link').bind('click', function() {
    var sxn = $('#' + $(this).data('section'));
    $('section').each(function() {
      if ($(this).attr('id') != sxn.attr('id')) {
        $(this).fadeOut(function() {
          if (!sxn.is(':visible')) {
            setTimeout(function() {
              sxn.fadeIn(); 
            },500);
          }
        });
      }
    });
  });
});