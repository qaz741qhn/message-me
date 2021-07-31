class MymessagesController < ApplicationController
  before_action :require_user

  def create
    mymessage = current_user.mymessages.build(message_params)
    if mymessage.save
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:mymessage).permit(:body)
  end

end