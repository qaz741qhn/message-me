class ChatroomController < ApplicationController

  before_action :require_user

  def index
    @mymessage = Mymessage.new
    @mymessages = Mymessage.custom_display
  end

end