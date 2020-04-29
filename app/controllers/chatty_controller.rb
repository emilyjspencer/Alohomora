class ChattyController < ApplicationController

  def index
    @messages = Message.all
  end 

end

