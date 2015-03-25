$(function() {
  console.log( 'ready!' );

  if ( $( '#nonexistent' ).length ) {
  console.log("Found the nonexistent id!!")
  }

  // get all the listitems, select the 2nd one and remove it
  var listItems = $( 'li' );
  var secondListItem = listItems.eq( 1 );
  secondListItem.remove();

  // changes li items to 'NEW HTML'
  //$( 'li' ).html( 'New HTML' );

  //modifies existing HTML in place with additional content '!!!'
  $( 'li' ).html(function( index, oldHtml ) {
    return oldHtml + '!!!';
  });


  $( 'li' ).each(function( index, elem ) {
    // this: the current, raw DOM element
    // index: the current element's index in the selection
    // elem: the current, raw DOM element (same as this)
    $( elem ).prepend( '<b>' + index + ': </b>' );
  });

  $( 'li' )
  .click(function() {
    $( this ).toggleClass( 'clicked' );
  })
  .find( 'span' )
    .attr( 'title', 'Hover over me' );


  $( 'li' ).addClass( 'hidden' );
  $( 'li' ).eq( 1 ).removeClass( 'hidden' );

  $( 'li' ).mouseover(function( event ) {
    console.log( 'mouseover', $( this ).text() );
  });

  $( 'li' ).click(function( event ) {
    console.log( 'click', $( this ).text() );
  });

});
