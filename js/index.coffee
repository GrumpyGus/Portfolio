$(document).ready ->
  # Animated page scrolling
  $('.scroll').click ->
    $('html, body').animate {
        scrollTop: $($(this).attr('href')).offset().top
    }, 400

  # Framework icon tooltips
  $('.framework-images img').hover (->
    $(this).after '<p class="hover">' + $(this).attr('alt') + '</p>'
  ), ->
    $('.hover').remove()

  # Prevents images from overlapping tooltips
  $('.framework-images').each ->
    children = $(this).children('.image')
    size = children.length
    children.each (index) ->
      $(this).css 'z-index', size - index