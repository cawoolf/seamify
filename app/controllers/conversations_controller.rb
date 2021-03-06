class ConversationsController < ApplicationController
  def index
    if current_user.seamstress
      @conversations = Conversation.where(seamstress_id: current_user.id).reverse
    else
      @conversations = Conversation.where(client_id: current_user.id).reverse
    end
  end

  def show
    @conversation = Conversation.find(params[:id])
    @seamstress = @conversation.seamstress
    @message = Message.new

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'conversations/conversation', locals: { conversation: @conversation }, formats: [:html] }
    end
  end

  def contact
    @seamstress = User.find(params[:seamstress_id])
    @client = current_user
    @conversation = Conversation.where(["seamstress_id = ? and client_id = ?", @seamstress.id, @client.id]).first
    if @conversation.present?
      redirect_to conversations_path(param: @conversation.id)
    else
      create
    end
  end

  def create
    @conversation = Conversation.new
    @conversation.client = @client
    @conversation.seamstress = @seamstress
    @conversation.name = "#{@client.first_name} / #{@seamstress.first_name}"
    if @conversation.save
      redirect_to conversations_path
    else
      render "users/show"
    end
  end
end
