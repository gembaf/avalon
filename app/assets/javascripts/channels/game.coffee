App.game = App.cable.subscriptions.create "GameChannel",
  connected: ->
    #

  disconnected: ->
    #

  received: (data) ->
    $('p#ready_user_number').text data['ready_user_number'] + '人'

  ready: ->
    @perform 'ready'

$(document).ready ->
  $('button#ready').click ->
    App.game.ready()

