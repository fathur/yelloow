$(function() {
 
  /**
   * Scroll to anchor
   * http://bradsknutson.com/blog/smooth-scrolling-to-anchor-with-jquery/
   */
  // scroll handler
  var scrollToAnchor = function( id ) {
 
    // grab the element to scroll to based on the name
    var elem = $("a[name='"+ id +"']");
 
    // if that didn't work, look for an element with our ID
    if ( typeof( elem.offset() ) === "undefined" ) {
      elem = $("#"+id);
    }
 
    // if the destination element exists
    if ( typeof( elem.offset() ) !== "undefined" ) {
 
      // do the scroll
      $('html, body').animate({
              scrollTop: elem.offset().top
      }, 1000 );
 
    }
  };
 
  // bind to click event
  $("a").click(function( event ) {
 
    var link = $(this).attr("href");
 
    if ( link.match("#") && link.match("http") ) {
 
      // do normal action
 
    } else if ( link.match("#") ) {

      event.preventDefault();
      var href = link.replace('#', '')
      scrollToAnchor( href );
    }
 
  });
 
});