class Api::MessagesController < ApplicationController

	before_action :set_chat
	skip_before_action :authenticate, only: [:create, :index]

	private

	def build_resource
		@message = Message.new resource_params
		@message.chat_id = @chat.id
	end

	def resource
		@message
	end

	def resource_params
		params.require(:message).permit(:body)
	end

	def set_chat
		@chat = Chat.find params[:chat_id]
	end

end