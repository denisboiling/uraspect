$(document).ready ->
  $(".btop-third-link").height $("#btop-container").height() - 5

  $(".menu_item").bind 'mouseenter', (event) ->
    $links = $(this).find '.nested_links'
    $links.removeClass 'hidden'

  $(".menu_item").bind 'mouseleave', (event) ->
    $links = $(this).find('.nested_links')
    $links.addClass('hidden')

  $("#show-send-review_form").bind "click", (event) ->
    event.preventDefault()
    $("#send-review-form-wrapper").removeClass "hidden"

  if $("#send-review-form-wrapper .form_error").length > 0
    $("#send-review-form-wrapper").removeClass "hidden"
