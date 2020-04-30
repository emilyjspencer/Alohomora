class MessagesController < ApplicationController
    before_action :require_user


  def create
    message = current_user.messages.build(message_requirements)
    if message.save
        redirect_to root_path
    end 
  end 

  private

  def message_requirements
    params.require(:message).permit(:description)
  end 


end 