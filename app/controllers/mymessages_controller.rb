class MymessagesController < ApplicationController
  before_action :require_user

  def create
    mymessage = current_user.mymessages.build(message_params)
    if mymessage.save
      ActionCable.server.broadcast('chatroom_channel', { mod_message: message_render(mymessage) })
    end
  end

  private

  def message_params
    params.require(:mymessage).permit(:body)
  end

  def message_render(mymessage)
    render(partial: 'mymessage', locals: {mymessage: mymessage})
  end

end