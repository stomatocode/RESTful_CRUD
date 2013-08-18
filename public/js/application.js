$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('a.delete').on('click', function(event){
    event.preventDefault();
    var link = $(this);
    console.log(link);
      $.ajax({
        url: link.attr('href'),
        type: 'DELETE'
        // success: function () {$(link.attr('href').parent('li').remove();}
      }).done(function(){
        console.log(link);
        link.closest('li').remove();
    });

    // function removeLi(){
    //   $(link.attr('href').parent('li').remove();
    // }

  });

});
