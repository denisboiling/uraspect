$(document).ready ->
  $(".btop-third-link").height $("#btop-container").height() - 5

  $(".menu_item").bind 'mouseenter', (event) ->
    $links = $(this).find '.nested_links'
    $links.removeClass 'hidden'

  $(".menu_item").bind 'mouseleave', (event) ->
    $links = $(this).find('.nested_links')
    $links.addClass('hidden')

  $("#send-review-form-wrapper").hide()
  $("#show-send-review_form").bind "click", (event) ->
    event.preventDefault()
    if !$("#send-review-form-wrapper").is(":visible")
      $("#send-review-form-wrapper").slideDown 300
    else
      $("#send-review-form-wrapper").slideUp 300



