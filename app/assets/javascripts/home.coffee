# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  # clickeable all media question list (but doesn't work)
  $(".media").on "click", ->
    document.location = $(this).data("target")
    return false

  # focus on submit question and answer modal windows
  $(".modal").on "shown.bs.modal", ->
    $(this).find("textarea").focus()

$(document).ready(ready)
$(document).on "page:load", ready
