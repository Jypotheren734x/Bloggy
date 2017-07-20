App.notifications = App.cable.subscriptions.create "NotificationsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#bell').css("color", "#ff0000");
    $('#notifications li:last').remove();
    $('#notifications').prepend data.html;
    return;
