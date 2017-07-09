# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
(->
  $(document).ready ->
    $('#post').submit ->
      $data = undefined
      $comment = undefined
      content = undefined
      name = undefined
      $data = $(this).serializeArray()
      name = $data[2].value
      title = $data[3].value
      content = $data[4].value
      console.log name, title, content
      $comment = ""
      $('#post').after $comment
      return
    return
  return
).call this
