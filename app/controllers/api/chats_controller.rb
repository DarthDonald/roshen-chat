class Api::ChatsController < ApplicationController
	
	skip_before_action :authenticate, only: [:create, :index]

	private

	def build_resource

		@chat = Chat.new resource_params
		@chat.admin_id = current_user.id unless current_user.nil?
	end

	def resource	
		@chat
	end

	def resource_params
		params.require(:chat).permit(:name, :admin_id, :user_ids)
	end

	def collection
		@chats = Chat.all
	end

end
