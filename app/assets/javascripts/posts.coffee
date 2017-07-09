# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
(->
  $(document).ready ->
    $('#post').submit ->
      $data = undefined
      $post = undefined
      content = undefined
      name = undefined
      title = undefined
      $data = $(this).serializeArray()
      name = $data[2].value
      title = $data[3].value
      content = $data[4].value
      console.log name, title, content
      $post = '<div class="card"><div class="card-block"><h4 class="card-title">' + title + ' By:' + name + '</h4><p class="card-text">' + content + '</p></div><div class="card-footer"><p class="card-text"><small class="text-muted">Last updated: Now</small></p></div></div>'
      $('#post').after $post
      return
    return
  return
).call this
