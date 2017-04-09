class MessageDecorator < Draper::Decorator

	delegate_all

	def as_json *args
		{
			id: id,
			body: body,
			chat: chat_id,
			user: user_id
		}
	end
end
