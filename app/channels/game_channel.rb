# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def ready
    @@cnt ||= 0
    @@cnt += 1
    ActionCable.server.broadcast 'some_channel', ready_user_number: @@cnt
  end
end
