class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:id])

    # stream_from chatroom.id
    stream_for chatroom
  end
end
